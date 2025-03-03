use std::collections::BTreeMap;

use frost_secp256k1 as frost;
use rand::thread_rng;

fn main() {
    let mut rng = thread_rng();

    let max_signers = 10;
    let min_signers = 3;

    ////////////////////////////////////////////////////////////////////////////
    // Key generation, Round 1
    ////////////////////////////////////////////////////////////////////////////

    // Keep track of each participant's round 1 secret package.
    // In practice each participant will keep its copy; no one
    // will have all the participant's packages.
    let mut round1_secret_packages = BTreeMap::new();

    // Keep track of all round 1 packages sent to the given participant.
    // This is used to simulate the broadcast; in practice the packages
    // will be sent through some communication channel.
    let mut received_round1_packages = BTreeMap::new();

    // For each participant, perform the first part of the DKG protocol.
    // In practice, each participant will perform this on their own environments.
    for participant_index in 1..=max_signers {
        // +_+_+
        let participant_identifier = participant_index.try_into().expect("should be nonzero");
        let (round1_secret_package, round1_package) = if participant_index != 100 {
            frost::keys::dkg::part1(participant_identifier, max_signers, min_signers, &mut rng)
                .unwrap()
        } else {
            let participant_identifier = 11.try_into().expect("should be nonzero");
            frost::keys::dkg::part1(participant_identifier, max_signers, min_signers, &mut rng)
                .unwrap()
        };

        // Store the participant's secret package for later use.
        // In practice each participant will store it in their own environment.
        round1_secret_packages.insert(participant_identifier, round1_secret_package);

        // "Send" the round 1 package to all other participants. In this
        // test this is simulated using a BTreeMap; in practice this will be
        // sent through some communication channel.
        for receiver_participant_index in 1..=max_signers {
            if receiver_participant_index == participant_index {
                continue;
            }
            let receiver_participant_identifier: frost::Identifier = receiver_participant_index
                .try_into()
                .expect("should be nonzero");
            received_round1_packages
                .entry(receiver_participant_identifier)
                .or_insert_with(BTreeMap::new)
                .insert(participant_identifier, round1_package.clone());
        }
    }

    ////////////////////////////////////////////////////////////////////////////
    // Key generation, Round 2
    ////////////////////////////////////////////////////////////////////////////

    // Keep track of each participant's round 2 secret package.
    // In practice each participant will keep its copy; no one
    // will have all the participant's packages.
    let mut round2_secret_packages = BTreeMap::new();

    // Keep track of all round 2 packages sent to the given participant.
    // This is used to simulate the broadcast; in practice the packages
    // will be sent through some communication channel.
    let mut received_round2_packages = BTreeMap::new();

    // For each participant, perform the second part of the DKG protocol.
    // In practice, each participant will perform this on their own environments.
    for participant_index in 1..=max_signers {
        let participant_identifier = participant_index.try_into().expect("should be nonzero");
        let round1_secret_package = round1_secret_packages
            .remove(&participant_identifier)
            .unwrap();
        let round1_packages = &received_round1_packages[&participant_identifier];
        let (round2_secret_package, round2_packages) = if participant_index != 7 {
            frost::keys::dkg::part2(round1_secret_package, round1_packages).unwrap()
        } else {
            let (s, _) =
                frost::keys::dkg::part1(participant_identifier, max_signers, min_signers, &mut rng)
                    .unwrap();
            frost::keys::dkg::part2(s, round1_packages).unwrap()
        };

        // Store the participant's secret package for later use.
        // In practice each participant will store it in their own environment.
        round2_secret_packages.insert(participant_identifier, round2_secret_package);

        // "Send" the round 2 package to all other participants. In this
        // test this is simulated using a BTreeMap; in practice this will be
        // sent through some communication channel.
        // Note that, in contrast to the previous part, here each other participant
        // gets its own specific package.
        for (receiver_identifier, round2_package) in round2_packages {
            received_round2_packages
                .entry(receiver_identifier)
                .or_insert_with(BTreeMap::new)
                .insert(participant_identifier, round2_package);
        }
    }

    ////////////////////////////////////////////////////////////////////////////
    // Key generation, final computation
    ////////////////////////////////////////////////////////////////////////////

    // Keep track of each participant's long-lived key package.
    // In practice each participant will keep its copy; no one
    // will have all the participant's packages.
    let mut key_packages = BTreeMap::new();

    // Keep track of each participant's public key package.
    // In practice, if there is a Coordinator, only they need to store the set.
    // If there is not, then all candidates must store their own sets.
    // All participants will have the same exact public key package.
    let mut pubkey_packages = BTreeMap::new();

    // For each participant, perform the third part of the DKG protocol.
    // In practice, each participant will perform this on their own environments.
    for participant_index in 1..=max_signers {
        let participant_identifier = participant_index.try_into().expect("should be nonzero");
        let round2_secret_package = &round2_secret_packages[&participant_identifier];
        let round1_packages = &received_round1_packages[&participant_identifier];
        let round2_packages = &received_round2_packages[&participant_identifier];
        let (key_package, pubkey_package) =
            frost::keys::dkg::part3(round2_secret_package, round1_packages, round2_packages)
                .unwrap_or_else(|err| unreachable!("{participant_identifier:?}: {err}"));
        key_packages.insert(participant_identifier, key_package);
        pubkey_packages.insert(participant_identifier, pubkey_package);
    }
}
