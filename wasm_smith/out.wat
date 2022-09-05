(module
  (type (;0;) (func))
  (type (;1;) (func))
  (import "env" "memory" (memory (;0;) 512))
  (func (;0;) (type 0)
    (local i64 i64 i32)
    nop
    loop (result i64)  ;; label = @1
      loop (result i32)  ;; label = @2
        br 2 (;@0;)
        local.get 1
        call 0
        local.get 1
        i64.lt_s
        i32.const 385572733
        i32.lt_s
        loop  ;; label = @3
        end
        local.tee 2
        local.set 2
        i64.const -6898494673991378085
        local.tee 0
        br 1 (;@1;)
        local.get 2
        call_indirect (type 0)
        i32.wrap_i64
        block (result i32)  ;; label = @3
          loop  ;; label = @4
            call 0
            block  ;; label = @5
              return
              local.get 0
              local.set 1
              call 1
              loop  ;; label = @6
                i32.const -1612992908
                br_if 6 (;@0;)
                block (result i32)  ;; label = @7
                  call 0
                  i32.const 183004234
                  i64.extend_i32_s
                  block (result i64)  ;; label = @8
                    i64.const -5374526042658413602
                    i32.const 1816446366
                    i64.const -4014996016950399617
                    i64.const -4914276774233513735
                    i64.lt_s
                    i32.ctz
                    br_if 4 (;@4;)
                    br_table 2 (;@6;) 3 (;@5;) 4 (;@4;) 6 (;@2;) 7 (;@1;) 8 (;@0;) 2 (;@6;)
                    i64.const 7175442749896682753
                    i64.ctz
                    i64.add
                    loop  ;; label = @9
                      call 1
                      call 0
                      block  ;; label = @10
                      end
                      loop (result i32)  ;; label = @10
                        local.get 2
                        i32.const -377542873
                        i32.eq
                        if  ;; label = @11
                          block (result i32)  ;; label = @12
                            i64.const 1723829727935223421
                            i64.eqz
                            call_indirect (type 0)
                            local.get 2
                            i64.const 5630707657256652259
                            local.tee 1
                            i64.const -1042508136238088544
                            call 1
                            i32.const -422348834
                            i32.const 1012899142
                            loop (result i32)  ;; label = @13
                              call 1
                              loop  ;; label = @14
                                block (result i32)  ;; label = @15
                                  br 4 (;@11;)
                                  local.get 1
                                  i32.const -1733484615
                                  i64.extend_i32_s
                                  call 0
                                  i64.and
                                  i32.const 384258665
                                  local.tee 2
                                  br 13 (;@2;)
                                  local.tee 2
                                  local.set 2
                                  block (result i64)  ;; label = @16
                                    nop
                                    loop (result i32)  ;; label = @17
                                      i64.const -2751316476499265695
                                      local.tee 1
                                      br 9 (;@8;)
                                      local.get 0
                                      i32.wrap_i64
                                      br_table 0 (;@17;) 3 (;@14;) 4 (;@13;) 6 (;@11;) 7 (;@10;) 8 (;@9;) 11 (;@6;) 12 (;@5;) 13 (;@4;) 15 (;@2;) 16 (;@1;) 17 (;@0;) 16 (;@1;)
                                      loop  ;; label = @18
                                        call 1
                                        br 13 (;@5;)
                                      end
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 0
                                          local.get 1
                                          i64.eq
                                          drop
                                        end
                                      end
                                      i32.const 899504614
                                    end
                                    drop
                                    i64.const 2225140939253468656
                                  end
                                  drop
                                  drop
                                  i32.const 1985329776
                                end
                                drop
                              end
                              i32.const 1009632720
                            end
                            drop
                            drop
                            drop
                            drop
                            drop
                          end
                          drop
                        end
                        i32.const 1524843773
                      end
                      drop
                    end
                  end
                  drop
                  drop
                  i32.const 639383007
                end
                drop
              end
            end
          end
          i32.const 1102012165
        end
        drop
      end
      drop
      i64.const 8393373385752609732
    end
    drop
  )
  (func (;1;) (type 0)
    (local i32 i64 i32)
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i64.const 2780911618654848190
          i64.clz
          i64.ctz
          i64.popcnt
          i64.ctz
          i64.clz
          br 2 (;@1;)
          i64.eqz
          br_if 3 (;@0;)
        end
        br 1 (;@1;)
        i32.const -2131366606
        i64.const 243052727297500340
        loop (result i32)  ;; label = @3
          i32.const 282163864
          i32.const 2058705716
          br_table 0 (;@3;) 1 (;@2;) 2 (;@1;) 3 (;@0;) 2 (;@1;)
          loop (result i32)  ;; label = @4
            i64.const 4997019232241198687
            local.set 1
            loop  ;; label = @5
              local.get 2
              call 1
              br 4 (;@1;)
              br 0 (;@5;)
              if (result i32)  ;; label = @6
                return
                i64.const 7429273918084618269
                i64.clz
                i32.wrap_i64
                i32.popcnt
                i64.extend_i32_u
                i32.const -573908580
                br 0 (;@6;)
                i32.const -2147352821
                call 0
                i64.extend_i32_u
                i64.gt_s
                local.get 2
                call_indirect (type 0)
                i64.extend_i32_s
                local.tee 1
                i64.popcnt
                local.set 1
                loop (result i32)  ;; label = @7
                  call 1
                  i32.const 1917568142
                  br 6 (;@1;)
                  i64.const -2095266525459998536
                  local.get 0
                  br_table 0 (;@7;) 2 (;@5;) 3 (;@4;) 4 (;@3;) 5 (;@2;) 6 (;@1;) 7 (;@0;) 7 (;@0;)
                  loop  ;; label = @8
                    call 0
                    i64.const -4927669744213503674
                    block  ;; label = @9
                    end
                    local.tee 1
                    i64.const 7021063489879923930
                    i64.ge_u
                    call 1
                    i32.const -102831033
                    i32.gt_u
                    block  ;; label = @9
                      call 0
                      call 1
                      i64.const 2949667045460273285
                      i64.popcnt
                      i64.ctz
                      call 0
                      i64.ctz
                      local.tee 1
                      i64.clz
                      call 0
                      i64.popcnt
                      i64.clz
                      i64.popcnt
                      local.tee 1
                      call 0
                      local.tee 1
                      block  ;; label = @10
                        local.get 2
                        i64.extend_i32_s
                        local.set 1
                        i64.const 5298096173553299153
                        i64.const 330565123285892651
                        i64.gt_u
                        call_indirect (type 0)
                        local.get 0
                        if  ;; label = @11
                          loop (result i32)  ;; label = @12
                            loop  ;; label = @13
                              block (result i32)  ;; label = @14
                                local.get 2
                                i32.popcnt
                                i64.extend_i32_u
                                i64.popcnt
                                block (result i64)  ;; label = @15
                                  call 0
                                  loop (result i64)  ;; label = @16
                                    i32.const 675500352
                                    call 0
                                    i32.ctz
                                    i32.const 1523617951
                                    return
                                    block  ;; label = @17
                                      call 0
                                      i64.const 1245312157111233482
                                      loop (result i32)  ;; label = @18
                                        br 11 (;@7;)
                                        block (result i64)  ;; label = @19
                                          block  ;; label = @20
                                            loop (result i64)  ;; label = @21
                                              call 0
                                              i32.const -1629875761
                                              br 9 (;@12;)
                                              local.set 2
                                              local.get 2
                                              i32.popcnt
                                              br_table 0 (;@21;) 1 (;@20;) 3 (;@18;) 4 (;@17;) 5 (;@16;) 8 (;@13;) 9 (;@12;) 10 (;@11;) 11 (;@10;) 12 (;@9;) 13 (;@8;) 14 (;@7;) 16 (;@5;) 17 (;@4;) 18 (;@3;) 19 (;@2;) 20 (;@1;) 21 (;@0;) 13 (;@8;)
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  loop  ;; label = @24
                                                    local.get 1
                                                    local.set 1
                                                  end
                                                  i32.const -296584971
                                                  i32.clz
                                                  local.set 0
                                                  loop  ;; label = @24
                                                    call 0
                                                  end
                                                  block (result i32)  ;; label = @24
                                                    nop
                                                    br 24 (;@0;)
                                                    block  ;; label = @25
                                                      i64.const 7412217367935169729
                                                      br 22 (;@3;)
                                                      i64.const -3048618121858891196
                                                      i64.const 1758075571026503916
                                                      i64.ge_u
                                                      br_table 0 (;@25;) 2 (;@23;) 3 (;@22;) 4 (;@21;) 5 (;@20;) 7 (;@18;) 8 (;@17;) 9 (;@16;) 12 (;@13;) 13 (;@12;) 14 (;@11;) 15 (;@10;) 16 (;@9;) 17 (;@8;) 18 (;@7;) 20 (;@5;) 21 (;@4;) 22 (;@3;) 23 (;@2;) 24 (;@1;) 25 (;@0;) 13 (;@12;)
                                                      local.get 2
                                                      local.tee 0
                                                      i32.eqz
                                                      br_if 20 (;@5;)
                                                      i32.const -488501340
                                                      i32.clz
                                                      br 13 (;@12;)
                                                      if  ;; label = @26
                                                        br 18 (;@8;)
                                                        block  ;; label = @27
                                                          i32.const -1316144094
                                                          i64.const 3368901061687931112
                                                          i64.popcnt
                                                          i64.const -5518747873067058605
                                                          i64.mul
                                                          return
                                                          i64.clz
                                                          i32.const -2025076141
                                                          br 16 (;@11;)
                                                          i32.ctz
                                                          if (result i32)  ;; label = @28
                                                            br 25 (;@3;)
                                                            loop  ;; label = @29
                                                              call 1
                                                              call 1
                                                              nop
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                end
                                                                return
                                                                loop (result i64)  ;; label = @31
                                                                  br 20 (;@11;)
                                                                  br 29 (;@2;)
                                                                  br 5 (;@26;)
                                                                  i32.const 825068039
                                                                  i64.extend_i32_u
                                                                  i64.popcnt
                                                                  i32.wrap_i64
                                                                  if  ;; label = @32
                                                                    loop  ;; label = @33
                                                                      call 0
                                                                      block (result i32)  ;; label = @34
                                                                        local.get 2
                                                                        br_table 1 (;@33;) 2 (;@32;) 3 (;@31;) 4 (;@30;) 5 (;@29;) 7 (;@27;) 8 (;@26;) 9 (;@25;) 11 (;@23;) 12 (;@22;) 13 (;@21;) 14 (;@20;) 16 (;@18;) 17 (;@17;) 18 (;@16;) 21 (;@13;) 22 (;@12;) 23 (;@11;) 24 (;@10;) 25 (;@9;) 26 (;@8;) 27 (;@7;) 29 (;@5;) 30 (;@4;) 31 (;@3;) 32 (;@2;) 33 (;@1;) 34 (;@0;) 21 (;@13;)
                                                                        i32.const -1200870030
                                                                        i32.eqz
                                                                        i32.const -494100767
                                                                        i32.gt_u
                                                                        br 16 (;@18;)
                                                                        call_indirect (type 0)
                                                                        i64.const 4580975381237691285
                                                                        i64.clz
                                                                        block (result i32)  ;; label = @35
                                                                          call 1
                                                                          i64.const 9003874467933875607
                                                                          i32.const -1020912935
                                                                          i32.eqz
                                                                          br_if 3 (;@32;)
                                                                          block  ;; label = @36
                                                                            local.get 2
                                                                            br_if 11 (;@25;)
                                                                            br 5 (;@31;)
                                                                          end
                                                                          local.get 0
                                                                          i64.extend_i32_s
                                                                          i64.mul
                                                                          i32.const -687860124
                                                                          i32.eqz
                                                                          local.tee 2
                                                                          br 14 (;@21;)
                                                                          i64.extend_i32_s
                                                                          i64.rem_s
                                                                          call 0
                                                                          i64.popcnt
                                                                          i32.const -1021768938
                                                                          br 32 (;@3;)
                                                                          local.tee 0
                                                                          call 0
                                                                          br 1 (;@34;)
                                                                          call 0
                                                                          br 23 (;@12;)
                                                                          i64.const -7586245767686537350
                                                                          local.tee 1
                                                                          i64.ge_u
                                                                          local.get 0
                                                                          i32.const 1697393467
                                                                          i32.gt_u
                                                                          block  ;; label = @36
                                                                            loop  ;; label = @37
                                                                              nop
                                                                              block  ;; label = @38
                                                                                i32.const 145463027
                                                                                i32.popcnt
                                                                                br_table 0 (;@38;) 1 (;@37;) 2 (;@36;) 5 (;@33;) 6 (;@32;) 7 (;@31;) 8 (;@30;) 9 (;@29;) 11 (;@27;) 12 (;@26;) 13 (;@25;) 15 (;@23;) 16 (;@22;) 17 (;@21;) 18 (;@20;) 20 (;@18;) 21 (;@17;) 22 (;@16;) 25 (;@13;) 26 (;@12;) 27 (;@11;) 28 (;@10;) 29 (;@9;) 30 (;@8;) 31 (;@7;) 33 (;@5;) 34 (;@4;) 35 (;@3;) 36 (;@2;) 37 (;@1;) 38 (;@0;) 28 (;@10;)
                                                                                loop  ;; label = @39
                                                                                  i32.const -1459402210
                                                                                  br 5 (;@34;)
                                                                                  call 1
                                                                                  call 1
                                                                                  block (result i32)  ;; label = @40
                                                                                    call 0
                                                                                    i32.const -627487355
                                                                                    local.set 0
                                                                                    br 18 (;@22;)
                                                                                    i64.const -698593853265780994
                                                                                    i32.const -921897515
                                                                                    i64.extend_i32_s
                                                                                    drop
                                                                                    drop
                                                                                    i32.const 739662480
                                                                                  end
                                                                                  drop
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                          drop
                                                                        end
                                                                        drop
                                                                        drop
                                                                        i32.const -1986150979
                                                                      end
                                                                      drop
                                                                    end
                                                                  end
                                                                  i64.const -8505971245078572781
                                                                end
                                                                drop
                                                              end
                                                            end
                                                            i32.const -1393789209
                                                          else
                                                            i32.const -824042869
                                                          end
                                                          drop
                                                          drop
                                                          drop
                                                        end
                                                      end
                                                      drop
                                                    end
                                                    i32.const -733060074
                                                  end
                                                  drop
                                                end
                                              end
                                              i64.const 7253601561029032875
                                            end
                                            drop
                                          end
                                          i64.const 529382815063848700
                                        end
                                        drop
                                        i32.const -1783296248
                                      end
                                      drop
                                      drop
                                    end
                                    drop
                                    drop
                                    i64.const -8000699091340752479
                                  end
                                end
                                drop
                                drop
                                i32.const -2111635554
                              end
                              drop
                            end
                            i32.const 485835705
                          end
                          drop
                        end
                      end
                      drop
                    end
                    drop
                  end
                  drop
                end
              else
                i32.const 832542238
              end
              drop
            end
            i32.const -477486168
          end
          drop
        end
        drop
        drop
        drop
      end
    end
  )
  (func (;2;) (type 1)
    call 0
  )
  (table (;0;) 0 344478 funcref)
  (export "init" (func 2))
)
