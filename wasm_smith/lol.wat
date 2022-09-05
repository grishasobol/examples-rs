(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i64)))
  (type (;3;) (func))
  (import "env" "memory" (memory (;0;) 512))
  (func (;0;) (type 0) (result i32)
    (local i64)
    i32.const -838248868
    nop
    i64.extend_i32_u
    block  ;; label = @1
      br 0 (;@1;)
    end
    i32.const -1167833250
    i32.const 1936595276
    i32.ne
    local.get 0
    local.tee 0
    loop (result i64)  ;; label = @1
      call 0
      loop  ;; label = @2
        i32.const 910112272
        i32.ctz
        call 2
        i32.popcnt
        global.get 0
        i64.eqz
        i32.gt_s
        local.get 0
        br 1 (;@1;)
        i64.clz
        i32.wrap_i64
        br 0 (;@2;)
        i64.extend_i32_s
        local.get 0
        local.get 0
        local.get 0
        i64.sub
        i64.eq
        i64.extend_i32_s
        i64.lt_u
        i32.const -138411460
        i32.gt_s
        br_table 0 (;@2;) 1 (;@1;) 0 (;@2;)
        block  ;; label = @3
          call 2
          br_table 0 (;@3;) 1 (;@2;) 2 (;@1;) 1 (;@2;)
          global.get 0
          block (result i64)  ;; label = @4
            i64.const 1983895423990903242
            i64.const -1100771101800266310
            i64.gt_u
            call 2
            i32.rotl
            i64.const -6705946397575172785
            global.set 0
            call_indirect (type 0)
            i64.extend_i32_s
            local.set 0
            block (result i64)  ;; label = @5
              loop  ;; label = @6
                global.get 0
                call 2
                if  ;; label = @7
                  global.get 0
                  local.get 0
                  i64.or
                  global.set 0
                end
                i64.popcnt
                loop (result i64)  ;; label = @7
                  block  ;; label = @8
                    global.get 0
                    br 1 (;@7;)
                    i64.popcnt
                    local.get 0
                    i32.wrap_i64
                    br 1 (;@7;)
                    i32.const 2110668874
                    local.get 0
                    global.set 0
                    i32.shr_u
                    if  ;; label = @9
                    end
                    global.set 0
                    loop (result i64)  ;; label = @9
                      loop (result i32)  ;; label = @10
                        i64.const 6272570985466126228
                        global.get 0
                        drop
                        drop
                        i32.const 596345394
                      end
                      drop
                      i64.const 4537071606216782751
                    end
                    drop
                  end
                  i64.const -3909239141778736288
                end
                drop
                drop
              end
              i64.const -1968487651745799459
            end
          end
          drop
          drop
        end
        drop
        drop
      end
      drop
      i64.const -400535210771362080
    end
    drop
    drop
    drop
    drop
    i32.const -15896453
  )
  (func (;1;) (type 2) (param i64)
    (local i64 i32)
    call 2
    call 0
    i32.shl
    br_if 0 (;@0;)
    i64.const -8575407950463041064
    loop (result i64)  ;; label = @1
      i32.const 1819415658
      global.get 0
      i64.eqz
      i32.lt_s
      i32.popcnt
      call 2
      drop
      drop
      i64.const -8622348551149577917
    end
    drop
    drop
  )
  (func (;2;) (type 0) (result i32)
    loop (result i32)  ;; label = @1
      call 0
      br 0 (;@1;)
      if  ;; label = @2
        loop (result i32)  ;; label = @3
          call 0
          call 2
          i32.ctz
          i32.shr_s
          i64.extend_i32_u
          call 1
          global.get 0
          global.set 0
          loop (result i64)  ;; label = @4
            i32.const -20038112
            block  ;; label = @5
              i64.const 5641197849732556266
              i32.wrap_i64
              i64.extend_i32_s
              i64.clz
              global.set 0
              nop
              global.get 0
              i64.popcnt
              i32.const -1203074355
              i32.clz
              i32.popcnt
              i64.const 6901612253202147380
              i64.const -3855442063522526022
              i64.div_u
              call 2
              global.get 0
              i64.const -6392692199089058629
              i64.ge_s
              i32.eqz
              i32.gt_u
              i64.const -842486855648982600
              global.set 0
              br 5 (;@0;)
              block (result i32)  ;; label = @6
                loop (result i32)  ;; label = @7
                  i64.const 2201782110956096774
                  call 1
                  global.get 0
                  call 0
                  br_if 5 (;@2;)
                  i64.const -1260624436409511909
                  i64.popcnt
                  i32.const -1103891211
                  br_if 0 (;@7;)
                  i64.lt_u
                  call 0
                  i32.or
                  call 2
                  i32.shr_u
                  i32.eqz
                  global.get 0
                  i32.const 1587180399
                  call_indirect (type 2)
                  i64.extend_i32_u
                  loop (result i64)  ;; label = @8
                    global.get 0
                    i32.wrap_i64
                    call_indirect (type 1)
                    i64.const 3986857008138270609
                    block  ;; label = @9
                      i64.const 7642108326935875423
                      i64.const -9050714272067367574
                      i64.mul
                      loop  ;; label = @10
                        br 8 (;@2;)
                        global.get 0
                        i64.clz
                        global.set 0
                        call 2
                        i32.popcnt
                        i32.ctz
                        i32.eqz
                        call_indirect (type 1)
                        block (result i32)  ;; label = @11
                          global.get 0
                          block (result i32)  ;; label = @12
                            br 7 (;@5;)
                            br 5 (;@7;)
                            loop (result i32)  ;; label = @13
                              block  ;; label = @14
                                i64.const 955917342966542999
                                global.get 0
                                i64.ge_s
                                if (result i64)  ;; label = @15
                                  br 5 (;@10;)
                                  nop
                                  global.get 0
                                else
                                  call 0
                                  i32.eqz
                                  br_if 2 (;@13;)
                                  i64.const 6900262051116142489
                                  i64.const 3446978420247950526
                                  i64.eq
                                  i32.clz
                                  call 0
                                  loop (result i32)  ;; label = @16
                                    block  ;; label = @17
                                      call 2
                                      i64.extend_i32_s
                                      i64.ctz
                                      block (result i64)  ;; label = @18
                                        i32.const 420802492
                                        i64.extend_i32_u
                                        i64.clz
                                        i64.ctz
                                        i64.eqz
                                        i32.ctz
                                        br_table 1 (;@17;) 2 (;@16;) 4 (;@14;) 5 (;@13;) 8 (;@10;) 9 (;@9;) 10 (;@8;) 11 (;@7;) 13 (;@5;) 14 (;@4;) 15 (;@3;) 16 (;@2;) 17 (;@1;) 10 (;@8;)
                                        loop (result i64)  ;; label = @19
                                          block  ;; label = @20
                                            call 0
                                            i32.const -451339604
                                            i64.const 7102010192410537951
                                            loop  ;; label = @21
                                              br 0 (;@21;)
                                              i32.const 446977809
                                              call_indirect (type 0)
                                              i64.const 5228663077799453604
                                              block  ;; label = @22
                                              end
                                              i32.const -1957511878
                                              if  ;; label = @22
                                                i32.const 212568812
                                                i32.const 701906294
                                                if  ;; label = @23
                                                  block (result i64)  ;; label = @24
                                                    loop (result i32)  ;; label = @25
                                                      global.get 0
                                                      i32.const -558541857
                                                      br_table 0 (;@25;) 2 (;@23;) 3 (;@22;) 4 (;@21;) 5 (;@20;) 6 (;@19;) 8 (;@17;) 9 (;@16;) 11 (;@14;) 12 (;@13;) 15 (;@10;) 16 (;@9;) 17 (;@8;) 18 (;@7;) 20 (;@5;) 21 (;@4;) 22 (;@3;) 23 (;@2;) 24 (;@1;) 18 (;@7;)
                                                      block (result i32)  ;; label = @26
                                                        i64.const -7327781914001918684
                                                        i64.const -2209183973283183891
                                                        i64.ne
                                                        block (result i64)  ;; label = @27
                                                          call 2
                                                          i32.const 433072512
                                                          i32.rotl
                                                          i32.clz
                                                          i32.popcnt
                                                          call 0
                                                          br 16 (;@11;)
                                                          i32.popcnt
                                                          i32.eqz
                                                          block (result i64)  ;; label = @28
                                                            i32.const -1497269560
                                                            call 2
                                                            i32.eq
                                                            global.get 0
                                                            i64.eqz
                                                            i32.eqz
                                                            call 0
                                                            i32.add
                                                            i32.ge_u
                                                            block  ;; label = @29
                                                              global.get 0
                                                              loop (result i32)  ;; label = @30
                                                                br 16 (;@14;)
                                                                nop
                                                                block (result i64)  ;; label = @31
                                                                  nop
                                                                  block  ;; label = @32
                                                                    br 25 (;@7;)
                                                                    i32.const -500962503
                                                                    block (result i64)  ;; label = @33
                                                                      loop (result i64)  ;; label = @34
                                                                        i32.const -25310451
                                                                        br 25 (;@9;)
                                                                        call 0
                                                                        block (result i64)  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block (result i32)  ;; label = @37
                                                                              loop (result i32)  ;; label = @38
                                                                                global.get 0
                                                                                global.get 0
                                                                                call 2
                                                                                loop (result i32)  ;; label = @39
                                                                                  i64.const 8108561625983258312
                                                                                  br 25 (;@14;)
                                                                                  call 2
                                                                                  i32.clz
                                                                                  global.get 0
                                                                                  i64.eqz
                                                                                  i32.rotl
                                                                                  call_indirect (type 2)
                                                                                  nop
                                                                                  i32.const 1994074150
                                                                                  loop (result i64)  ;; label = @40
                                                                                    loop  ;; label = @41
                                                                                    end
                                                                                    block  ;; label = @41
                                                                                      i64.const 2989855666639160617
                                                                                      i64.eqz
                                                                                      i32.const -1978267546
                                                                                      i32.le_u
                                                                                      br_if 11 (;@30;)
                                                                                      call 0
                                                                                      i32.clz
                                                                                      br_if 36 (;@5;)
                                                                                    end
                                                                                    br 19 (;@21;)
                                                                                    call 0
                                                                                    i32.popcnt
                                                                                    i32.clz
                                                                                    loop  ;; label = @41
                                                                                      loop (result i64)  ;; label = @42
                                                                                        loop  ;; label = @43
                                                                                        end
                                                                                        i32.const 640500540
                                                                                        if  ;; label = @43
                                                                                        end
                                                                                        global.get 0
                                                                                        i64.clz
                                                                                        loop (result i32)  ;; label = @43
                                                                                          i64.const -748375978546455447
                                                                                          global.get 0
                                                                                          i64.eq
                                                                                          call_indirect (type 1)
                                                                                          i32.const -1654741655
                                                                                          i32.const 811902224
                                                                                          call 2
                                                                                          select
                                                                                          global.get 0
                                                                                          loop (result i64)  ;; label = @44
                                                                                            block (result i32)  ;; label = @45
                                                                                              call 0
                                                                                              if  ;; label = @46
                                                                                                i32.const -1510186843
                                                                                                call_indirect (type 0)
                                                                                                block  ;; label = @47
                                                                                                  call 0
                                                                                                  i32.clz
                                                                                                  call_indirect (type 0)
                                                                                                  i32.eqz
                                                                                                  i64.extend_i32_u
                                                                                                  global.set 0
                                                                                                  global.get 0
                                                                                                  global.get 0
                                                                                                  i64.le_u
                                                                                                  i32.clz
                                                                                                  loop (result i64)  ;; label = @48
                                                                                                    call 0
                                                                                                    i64.const -1801975525352725458
                                                                                                    block (result i64)  ;; label = @49
                                                                                                    i32.const -155091979
                                                                                                    i32.eqz
                                                                                                    i32.const -1715603500
                                                                                                    i64.extend_i32_u
                                                                                                    i64.ctz
                                                                                                    global.get 0
                                                                                                    i64.ne
                                                                                                    i32.xor
                                                                                                    i64.extend_i32_u
                                                                                                    nop
                                                                                                    global.get 0
                                                                                                    i64.mul
                                                                                                    i32.const -602695336
                                                                                                    loop  ;; label = @50
                                                                                                    global.get 0
                                                                                                    i64.popcnt
                                                                                                    i32.const -449718650
                                                                                                    i32.ctz
                                                                                                    loop  ;; label = @51
                                                                                                    block (result i64)  ;; label = @52
                                                                                                    br 11 (;@41;)
                                                                                                    i32.const -1334721127
                                                                                                    i32.clz
                                                                                                    if  ;; label = @53
                                                                                                    call 2
                                                                                                    br_table 0 (;@53;) 2 (;@51;) 3 (;@50;) 5 (;@48;) 6 (;@47;) 7 (;@46;) 9 (;@44;) 10 (;@43;) 11 (;@42;) 12 (;@41;) 13 (;@40;) 14 (;@39;) 15 (;@38;) 17 (;@36;) 19 (;@34;) 21 (;@32;) 23 (;@30;) 24 (;@29;) 28 (;@25;) 30 (;@23;) 31 (;@22;) 32 (;@21;) 33 (;@20;) 34 (;@19;) 36 (;@17;) 37 (;@16;) 39 (;@14;) 40 (;@13;) 43 (;@10;) 44 (;@9;) 45 (;@8;) 46 (;@7;) 48 (;@5;) 49 (;@4;) 50 (;@3;) 51 (;@2;) 52 (;@1;) 45 (;@8;)
                                                                                                    call 0
                                                                                                    if  ;; label = @54
                                                                                                    global.get 0
                                                                                                    call 1
                                                                                                    global.get 0
                                                                                                    nop
                                                                                                    loop (result i64)  ;; label = @55
                                                                                                    block  ;; label = @56
                                                                                                    block (result i64)  ;; label = @57
                                                                                                    global.get 0
                                                                                                    global.set 0
                                                                                                    global.get 0
                                                                                                    call 1
                                                                                                    block  ;; label = @58
                                                                                                    block (result i64)  ;; label = @59
                                                                                                    nop
                                                                                                    loop  ;; label = @60
                                                                                                    loop  ;; label = @61
                                                                                                    call 2
                                                                                                    i64.extend_i32_u
                                                                                                    global.set 0
                                                                                                    global.get 0
                                                                                                    i32.const -1712229990
                                                                                                    block (result i64)  ;; label = @62
                                                                                                    block (result i64)  ;; label = @63
                                                                                                    br 43 (;@20;)
                                                                                                    global.get 0
                                                                                                    i64.eqz
                                                                                                    br 17 (;@46;)
                                                                                                    i64.const -8844768262380143227
                                                                                                    nop
                                                                                                    loop (result i32)  ;; label = @64
                                                                                                    loop  ;; label = @65
                                                                                                    end
                                                                                                    i64.const -8204237365720932610
                                                                                                    block (result i64)  ;; label = @65
                                                                                                    block (result i32)  ;; label = @66
                                                                                                    call 0
                                                                                                    i32.eqz
                                                                                                    call 0
                                                                                                    i32.or
                                                                                                    loop (result i64)  ;; label = @67
                                                                                                    i64.const -3205137982322131954
                                                                                                    i32.wrap_i64
                                                                                                    return
                                                                                                    i32.const 734873585
                                                                                                    i32.clz
                                                                                                    i32.popcnt
                                                                                                    loop (result i64)  ;; label = @68
                                                                                                    br 30 (;@38;)
                                                                                                    global.get 0
                                                                                                    i64.eqz
                                                                                                    br_if 21 (;@47;)
                                                                                                    i32.const -1629562455
                                                                                                    br 59 (;@9;)
                                                                                                    br_table 0 (;@68;) 1 (;@67;) 4 (;@64;) 7 (;@61;) 8 (;@60;) 10 (;@58;) 12 (;@56;) 13 (;@55;) 14 (;@54;) 15 (;@53;) 17 (;@51;) 18 (;@50;) 20 (;@48;) 21 (;@47;) 22 (;@46;) 24 (;@44;) 25 (;@43;) 26 (;@42;) 27 (;@41;) 28 (;@40;) 29 (;@39;) 30 (;@38;) 32 (;@36;) 34 (;@34;) 36 (;@32;) 38 (;@30;) 39 (;@29;) 43 (;@25;) 45 (;@23;) 46 (;@22;) 47 (;@21;) 48 (;@20;) 49 (;@19;) 51 (;@17;) 52 (;@16;) 54 (;@14;) 55 (;@13;) 58 (;@10;) 59 (;@9;) 60 (;@8;) 61 (;@7;) 63 (;@5;) 64 (;@4;) 65 (;@3;) 66 (;@2;) 67 (;@1;) 29 (;@39;)
                                                                                                    i32.const -27425729
                                                                                                    block  ;; label = @69
                                                                                                    br 56 (;@13;)
                                                                                                    nop
                                                                                                    call 0
                                                                                                    if (result i64)  ;; label = @70
                                                                                                    loop  ;; label = @71
                                                                                                    i32.const 2100716489
                                                                                                    global.get 0
                                                                                                    i64.clz
                                                                                                    i32.const 1619737468
                                                                                                    i32.const 1902506172
                                                                                                    i32.eq
                                                                                                    if  ;; label = @72
                                                                                                    br 8 (;@64;)
                                                                                                    loop (result i32)  ;; label = @73
                                                                                                    block  ;; label = @74
                                                                                                    global.get 0
                                                                                                    i64.const -1782534118786931752
                                                                                                    i64.ctz
                                                                                                    br 30 (;@44;)
                                                                                                    i64.le_s
                                                                                                    if (result i32)  ;; label = @75
                                                                                                    block  ;; label = @76
                                                                                                    loop  ;; label = @77
                                                                                                    end
                                                                                                    i64.const 7152376185576126576
                                                                                                    i64.ctz
                                                                                                    global.set 0
                                                                                                    end
                                                                                                    call 0
                                                                                                    br_table 1 (;@74;) 2 (;@73;) 3 (;@72;) 4 (;@71;) 6 (;@69;) 7 (;@68;) 8 (;@67;) 11 (;@64;) 14 (;@61;) 15 (;@60;) 17 (;@58;) 19 (;@56;) 20 (;@55;) 21 (;@54;) 22 (;@53;) 24 (;@51;) 25 (;@50;) 27 (;@48;) 28 (;@47;) 29 (;@46;) 31 (;@44;) 32 (;@43;) 33 (;@42;) 34 (;@41;) 35 (;@40;) 36 (;@39;) 37 (;@38;) 39 (;@36;) 41 (;@34;) 43 (;@32;) 45 (;@30;) 46 (;@29;) 50 (;@25;) 52 (;@23;) 53 (;@22;) 54 (;@21;) 55 (;@20;) 56 (;@19;) 58 (;@17;) 59 (;@16;) 61 (;@14;) 62 (;@13;) 65 (;@10;) 66 (;@9;) 67 (;@8;) 68 (;@7;) 70 (;@5;) 71 (;@4;) 72 (;@3;) 73 (;@2;) 74 (;@1;) 7 (;@68;)
                                                                                                    loop  ;; label = @76
                                                                                                    call 2
                                                                                                    loop (result i32)  ;; label = @77
                                                                                                    nop
                                                                                                    br 17 (;@60;)
                                                                                                    global.get 0
                                                                                                    br 47 (;@30;)
                                                                                                    global.get 0
                                                                                                    global.set 0
                                                                                                    i32.const -1718926691
                                                                                                    br 8 (;@69;)
                                                                                                    i32.eqz
                                                                                                    if  ;; label = @78
                                                                                                    call 0
                                                                                                    i32.ctz
                                                                                                    i32.eqz
                                                                                                    i32.popcnt
                                                                                                    i32.const 711824956
                                                                                                    i32.ctz
                                                                                                    i32.rem_s
                                                                                                    block (result i64)  ;; label = @79
                                                                                                    block (result i32)  ;; label = @80
                                                                                                    i64.const 2080350859930022499
                                                                                                    global.set 0
                                                                                                    loop (result i64)  ;; label = @81
                                                                                                    call 2
                                                                                                    call 0
                                                                                                    if  ;; label = @82
                                                                                                    block  ;; label = @83
                                                                                                    block  ;; label = @84
                                                                                                    i32.const -411740870
                                                                                                    i64.const 1960822466705625253
                                                                                                    i64.popcnt
                                                                                                    i64.eqz
                                                                                                    i32.le_s
                                                                                                    loop (result i32)  ;; label = @85
                                                                                                    loop  ;; label = @86
                                                                                                    i64.const 6375393551884832917
                                                                                                    global.set 0
                                                                                                    end
                                                                                                    block  ;; label = @86
                                                                                                    end
                                                                                                    i64.const 8715544642792059205
                                                                                                    i64.const -1625035413204498257
                                                                                                    i64.mul
                                                                                                    i64.clz
                                                                                                    i64.ctz
                                                                                                    br 81 (;@4;)
                                                                                                    i32.wrap_i64
                                                                                                    br_table 0 (;@85;) 1 (;@84;) 2 (;@83;) 3 (;@82;) 4 (;@81;) 7 (;@78;) 8 (;@77;) 9 (;@76;) 11 (;@74;) 12 (;@73;) 13 (;@72;) 14 (;@71;) 16 (;@69;) 17 (;@68;) 18 (;@67;) 21 (;@64;) 24 (;@61;) 25 (;@60;) 27 (;@58;) 29 (;@56;) 30 (;@55;) 31 (;@54;) 32 (;@53;) 34 (;@51;) 35 (;@50;) 37 (;@48;) 38 (;@47;) 39 (;@46;) 41 (;@44;) 42 (;@43;) 43 (;@42;) 44 (;@41;) 45 (;@40;) 46 (;@39;) 47 (;@38;) 49 (;@36;) 51 (;@34;) 53 (;@32;) 55 (;@30;) 56 (;@29;) 60 (;@25;) 62 (;@23;) 63 (;@22;) 64 (;@21;) 65 (;@20;) 66 (;@19;) 68 (;@17;) 69 (;@16;) 71 (;@14;) 72 (;@13;) 75 (;@10;) 76 (;@9;) 77 (;@8;) 78 (;@7;) 80 (;@5;) 81 (;@4;) 82 (;@3;) 83 (;@2;) 84 (;@1;) 84 (;@1;)
                                                                                                    call 2
                                                                                                    i64.extend_i32_u
                                                                                                    i64.clz
                                                                                                    global.set 0
                                                                                                    i32.const -1362484441
                                                                                                    call 0
                                                                                                    i32.ge_s
                                                                                                    end
                                                                                                    i32.mul
                                                                                                    block  ;; label = @85
                                                                                                    block (result i64)  ;; label = @86
                                                                                                    block (result i32)  ;; label = @87
                                                                                                    global.get 0
                                                                                                    block (result i32)  ;; label = @88
                                                                                                    br 7 (;@81;)
                                                                                                    call 2
                                                                                                    call_indirect (type 1)
                                                                                                    i32.const 1855820372
                                                                                                    br_if 75 (;@13;)
                                                                                                    global.get 0
                                                                                                    i64.const 3586708082793544673
                                                                                                    i64.add
                                                                                                    i64.eqz
                                                                                                    call 0
                                                                                                    i32.eqz
                                                                                                    i32.clz
                                                                                                    call 0
                                                                                                    i32.le_u
                                                                                                    i32.ge_u
                                                                                                    call_indirect (type 1)
                                                                                                    loop (result i32)  ;; label = @89
                                                                                                    call 0
                                                                                                    i64.const -9175260191544180323
                                                                                                    i32.wrap_i64
                                                                                                    i32.shl
                                                                                                    br 55 (;@34;)
                                                                                                    i64.extend_i32_s
                                                                                                    i64.clz
                                                                                                    i64.popcnt
                                                                                                    global.get 0
                                                                                                    i64.gt_s
                                                                                                    i32.eqz
                                                                                                    block (result i64)  ;; label = @90
                                                                                                    nop
                                                                                                    i32.const 1824972705
                                                                                                    i64.const -696369567886989942
                                                                                                    br 29 (;@61;)
                                                                                                    i64.eqz
                                                                                                    loop (result i64)  ;; label = @91
                                                                                                    nop
                                                                                                    i64.const -1221072903555160288
                                                                                                    i64.eqz
                                                                                                    call_indirect (type 0)
                                                                                                    call_indirect (type 0)
                                                                                                    return
                                                                                                    block (result i32)  ;; label = @92
                                                                                                    block (result i32)  ;; label = @93
                                                                                                    i32.const -1026754532
                                                                                                    end
                                                                                                    if  ;; label = @93
                                                                                                    block (result i64)  ;; label = @94
                                                                                                    i32.const -1816793279
                                                                                                    i32.eqz
                                                                                                    br 9 (;@85;)
                                                                                                    i64.const -4674294607490446358
                                                                                                    loop (result i32)  ;; label = @95
                                                                                                    call 0
                                                                                                    end
                                                                                                    if (result i64)  ;; label = @95
                                                                                                    br 57 (;@38;)
                                                                                                    block  ;; label = @96
                                                                                                    block  ;; label = @97
                                                                                                    i32.const 311714811
                                                                                                    i32.clz
                                                                                                    call_indirect (type 0)
                                                                                                    i32.clz
                                                                                                    if (result i64)  ;; label = @98
                                                                                                    i64.const -2033587463215646190
                                                                                                    call 0
                                                                                                    i64.extend_i32_u
                                                                                                    i64.or
                                                                                                    br 19 (;@79;)
                                                                                                    i64.const 3417070898700038480
                                                                                                    loop (result i64)  ;; label = @99
                                                                                                    call 2
                                                                                                    loop (result i32)  ;; label = @100
                                                                                                    br 93 (;@7;)
                                                                                                    loop (result i64)  ;; label = @101
                                                                                                    loop (result i64)  ;; label = @102
                                                                                                    i64.const 5096677847177245065
                                                                                                    call 0
                                                                                                    if  ;; label = @103
                                                                                                    i32.const -1802169011
                                                                                                    br_table 0 (;@103;) 1 (;@102;) 2 (;@101;) 3 (;@100;) 4 (;@99;) 6 (;@97;) 7 (;@96;) 10 (;@93;) 12 (;@91;) 14 (;@89;) 18 (;@85;) 19 (;@84;) 20 (;@83;) 21 (;@82;) 22 (;@81;) 25 (;@78;) 26 (;@77;) 27 (;@76;) 29 (;@74;) 30 (;@73;) 31 (;@72;) 32 (;@71;) 34 (;@69;) 35 (;@68;) 36 (;@67;) 39 (;@64;) 42 (;@61;) 43 (;@60;) 45 (;@58;) 47 (;@56;) 48 (;@55;) 49 (;@54;) 50 (;@53;) 52 (;@51;) 53 (;@50;) 55 (;@48;) 56 (;@47;) 57 (;@46;) 59 (;@44;) 60 (;@43;) 61 (;@42;) 62 (;@41;) 63 (;@40;) 64 (;@39;) 65 (;@38;) 67 (;@36;) 69 (;@34;) 71 (;@32;) 73 (;@30;) 74 (;@29;) 78 (;@25;) 80 (;@23;) 81 (;@22;) 82 (;@21;) 83 (;@20;) 84 (;@19;) 86 (;@17;) 87 (;@16;) 89 (;@14;) 90 (;@13;) 93 (;@10;) 94 (;@9;) 95 (;@8;) 96 (;@7;) 98 (;@5;) 99 (;@4;) 100 (;@3;) 101 (;@2;) 102 (;@1;) 43 (;@60;)
                                                                                                    block (result i32)  ;; label = @104
                                                                                                    block  ;; label = @105
                                                                                                    br 37 (;@68;)
                                                                                                    i64.const 5390925693500937935
                                                                                                    i64.popcnt
                                                                                                    br 34 (;@71;)
                                                                                                    call 0
                                                                                                    call_indirect (type 0)
                                                                                                    br_if 73 (;@32;)
                                                                                                    loop  ;; label = @106
                                                                                                    block (result i32)  ;; label = @107
                                                                                                    call 0
                                                                                                    br_table 1 (;@106;) 2 (;@105;) 4 (;@103;) 5 (;@102;) 6 (;@101;) 7 (;@100;) 8 (;@99;) 10 (;@97;) 11 (;@96;) 14 (;@93;) 16 (;@91;) 18 (;@89;) 22 (;@85;) 23 (;@84;) 24 (;@83;) 25 (;@82;) 26 (;@81;) 29 (;@78;) 30 (;@77;) 31 (;@76;) 33 (;@74;) 34 (;@73;) 35 (;@72;) 36 (;@71;) 38 (;@69;) 39 (;@68;) 40 (;@67;) 43 (;@64;) 46 (;@61;) 47 (;@60;) 49 (;@58;) 51 (;@56;) 52 (;@55;) 53 (;@54;) 54 (;@53;) 56 (;@51;) 57 (;@50;) 59 (;@48;) 60 (;@47;) 61 (;@46;) 63 (;@44;) 64 (;@43;) 65 (;@42;) 66 (;@41;) 67 (;@40;) 68 (;@39;) 69 (;@38;) 71 (;@36;) 73 (;@34;) 75 (;@32;) 77 (;@30;) 78 (;@29;) 82 (;@25;) 84 (;@23;) 85 (;@22;) 86 (;@21;) 87 (;@20;) 88 (;@19;) 90 (;@17;) 91 (;@16;) 93 (;@14;) 94 (;@13;) 97 (;@10;) 98 (;@9;) 99 (;@8;) 100 (;@7;) 102 (;@5;) 103 (;@4;) 104 (;@3;) 105 (;@2;) 106 (;@1;) 97 (;@10;)
                                                                                                    block (result i32)  ;; label = @108
                                                                                                    br 64 (;@44;)
                                                                                                    block  ;; label = @109
                                                                                                    block (result i32)  ;; label = @110
                                                                                                    i32.const 320035805
                                                                                                    i64.extend_i32_s
                                                                                                    global.set 0
                                                                                                    call 2
                                                                                                    i32.ctz
                                                                                                    i32.const -80307854
                                                                                                    i32.sub
                                                                                                    i32.clz
                                                                                                    block (result i32)  ;; label = @111
                                                                                                    i64.const -6192691966881202354
                                                                                                    block  ;; label = @112
                                                                                                    loop (result i32)  ;; label = @113
                                                                                                    global.get 0
                                                                                                    loop (result i32)  ;; label = @114
                                                                                                    global.get 0
                                                                                                    call 2
                                                                                                    i32.clz
                                                                                                    global.get 0
                                                                                                    i32.wrap_i64
                                                                                                    i32.ge_u
                                                                                                    call 0
                                                                                                    i32.shr_s
                                                                                                    i64.extend_i32_u
                                                                                                    i64.xor
                                                                                                    i64.ctz
                                                                                                    loop  ;; label = @115
                                                                                                    global.get 0
                                                                                                    i32.wrap_i64
                                                                                                    i64.extend_i32_u
                                                                                                    global.get 0
                                                                                                    i64.and
                                                                                                    br 45 (;@70;)
                                                                                                    loop (result i32)  ;; label = @116
                                                                                                    i64.const 5896944153577005941
                                                                                                    i64.clz
                                                                                                    loop  ;; label = @117
                                                                                                    loop  ;; label = @118
                                                                                                    i64.const -69042824807018996
                                                                                                    i64.const -4095348227413625797
                                                                                                    loop  ;; label = @119
                                                                                                    i32.const -873333400
                                                                                                    loop (result i64)  ;; label = @120
                                                                                                    i32.const -634551506
                                                                                                    loop  ;; label = @121
                                                                                                    end
                                                                                                    call 2
                                                                                                    i32.const 1067687233
                                                                                                    select
                                                                                                    i32.eqz
                                                                                                    i32.popcnt
                                                                                                    call 2
                                                                                                    i32.const -1399461371
                                                                                                    i32.and
                                                                                                    i32.lt_s
                                                                                                    i32.eqz
                                                                                                    i64.extend_i32_s
                                                                                                    br 2 (;@118;)
                                                                                                    i32.const 1983021030
                                                                                                    call_indirect (type 1)
                                                                                                    i64.ctz
                                                                                                    global.set 0
                                                                                                    global.get 0
                                                                                                    i64.eqz
                                                                                                    i32.ctz
                                                                                                    call_indirect (type 1)
                                                                                                    call 0
                                                                                                    call_indirect (type 1)
                                                                                                    call 2
                                                                                                    nop
                                                                                                    i32.clz
                                                                                                    loop  ;; label = @121
                                                                                                    i32.const 319927255
                                                                                                    i32.ctz
                                                                                                    i32.eqz
                                                                                                    call 2
                                                                                                    call 0
                                                                                                    br 34 (;@87;)
                                                                                                    i32.rem_u
                                                                                                    i32.ctz
                                                                                                    br_if 82 (;@39;)
                                                                                                    i32.const 1759145453
                                                                                                    block (result i64)  ;; label = @122
                                                                                                    block (result i32)  ;; label = @123
                                                                                                    global.get 0
                                                                                                    i64.clz
                                                                                                    br 69 (;@54;)
                                                                                                    call 2
                                                                                                    i32.eqz
                                                                                                    call 0
                                                                                                    i32.gt_u
                                                                                                    br 123 (;@0;)
                                                                                                    block  ;; label = @124
                                                                                                    call 0
                                                                                                    call 0
                                                                                                    br 58 (;@66;)
                                                                                                    global.get 0
                                                                                                    i32.wrap_i64
                                                                                                    i32.const 1360149063
                                                                                                    block  ;; label = @125
                                                                                                    i32.const 1003811305
                                                                                                    br_if 74 (;@51;)
                                                                                                    i32.const -1180390734
                                                                                                    br_table 0 (;@125;) 1 (;@124;) 4 (;@121;) 5 (;@120;) 6 (;@119;) 7 (;@118;) 8 (;@117;) 9 (;@116;) 10 (;@115;) 11 (;@114;) 12 (;@113;) 13 (;@112;) 16 (;@109;) 19 (;@106;) 20 (;@105;) 22 (;@103;) 23 (;@102;) 24 (;@101;) 25 (;@100;) 26 (;@99;) 28 (;@97;) 29 (;@96;) 32 (;@93;) 34 (;@91;) 36 (;@89;) 40 (;@85;) 41 (;@84;) 42 (;@83;) 43 (;@82;) 44 (;@81;) 47 (;@78;) 48 (;@77;) 49 (;@76;) 51 (;@74;) 52 (;@73;) 53 (;@72;) 54 (;@71;) 56 (;@69;) 57 (;@68;) 58 (;@67;) 61 (;@64;) 64 (;@61;) 65 (;@60;) 67 (;@58;) 69 (;@56;) 70 (;@55;) 71 (;@54;) 72 (;@53;) 74 (;@51;) 75 (;@50;) 77 (;@48;) 78 (;@47;) 79 (;@46;) 81 (;@44;) 82 (;@43;) 83 (;@42;) 84 (;@41;) 85 (;@40;) 86 (;@39;) 87 (;@38;) 89 (;@36;) 91 (;@34;) 93 (;@32;) 95 (;@30;) 96 (;@29;) 100 (;@25;) 102 (;@23;) 103 (;@22;) 104 (;@21;) 105 (;@20;) 106 (;@19;) 108 (;@17;) 109 (;@16;) 111 (;@14;) 112 (;@13;) 115 (;@10;) 116 (;@9;) 117 (;@8;) 118 (;@7;) 120 (;@5;) 121 (;@4;) 122 (;@3;) 123 (;@2;) 124 (;@1;) 123 (;@2;)
                                                                                                    block (result i32)  ;; label = @126
                                                                                                    loop  ;; label = @127
                                                                                                    global.get 0
                                                                                                    global.set 0
                                                                                                    loop (result i64)  ;; label = @128
                                                                                                    block  ;; label = @129
                                                                                                    br 40 (;@89;)
                                                                                                    call 0
                                                                                                    i64.const 7113492970714343948
                                                                                                    i64.eqz
                                                                                                    i32.shl
                                                                                                    i32.eqz
                                                                                                    br 68 (;@61;)
                                                                                                    call_indirect (type 1)
                                                                                                    global.get 0
                                                                                                    nop
                                                                                                    call 1
                                                                                                    i32.const 1257335679
                                                                                                    if (result i32)  ;; label = @130
                                                                                                    global.get 0
                                                                                                    i64.ctz
                                                                                                    global.get 0
                                                                                                    i64.lt_u
                                                                                                    i64.extend_i32_u
                                                                                                    call 2
                                                                                                    i64.extend_i32_u
                                                                                                    i64.popcnt
                                                                                                    i64.eq
                                                                                                    br_if 110 (;@20;)
                                                                                                    global.get 0
                                                                                                    block  ;; label = @131
                                                                                                    br 29 (;@102;)
                                                                                                    i32.const 959476234
                                                                                                    i32.const -927352570
                                                                                                    i32.div_s
                                                                                                    br_if 40 (;@91;)
                                                                                                    block (result i32)  ;; label = @132
                                                                                                    i32.const 1891501211
                                                                                                    i32.popcnt
                                                                                                    loop  ;; label = @133
                                                                                                    global.get 0
                                                                                                    br 40 (;@93;)
                                                                                                    i64.popcnt
                                                                                                    i64.popcnt
                                                                                                    global.get 0
                                                                                                    i64.ne
                                                                                                    i32.clz
                                                                                                    call 0
                                                                                                    i64.extend_i32_s
                                                                                                    i32.const -1003542479
                                                                                                    i64.extend_i32_s
                                                                                                    i64.const -1305234818249394261
                                                                                                    i64.le_s
                                                                                                    i64.const 8818030543216462726
                                                                                                    i64.clz
                                                                                                    loop (result i64)  ;; label = @134
                                                                                                    br 7 (;@127;)
                                                                                                    block (result i32)  ;; label = @135
                                                                                                    i32.const -1781878666
                                                                                                    i32.eqz
                                                                                                    i32.ctz
                                                                                                    br_table 1 (;@134;) 2 (;@133;) 4 (;@131;) 6 (;@129;) 7 (;@128;) 8 (;@127;) 10 (;@125;) 11 (;@124;) 14 (;@121;) 15 (;@120;) 16 (;@119;) 17 (;@118;) 18 (;@117;) 19 (;@116;) 20 (;@115;) 21 (;@114;) 22 (;@113;) 23 (;@112;) 26 (;@109;) 29 (;@106;) 30 (;@105;) 32 (;@103;) 33 (;@102;) 34 (;@101;) 35 (;@100;) 36 (;@99;) 38 (;@97;) 39 (;@96;) 42 (;@93;) 44 (;@91;) 46 (;@89;) 50 (;@85;) 51 (;@84;) 52 (;@83;) 53 (;@82;) 54 (;@81;) 57 (;@78;) 58 (;@77;) 59 (;@76;) 61 (;@74;) 62 (;@73;) 63 (;@72;) 64 (;@71;) 66 (;@69;) 67 (;@68;) 68 (;@67;) 71 (;@64;) 74 (;@61;) 75 (;@60;) 77 (;@58;) 79 (;@56;) 80 (;@55;) 81 (;@54;) 82 (;@53;) 84 (;@51;) 85 (;@50;) 87 (;@48;) 88 (;@47;) 89 (;@46;) 91 (;@44;) 92 (;@43;) 93 (;@42;) 94 (;@41;) 95 (;@40;) 96 (;@39;) 97 (;@38;) 99 (;@36;) 101 (;@34;) 103 (;@32;) 105 (;@30;) 106 (;@29;) 110 (;@25;) 112 (;@23;) 113 (;@22;) 114 (;@21;) 115 (;@20;) 116 (;@19;) 118 (;@17;) 119 (;@16;) 121 (;@14;) 122 (;@13;) 125 (;@10;) 126 (;@9;) 127 (;@8;) 128 (;@7;) 130 (;@5;) 131 (;@4;) 132 (;@3;) 133 (;@2;) 134 (;@1;) 44 (;@91;)
                                                                                                    i32.const 823751484
                                                                                                    i32.eqz
                                                                                                    i32.eqz
                                                                                                    block (result i32)  ;; label = @136
                                                                                                    i64.const -2552977020992240928
                                                                                                    i64.popcnt
                                                                                                    i32.wrap_i64
                                                                                                    i64.extend_i32_s
                                                                                                    i64.ctz
                                                                                                    i64.eqz
                                                                                                    loop (result i64)  ;; label = @137
                                                                                                    global.get 0
                                                                                                    br 104 (;@33;)
                                                                                                    block (result i64)  ;; label = @138
                                                                                                    block  ;; label = @139
                                                                                                    block  ;; label = @140
                                                                                                    call 0
                                                                                                    i64.extend_i32_s
                                                                                                    loop  ;; label = @141
                                                                                                    loop  ;; label = @142
                                                                                                    loop  ;; label = @143
                                                                                                    i32.const 1201647288
                                                                                                    if  ;; label = @144
                                                                                                    block (result i64)  ;; label = @145
                                                                                                    global.get 0
                                                                                                    i64.const -7555157199015717542
                                                                                                    i64.gt_u
                                                                                                    br_table 1 (;@144;) 2 (;@143;) 3 (;@142;) 4 (;@141;) 5 (;@140;) 6 (;@139;) 8 (;@137;) 11 (;@134;) 12 (;@133;) 14 (;@131;) 16 (;@129;) 17 (;@128;) 18 (;@127;) 20 (;@125;) 21 (;@124;) 24 (;@121;) 25 (;@120;) 26 (;@119;) 27 (;@118;) 28 (;@117;) 29 (;@116;) 30 (;@115;) 31 (;@114;) 32 (;@113;) 33 (;@112;) 36 (;@109;) 39 (;@106;) 40 (;@105;) 42 (;@103;) 43 (;@102;) 44 (;@101;) 45 (;@100;) 46 (;@99;) 48 (;@97;) 49 (;@96;) 52 (;@93;) 54 (;@91;) 56 (;@89;) 60 (;@85;) 61 (;@84;) 62 (;@83;) 63 (;@82;) 64 (;@81;) 67 (;@78;) 68 (;@77;) 69 (;@76;) 71 (;@74;) 72 (;@73;) 73 (;@72;) 74 (;@71;) 76 (;@69;) 77 (;@68;) 78 (;@67;) 81 (;@64;) 84 (;@61;) 85 (;@60;) 87 (;@58;) 89 (;@56;) 90 (;@55;) 91 (;@54;) 92 (;@53;) 94 (;@51;) 95 (;@50;) 97 (;@48;) 98 (;@47;) 99 (;@46;) 101 (;@44;) 102 (;@43;) 103 (;@42;) 104 (;@41;) 105 (;@40;) 106 (;@39;) 107 (;@38;) 109 (;@36;) 111 (;@34;) 113 (;@32;) 115 (;@30;) 116 (;@29;) 120 (;@25;) 122 (;@23;) 123 (;@22;) 124 (;@21;) 125 (;@20;) 126 (;@19;) 128 (;@17;) 129 (;@16;) 131 (;@14;) 132 (;@13;) 135 (;@10;) 136 (;@9;) 137 (;@8;) 138 (;@7;) 140 (;@5;) 141 (;@4;) 142 (;@3;) 143 (;@2;) 144 (;@1;) 140 (;@5;)
                                                                                                    i32.const 1226330981
                                                                                                    loop (result i64)  ;; label = @146
                                                                                                    loop  ;; label = @147
                                                                                                    br 10 (;@137;)
                                                                                                    global.get 0
                                                                                                    i32.wrap_i64
                                                                                                    loop  ;; label = @148
                                                                                                    i32.const -956316354
                                                                                                    block  ;; label = @149
                                                                                                    end
                                                                                                    i32.ctz
                                                                                                    br_table 0 (;@148;) 1 (;@147;) 2 (;@146;) 4 (;@144;) 5 (;@143;) 6 (;@142;) 7 (;@141;) 8 (;@140;) 9 (;@139;) 11 (;@137;) 14 (;@134;) 15 (;@133;) 17 (;@131;) 19 (;@129;) 20 (;@128;) 21 (;@127;) 23 (;@125;) 24 (;@124;) 27 (;@121;) 28 (;@120;) 29 (;@119;) 30 (;@118;) 31 (;@117;) 32 (;@116;) 33 (;@115;) 34 (;@114;) 35 (;@113;) 36 (;@112;) 39 (;@109;) 42 (;@106;) 43 (;@105;) 45 (;@103;) 46 (;@102;) 47 (;@101;) 48 (;@100;) 49 (;@99;) 51 (;@97;) 52 (;@96;) 55 (;@93;) 57 (;@91;) 59 (;@89;) 63 (;@85;) 64 (;@84;) 65 (;@83;) 66 (;@82;) 67 (;@81;) 70 (;@78;) 71 (;@77;) 72 (;@76;) 74 (;@74;) 75 (;@73;) 76 (;@72;) 77 (;@71;) 79 (;@69;) 80 (;@68;) 81 (;@67;) 84 (;@64;) 87 (;@61;) 88 (;@60;) 90 (;@58;) 92 (;@56;) 93 (;@55;) 94 (;@54;) 95 (;@53;) 97 (;@51;) 98 (;@50;) 100 (;@48;) 101 (;@47;) 102 (;@46;) 104 (;@44;) 105 (;@43;) 106 (;@42;) 107 (;@41;) 108 (;@40;) 109 (;@39;) 110 (;@38;) 112 (;@36;) 114 (;@34;) 116 (;@32;) 118 (;@30;) 119 (;@29;) 123 (;@25;) 125 (;@23;) 126 (;@22;) 127 (;@21;) 128 (;@20;) 129 (;@19;) 131 (;@17;) 132 (;@16;) 134 (;@14;) 135 (;@13;) 138 (;@10;) 139 (;@9;) 140 (;@8;) 141 (;@7;) 143 (;@5;) 144 (;@4;) 145 (;@3;) 146 (;@2;) 147 (;@1;) 17 (;@131;)
                                                                                                    block  ;; label = @149
                                                                                                    i32.const -291393559
                                                                                                    i64.extend_i32_u
                                                                                                    i32.const -335392683
                                                                                                    global.get 0
                                                                                                    i32.const -326480359
                                                                                                    i32.const -1561393854
                                                                                                    i32.eq
                                                                                                    block (result i32)  ;; label = @150
                                                                                                    block  ;; label = @151
                                                                                                    loop (result i64)  ;; label = @152
                                                                                                    i32.const -8794962
                                                                                                    i64.extend_i32_s
                                                                                                    i64.clz
                                                                                                    global.set 0
                                                                                                    br 75 (;@77;)
                                                                                                    nop
                                                                                                    i32.const 1159074251
                                                                                                    br 76 (;@76;)
                                                                                                    call 0
                                                                                                    i32.or
                                                                                                    i32.popcnt
                                                                                                    nop
                                                                                                    if  ;; label = @153
                                                                                                    call 0
                                                                                                    br_if 24 (;@129;)
                                                                                                    br 105 (;@48;)
                                                                                                    block (result i32)  ;; label = @154
                                                                                                    loop  ;; label = @155
                                                                                                    i32.const 716525817
                                                                                                    i64.const -5847292912118292113
                                                                                                    global.set 0
                                                                                                    i32.popcnt
                                                                                                    i32.const -784350331
                                                                                                    br_if 136 (;@19;)
                                                                                                    call_indirect (type 0)
                                                                                                    block  ;; label = @156
                                                                                                    call 2
                                                                                                    global.get 0
                                                                                                    i64.eqz
                                                                                                    call_indirect (type 1)
                                                                                                    call_indirect (type 0)
                                                                                                    i64.extend_i32_s
                                                                                                    i64.clz
                                                                                                    i32.const -324327349
                                                                                                    loop (result i32)  ;; label = @157
                                                                                                    loop  ;; label = @158
                                                                                                    call 0
                                                                                                    loop  ;; label = @159
                                                                                                    br 62 (;@97;)
                                                                                                    call 2
                                                                                                    i32.const -221963867
                                                                                                    br 52 (;@107;)
                                                                                                    global.get 0
                                                                                                    call 0
                                                                                                    br 10 (;@149;)
                                                                                                    i32.popcnt
                                                                                                    call 2
                                                                                                    br 23 (;@136;)
                                                                                                    br 22 (;@137;)
                                                                                                    br 129 (;@30;)
                                                                                                    call_indirect (type 1)
                                                                                                    i32.wrap_i64
                                                                                                    i32.ge_u
                                                                                                    br 41 (;@118;)
                                                                                                    i64.extend_i32_s
                                                                                                    drop
                                                                                                    loop  ;; label = @160
                                                                                                    i64.const 8580289452160923960
                                                                                                    i32.wrap_i64
                                                                                                    br 52 (;@108;)
                                                                                                    global.get 0
                                                                                                    block (result i64)  ;; label = @161
                                                                                                    br 157 (;@4;)
                                                                                                    loop (result i32)  ;; label = @162
                                                                                                    global.get 0
                                                                                                    call 2
                                                                                                    i64.const -8517578714026528550
                                                                                                    global.set 0
                                                                                                    br_table 1 (;@161;) 17 (;@145;) 24 (;@138;) 40 (;@122;) 64 (;@98;) 67 (;@95;) 68 (;@94;) 72 (;@90;) 76 (;@86;) 83 (;@79;) 92 (;@70;) 97 (;@65;) 99 (;@63;) 100 (;@62;) 103 (;@59;) 105 (;@57;) 110 (;@52;) 113 (;@49;) 127 (;@35;) 129 (;@33;) 131 (;@31;) 134 (;@28;) 135 (;@27;) 138 (;@24;) 144 (;@18;) 147 (;@15;) 99 (;@63;)
                                                                                                    i64.const -2604654916786065062
                                                                                                    i64.eqz
                                                                                                    i32.eqz
                                                                                                    i32.clz
                                                                                                    i64.const 54478305562729880
                                                                                                    call 0
                                                                                                    i64.extend_i32_s
                                                                                                    i64.lt_u
                                                                                                    call_indirect (type 1)
                                                                                                    i32.popcnt
                                                                                                    global.get 0
                                                                                                    global.get 0
                                                                                                    i64.div_u
                                                                                                    loop (result i64)  ;; label = @163
                                                                                                    i64.const 4635784937450160033
                                                                                                    i64.clz
                                                                                                    call 2
                                                                                                    call 0
                                                                                                    call 2
                                                                                                    i32.eq
                                                                                                    i32.gt_u
                                                                                                    i32.popcnt
                                                                                                    i32.popcnt
                                                                                                    i32.eqz
                                                                                                    i64.extend_i32_u
                                                                                                    i64.lt_u
                                                                                                    block  ;; label = @164
                                                                                                    br 58 (;@106;)
                                                                                                    global.get 0
                                                                                                    i64.clz
                                                                                                    loop (result i32)  ;; label = @165
                                                                                                    br 164 (;@1;)
                                                                                                    loop (result i64)  ;; label = @166
                                                                                                    call 0
                                                                                                    br 86 (;@80;)
                                                                                                    loop  ;; label = @167
                                                                                                    loop  ;; label = @168
                                                                                                    call 2
                                                                                                    block (result i64)  ;; label = @169
                                                                                                    nop
                                                                                                    global.get 0
                                                                                                    block (result i64)  ;; label = @170
                                                                                                    loop  ;; label = @171
                                                                                                    call 2
                                                                                                    i32.clz
                                                                                                    br 126 (;@45;)
                                                                                                    br 31 (;@140;)
                                                                                                    br 132 (;@39;)
                                                                                                    call 0
                                                                                                    i32.eqz
                                                                                                    call 0
                                                                                                    i32.gt_s
                                                                                                    i32.ctz
                                                                                                    call_indirect (type 0)
                                                                                                    call 0
                                                                                                    i32.gt_u
                                                                                                    i64.const 1219453263556768044
                                                                                                    block  ;; label = @172
                                                                                                    i32.const 816842871
                                                                                                    nop
                                                                                                    br 108 (;@64;)
                                                                                                    if (result i64)  ;; label = @173
                                                                                                    call 2
                                                                                                    call 0
                                                                                                    call_indirect (type 1)
                                                                                                    i64.extend_i32_u
                                                                                                    else
                                                                                                    i64.const 5132742186063840928
                                                                                                    i32.const 1308678928
                                                                                                    i32.clz
                                                                                                    br 137 (;@36;)
                                                                                                    br 99 (;@74;)
                                                                                                    loop (result i64)  ;; label = @174
                                                                                                    nop
                                                                                                    loop (result i64)  ;; label = @175
                                                                                                    br 34 (;@141;)
                                                                                                    block (result i32)  ;; label = @176
                                                                                                    i64.const 2993230472590522311
                                                                                                    br 21 (;@155;)
                                                                                                    call 0
                                                                                                    i32.ctz
                                                                                                    i32.clz
                                                                                                    i64.extend_i32_u
                                                                                                    i64.popcnt
                                                                                                    global.set 0
                                                                                                    nop
                                                                                                    i64.ctz
                                                                                                    i32.wrap_i64
                                                                                                    if  ;; label = @177
                                                                                                    call 2
                                                                                                    br_table 0 (;@177;) 2 (;@175;) 3 (;@174;) 5 (;@172;) 6 (;@171;) 9 (;@168;) 10 (;@167;) 11 (;@166;) 12 (;@165;) 13 (;@164;) 14 (;@163;) 15 (;@162;) 17 (;@160;) 18 (;@159;) 19 (;@158;) 20 (;@157;) 21 (;@156;) 22 (;@155;) 24 (;@153;) 25 (;@152;) 26 (;@151;) 28 (;@149;) 29 (;@148;) 30 (;@147;) 31 (;@146;) 33 (;@144;) 34 (;@143;) 35 (;@142;) 36 (;@141;) 37 (;@140;) 38 (;@139;) 40 (;@137;) 43 (;@134;) 44 (;@133;) 46 (;@131;) 48 (;@129;) 49 (;@128;) 50 (;@127;) 52 (;@125;) 53 (;@124;) 56 (;@121;) 57 (;@120;) 58 (;@119;) 59 (;@118;) 60 (;@117;) 61 (;@116;) 62 (;@115;) 63 (;@114;) 64 (;@113;) 65 (;@112;) 68 (;@109;) 71 (;@106;) 72 (;@105;) 74 (;@103;) 75 (;@102;) 76 (;@101;) 77 (;@100;) 78 (;@99;) 80 (;@97;) 81 (;@96;) 84 (;@93;) 86 (;@91;) 88 (;@89;) 92 (;@85;) 93 (;@84;) 94 (;@83;) 95 (;@82;) 96 (;@81;) 99 (;@78;) 100 (;@77;) 101 (;@76;) 103 (;@74;) 104 (;@73;) 105 (;@72;) 106 (;@71;) 108 (;@69;) 109 (;@68;) 110 (;@67;) 113 (;@64;) 116 (;@61;) 117 (;@60;) 119 (;@58;) 121 (;@56;) 122 (;@55;) 123 (;@54;) 124 (;@53;) 126 (;@51;) 127 (;@50;) 129 (;@48;) 130 (;@47;) 131 (;@46;) 133 (;@44;) 134 (;@43;) 135 (;@42;) 136 (;@41;) 137 (;@40;) 138 (;@39;) 139 (;@38;) 141 (;@36;) 143 (;@34;) 145 (;@32;) 147 (;@30;) 148 (;@29;) 152 (;@25;) 154 (;@23;) 155 (;@22;) 156 (;@21;) 157 (;@20;) 158 (;@19;) 160 (;@17;) 161 (;@16;) 163 (;@14;) 164 (;@13;) 167 (;@10;) 168 (;@9;) 169 (;@8;) 170 (;@7;) 172 (;@5;) 173 (;@4;) 174 (;@3;) 175 (;@2;) 176 (;@1;) 36 (;@141;)
                                                                                                    end
                                                                                                    i64.const 9195420444973135921
                                                                                                    nop
                                                                                                    br 92 (;@84;)
                                                                                                    i32.const -840884034
                                                                                                    call_indirect (type 1)
                                                                                                    i64.const 1617603021827461605
                                                                                                    global.set 0
                                                                                                    i32.const 1846715506
                                                                                                    loop (result i64)  ;; label = @177
                                                                                                    i32.const -1528949541
                                                                                                    if (result i32)  ;; label = @178
                                                                                                    br 63 (;@115;)
                                                                                                    call 2
                                                                                                    br_table 1 (;@177;) 3 (;@175;) 4 (;@174;) 6 (;@172;) 7 (;@171;) 10 (;@168;) 11 (;@167;) 12 (;@166;) 13 (;@165;) 14 (;@164;) 15 (;@163;) 16 (;@162;) 18 (;@160;) 19 (;@159;) 20 (;@158;) 21 (;@157;) 22 (;@156;) 23 (;@155;) 25 (;@153;) 26 (;@152;) 27 (;@151;) 29 (;@149;) 30 (;@148;) 31 (;@147;) 32 (;@146;) 34 (;@144;) 35 (;@143;) 36 (;@142;) 37 (;@141;) 38 (;@140;) 39 (;@139;) 41 (;@137;) 44 (;@134;) 45 (;@133;) 47 (;@131;) 49 (;@129;) 50 (;@128;) 51 (;@127;) 53 (;@125;) 54 (;@124;) 57 (;@121;) 58 (;@120;) 59 (;@119;) 60 (;@118;) 61 (;@117;) 62 (;@116;) 63 (;@115;) 64 (;@114;) 65 (;@113;) 66 (;@112;) 69 (;@109;) 72 (;@106;) 73 (;@105;) 75 (;@103;) 76 (;@102;) 77 (;@101;) 78 (;@100;) 79 (;@99;) 81 (;@97;) 82 (;@96;) 85 (;@93;) 87 (;@91;) 89 (;@89;) 93 (;@85;) 94 (;@84;) 95 (;@83;) 96 (;@82;) 97 (;@81;) 100 (;@78;) 101 (;@77;) 102 (;@76;) 104 (;@74;) 105 (;@73;) 106 (;@72;) 107 (;@71;) 109 (;@69;) 110 (;@68;) 111 (;@67;) 114 (;@64;) 117 (;@61;) 118 (;@60;) 120 (;@58;) 122 (;@56;) 123 (;@55;) 124 (;@54;) 125 (;@53;) 127 (;@51;) 128 (;@50;) 130 (;@48;) 131 (;@47;) 132 (;@46;) 134 (;@44;) 135 (;@43;) 136 (;@42;) 137 (;@41;) 138 (;@40;) 139 (;@39;) 140 (;@38;) 142 (;@36;) 144 (;@34;) 146 (;@32;) 148 (;@30;) 149 (;@29;) 153 (;@25;) 155 (;@23;) 156 (;@22;) 157 (;@21;) 158 (;@20;) 159 (;@19;) 161 (;@17;) 162 (;@16;) 164 (;@14;) 165 (;@13;) 168 (;@10;) 169 (;@9;) 170 (;@8;) 171 (;@7;) 173 (;@5;) 174 (;@4;) 175 (;@3;) 176 (;@2;) 177 (;@1;) 93 (;@85;)
                                                                                                    global.get 0
                                                                                                    i64.clz
                                                                                                    nop
                                                                                                    i64.popcnt
                                                                                                    block  ;; label = @179
                                                                                                    end
                                                                                                    global.get 0
                                                                                                    i64.div_u
                                                                                                    i64.ctz
                                                                                                    block (result i64)  ;; label = @179
                                                                                                    nop
                                                                                                    i64.const 3334298164758914036
                                                                                                    global.get 0
                                                                                                    i64.ctz
                                                                                                    i64.ne
                                                                                                    loop (result i64)  ;; label = @180
                                                                                                    loop (result i64)  ;; label = @181
                                                                                                    block (result i32)  ;; label = @182
                                                                                                    i64.const 8094009466449414573
                                                                                                    i32.const 603080971
                                                                                                    block (result i32)  ;; label = @183
                                                                                                    i64.const 85936150003276890
                                                                                                    i32.const 10470220
                                                                                                    block  ;; label = @184
                                                                                                    block  ;; label = @185
                                                                                                    global.get 0
                                                                                                    global.get 0
                                                                                                    i64.div_u
                                                                                                    i64.popcnt
                                                                                                    i64.ctz
                                                                                                    global.set 0
                                                                                                    block (result i64)  ;; label = @186
                                                                                                    block (result i64)  ;; label = @187
                                                                                                    call 0
                                                                                                    global.get 0
                                                                                                    i64.popcnt
                                                                                                    global.set 0
                                                                                                    call 0
                                                                                                    if  ;; label = @188
                                                                                                    loop  ;; label = @189
                                                                                                    end
                                                                                                    loop (result i32)  ;; label = @189
                                                                                                    global.get 0
                                                                                                    i64.eqz
                                                                                                    global.get 0
                                                                                                    i64.const 6527007563063460525
                                                                                                    i64.lt_u
                                                                                                    call 0
                                                                                                    i32.lt_s
                                                                                                    call 2
                                                                                                    i32.gt_s
                                                                                                    br 183 (;@6;)
                                                                                                    br_if 17 (;@172;)
                                                                                                    loop (result i32)  ;; label = @190
                                                                                                    call 0
                                                                                                    br_if 1 (;@189;)
                                                                                                    block (result i32)  ;; label = @191
                                                                                                    i64.const -8897267443530442501
                                                                                                    i64.clz
                                                                                                    i32.wrap_i64
                                                                                                    i32.ctz
                                                                                                    br_table 1 (;@190;) 2 (;@189;) 3 (;@188;) 6 (;@185;) 7 (;@184;) 10 (;@181;) 11 (;@180;) 14 (;@177;) 16 (;@175;) 17 (;@174;) 19 (;@172;) 20 (;@171;) 23 (;@168;) 24 (;@167;) 25 (;@166;) 26 (;@165;) 27 (;@164;) 28 (;@163;) 29 (;@162;) 31 (;@160;) 32 (;@159;) 33 (;@158;) 34 (;@157;) 35 (;@156;) 36 (;@155;) 38 (;@153;) 39 (;@152;) 40 (;@151;) 42 (;@149;) 43 (;@148;) 44 (;@147;) 45 (;@146;) 47 (;@144;) 48 (;@143;) 49 (;@142;) 50 (;@141;) 51 (;@140;) 52 (;@139;) 54 (;@137;) 57 (;@134;) 58 (;@133;) 60 (;@131;) 62 (;@129;) 63 (;@128;) 64 (;@127;) 66 (;@125;) 67 (;@124;) 70 (;@121;) 71 (;@120;) 72 (;@119;) 73 (;@118;) 74 (;@117;) 75 (;@116;) 76 (;@115;) 77 (;@114;) 78 (;@113;) 79 (;@112;) 82 (;@109;) 85 (;@106;) 86 (;@105;) 88 (;@103;) 89 (;@102;) 90 (;@101;) 91 (;@100;) 92 (;@99;) 94 (;@97;) 95 (;@96;) 98 (;@93;) 100 (;@91;) 102 (;@89;) 106 (;@85;) 107 (;@84;) 108 (;@83;) 109 (;@82;) 110 (;@81;) 113 (;@78;) 114 (;@77;) 115 (;@76;) 117 (;@74;) 118 (;@73;) 119 (;@72;) 120 (;@71;) 122 (;@69;) 123 (;@68;) 124 (;@67;) 127 (;@64;) 130 (;@61;) 131 (;@60;) 133 (;@58;) 135 (;@56;) 136 (;@55;) 137 (;@54;) 138 (;@53;) 140 (;@51;) 141 (;@50;) 143 (;@48;) 144 (;@47;) 145 (;@46;) 147 (;@44;) 148 (;@43;) 149 (;@42;) 150 (;@41;) 151 (;@40;) 152 (;@39;) 153 (;@38;) 155 (;@36;) 157 (;@34;) 159 (;@32;) 161 (;@30;) 162 (;@29;) 166 (;@25;) 168 (;@23;) 169 (;@22;) 170 (;@21;) 171 (;@20;) 172 (;@19;) 174 (;@17;) 175 (;@16;) 177 (;@14;) 178 (;@13;) 181 (;@10;) 182 (;@9;) 183 (;@8;) 184 (;@7;) 186 (;@5;) 187 (;@4;) 188 (;@3;) 189 (;@2;) 190 (;@1;) 118 (;@73;)
                                                                                                    i64.const -2941945300607282945
                                                                                                    loop (result i32)  ;; label = @192
                                                                                                    call 2
                                                                                                    br_table 0 (;@192;) 2 (;@190;) 3 (;@189;) 4 (;@188;) 7 (;@185;) 8 (;@184;) 11 (;@181;) 12 (;@180;) 15 (;@177;) 17 (;@175;) 18 (;@174;) 20 (;@172;) 21 (;@171;) 24 (;@168;) 25 (;@167;) 26 (;@166;) 27 (;@165;) 28 (;@164;) 29 (;@163;) 30 (;@162;) 32 (;@160;) 33 (;@159;) 34 (;@158;) 35 (;@157;) 36 (;@156;) 37 (;@155;) 39 (;@153;) 40 (;@152;) 41 (;@151;) 43 (;@149;) 44 (;@148;) 45 (;@147;) 46 (;@146;) 48 (;@144;) 49 (;@143;) 50 (;@142;) 51 (;@141;) 52 (;@140;) 53 (;@139;) 55 (;@137;) 58 (;@134;) 59 (;@133;) 61 (;@131;) 63 (;@129;) 64 (;@128;) 65 (;@127;) 67 (;@125;) 68 (;@124;) 71 (;@121;) 72 (;@120;) 73 (;@119;) 74 (;@118;) 75 (;@117;) 76 (;@116;) 77 (;@115;) 78 (;@114;) 79 (;@113;) 80 (;@112;) 83 (;@109;) 86 (;@106;) 87 (;@105;) 89 (;@103;) 90 (;@102;) 91 (;@101;) 92 (;@100;) 93 (;@99;) 95 (;@97;) 96 (;@96;) 99 (;@93;) 101 (;@91;) 103 (;@89;) 107 (;@85;) 108 (;@84;) 109 (;@83;) 110 (;@82;) 111 (;@81;) 114 (;@78;) 115 (;@77;) 116 (;@76;) 118 (;@74;) 119 (;@73;) 120 (;@72;) 121 (;@71;) 123 (;@69;) 124 (;@68;) 125 (;@67;) 128 (;@64;) 131 (;@61;) 132 (;@60;) 134 (;@58;) 136 (;@56;) 137 (;@55;) 138 (;@54;) 139 (;@53;) 141 (;@51;) 142 (;@50;) 144 (;@48;) 145 (;@47;) 146 (;@46;) 148 (;@44;) 149 (;@43;) 150 (;@42;) 151 (;@41;) 152 (;@40;) 153 (;@39;) 154 (;@38;) 156 (;@36;) 158 (;@34;) 160 (;@32;) 162 (;@30;) 163 (;@29;) 167 (;@25;) 169 (;@23;) 170 (;@22;) 171 (;@21;) 172 (;@20;) 173 (;@19;) 175 (;@17;) 176 (;@16;) 178 (;@14;) 179 (;@13;) 182 (;@10;) 183 (;@9;) 184 (;@8;) 185 (;@7;) 187 (;@5;) 188 (;@4;) 189 (;@3;) 190 (;@2;) 191 (;@1;) 20 (;@172;)
                                                                                                    i32.const 916854493
                                                                                                    nop
                                                                                                    i32.ctz
                                                                                                    call_indirect (type 1)
                                                                                                    block (result i64)  ;; label = @193
                                                                                                    call 0
                                                                                                    i32.const -486357444
                                                                                                    i32.const -540056246
                                                                                                    i64.extend_i32_u
                                                                                                    loop (result i64)  ;; label = @194
                                                                                                    loop  ;; label = @195
                                                                                                    i64.const -6167244660489032348
                                                                                                    i64.popcnt
                                                                                                    drop
                                                                                                    end
                                                                                                    i64.const -4592171926901776459
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    i64.const -7574822086135722677
                                                                                                    end
                                                                                                    drop
                                                                                                    i32.const 252510833
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    i32.const 278713708
                                                                                                    end
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const -1431454463662466447
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    i32.const -1023762847
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    i32.const -96516648
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const 1048416362946622382
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    i64.const -1497845704056257852
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    i32.const -616492011
                                                                                                    else
                                                                                                    i32.const -258362329
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const 3740872993245241859
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    i32.const -14617960
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const -4468638161601860477
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    i64.const 7283603635465185918
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    i64.const 7618009372808171404
                                                                                                    end
                                                                                                    drop
                                                                                                    i32.const 767422253
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const 7520767074882690510
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const -5066857930146919340
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i32.const 757066703
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i32.const 1508370986
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i64.const 4555042796673976474
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i32.const 285426102
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i64.const 3455883135486041402
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    i64.const -2426934911865853243
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    i64.const 4588402098433937481
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const 7058520971298742428
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    i32.const 1667580457
                                                                                                    else
                                                                                                    i32.const -423598166
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i64.const -695686487049226827
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i32.const -1390451749
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    i32.const -1183172971
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const 6102203375107857946
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const 1995427668932692468
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    i32.const 1766738983
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    i32.const -1037401918
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    i32.const 1359001174
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    i32.const 496360156
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i32.const -383058840
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i32.const -1737477730
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    i32.const 660586019
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    i64.const -4077430442690162583
                                                                                                    end
                                                                                                    drop
                                                                                                    else
                                                                                                    i64.const -6001896613684556044
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    i64.const -1212111234285967626
                                                                                                    else
                                                                                                    i64.const -5858999955396191908
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    i64.const 3572440583745632629
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i32.const -1022469465
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const 8469042846163128732
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    i64.const -1640474457909150512
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    i32.const 1560193535
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const -3399544657688374699
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const -7848524785021240773
                                                                                                    end
                                                                                                    drop
                                                                                                    i32.const -51444057
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const -2064602986723824774
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    i32.const 551946379
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    i32.const 359306383
                                                                                                    else
                                                                                                    i32.const -1458508057
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i32.const -1646350855
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    i64.const -6473407381900741195
                                                                                                    else
                                                                                                    i64.const 6496838111284856971
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const -8248361172582856858
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    i64.const 6186074608919868858
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    i64.const 4659707369504989347
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    i32.const 591059499
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    i64.const -5399620398122735419
                                                                                                    end
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    i64.const 7096705106337036586
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i64.const -7362125008664739210
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    i64.const -3936859717646240081
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    end
                                                                                                    i64.const 255593763948256658
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    end
                                                                                                    drop
                                                                                                    drop
                                                                                                    drop
                                                                                                    i64.const 3973340908899470412
                                                                                                  end
                                                                                                  drop
                                                                                                  drop
                                                                                                end
                                                                                                drop
                                                                                              end
                                                                                              i32.const 521775551
                                                                                            end
                                                                                            drop
                                                                                            i64.const -815023220016329797
                                                                                          end
                                                                                          drop
                                                                                          drop
                                                                                        end
                                                                                        drop
                                                                                      end
                                                                                      drop
                                                                                    end
                                                                                    drop
                                                                                    i64.const 1970676312813397401
                                                                                  end
                                                                                  drop
                                                                                end
                                                                                drop
                                                                                drop
                                                                                drop
                                                                                drop
                                                                                i32.const 198995985
                                                                              end
                                                                            end
                                                                            drop
                                                                          end
                                                                          i64.const -1083371949721585594
                                                                        end
                                                                        drop
                                                                        drop
                                                                        drop
                                                                        i64.const 7302505390607542275
                                                                      end
                                                                    end
                                                                    drop
                                                                    drop
                                                                  end
                                                                  i64.const -1408411843474484432
                                                                end
                                                                drop
                                                                i32.const -1360695386
                                                              end
                                                              drop
                                                              drop
                                                            end
                                                            drop
                                                            i64.const -6693275584849345317
                                                          end
                                                          drop
                                                          drop
                                                          i64.const -7265534157685816713
                                                        end
                                                        drop
                                                      end
                                                      drop
                                                      drop
                                                      i32.const 1193741151
                                                    end
                                                    drop
                                                    i64.const 6623052812507713401
                                                  end
                                                  drop
                                                end
                                                drop
                                              end
                                              drop
                                              drop
                                            end
                                            drop
                                            drop
                                            drop
                                          end
                                          i64.const 2715926325225445537
                                        end
                                      end
                                      drop
                                      drop
                                    end
                                    i32.const 251288293
                                  end
                                  drop
                                  drop
                                  drop
                                  i64.const 6142179580073759807
                                end
                                drop
                              end
                              i32.const 1870187098
                            end
                          end
                          drop
                          drop
                          i32.const -1874358746
                        end
                        drop
                      end
                      drop
                    end
                  end
                  drop
                  drop
                  i32.const 894904560
                end
              end
              drop
              drop
              drop
              drop
            end
            drop
            i64.const 7762663914901118578
          end
          drop
          i32.const -1519705312
        end
        drop
      end
      i32.const -776496406
    end
  )
  (func (;3;) (type 3)
    call 0
    drop
  )
  (table (;0;) 113 676038 funcref)
  (global (;0;) (mut i64) i64.const -2540136783143973583)
  (export "init" (func 3))
  (elem (;0;) (i32.const 30) func 1 0)
  (elem (;1;) (i32.const 20) func)
)
