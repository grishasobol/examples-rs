(module $wasmv1.wasm
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func))
  (type (;13;) (func (param i32) (result i32)))
  (func $_ZN4core5slice4sort6shared5pivot11median3_rec17hfbce0c4ff6282745E (type 2) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 3
      i32.const 8
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      local.get 3
      i32.const 3
      i32.shr_u
      local.tee 3
      i32.const 2
      i32.shl
      local.tee 4
      i32.add
      local.get 0
      local.get 3
      i32.const 7
      i32.mul
      local.tee 5
      i32.add
      local.get 3
      call $_ZN4core5slice4sort6shared5pivot11median3_rec17hfbce0c4ff6282745E
      local.set 0
      local.get 1
      local.get 1
      local.get 4
      i32.add
      local.get 1
      local.get 5
      i32.add
      local.get 3
      call $_ZN4core5slice4sort6shared5pivot11median3_rec17hfbce0c4ff6282745E
      local.set 1
      local.get 2
      local.get 2
      local.get 4
      i32.add
      local.get 2
      local.get 5
      i32.add
      local.get 3
      call $_ZN4core5slice4sort6shared5pivot11median3_rec17hfbce0c4ff6282745E
      local.set 2
    end
    local.get 0
    local.get 2
    local.get 1
    local.get 0
    i32.load8_s
    local.tee 3
    local.get 1
    i32.load8_s
    local.tee 4
    i32.lt_s
    local.tee 5
    local.get 4
    local.get 2
    i32.load8_s
    local.tee 6
    i32.lt_s
    i32.xor
    select
    local.get 5
    local.get 3
    local.get 6
    i32.lt_s
    i32.xor
    select)
  (func $_ZN4core5slice4sort6stable14driftsort_main17hc866db1d097ff0bfE (type 3) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 4096
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 1
          i32.shr_u
          local.tee 4
          local.get 1
          i32.const 8000000
          local.get 1
          i32.const 8000000
          i32.lt_u
          select
          local.tee 5
          local.get 4
          local.get 5
          i32.gt_u
          select
          local.tee 4
          i32.const 4097
          i32.lt_u
          br_if 0 (;@3;)
          i32.const 0
          i32.load8_u offset=1050633
          drop
          i32.const 1049604
          i32.const 1
          local.get 4
          i32.const 48
          local.get 4
          i32.const 48
          i32.gt_u
          select
          local.tee 4
          call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h4b28a93b29fb0e17E
          local.tee 5
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          local.get 5
          local.get 4
          local.get 1
          i32.const 65
          i32.lt_u
          local.get 2
          call $_ZN4core5slice4sort6stable5drift4sort17h4184895756a0bcbeE
          i32.const 1049604
          local.get 5
          i32.const 1
          local.get 4
          call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h130c0bb53dd407b5E
          br 1 (;@2;)
        end
        local.get 0
        local.get 1
        local.get 3
        i32.const 4096
        local.get 1
        i32.const 65
        i32.lt_u
        local.get 2
        call $_ZN4core5slice4sort6stable5drift4sort17h4184895756a0bcbeE
      end
      local.get 3
      i32.const 4096
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 1
    local.get 4
    i32.const 1048868
    call $_ZN5alloc7raw_vec12handle_error17ha5bad542b5a52512E
    unreachable)
  (func $_ZN4core5slice4sort6stable9quicksort9quicksort17h3d91cec3e00dc633E (type 4) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 33
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        local.get 6
        call $_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd93de7e6f7436d3fE
        br 1 (;@1;)
      end
      local.get 2
      i32.const -1
      i32.add
      local.set 8
      loop  ;; label = @2
        local.get 0
        i32.const -1
        i32.add
        local.set 9
        loop  ;; label = @3
          block  ;; label = @4
            local.get 4
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            local.get 2
            local.get 3
            i32.const 1
            local.get 6
            call $_ZN4core5slice4sort6stable5drift4sort17h4184895756a0bcbeE
            br 3 (;@1;)
          end
          local.get 0
          local.get 1
          i32.const 3
          i32.shr_u
          local.tee 10
          i32.const 7
          i32.mul
          i32.add
          local.set 11
          local.get 0
          local.get 10
          i32.const 2
          i32.shl
          i32.add
          local.set 12
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 64
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              local.get 12
              local.get 11
              local.get 10
              call $_ZN4core5slice4sort6shared5pivot11median3_rec17hfbce0c4ff6282745E
              local.set 13
              br 1 (;@4;)
            end
            local.get 0
            local.get 11
            local.get 12
            local.get 0
            i32.load8_s
            local.tee 10
            local.get 12
            i32.load8_s
            local.tee 14
            i32.lt_s
            local.tee 15
            local.get 14
            local.get 11
            i32.load8_s
            local.tee 16
            i32.lt_s
            i32.xor
            select
            local.get 15
            local.get 10
            local.get 16
            i32.lt_s
            i32.xor
            select
            local.set 13
          end
          local.get 4
          i32.const -1
          i32.add
          local.set 4
          local.get 7
          local.get 13
          i32.load8_s
          local.tee 10
          i32.store8 offset=7
          local.get 13
          local.get 0
          i32.sub
          local.set 17
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 5
                    i32.load8_s
                    local.get 10
                    i32.ge_s
                    br_if 1 (;@7;)
                  end
                  local.get 1
                  local.get 3
                  i32.gt_u
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 12
                  local.get 0
                  local.set 11
                  local.get 2
                  local.get 1
                  i32.add
                  local.tee 18
                  local.set 10
                  local.get 17
                  local.set 19
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 11
                      local.get 0
                      i32.const 0
                      local.get 19
                      i32.const -3
                      i32.add
                      local.tee 14
                      local.get 14
                      local.get 19
                      i32.gt_u
                      select
                      i32.add
                      local.tee 20
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 13
                      i32.load8_s
                      local.set 14
                      loop  ;; label = @10
                        local.get 2
                        local.get 10
                        i32.const -1
                        i32.add
                        local.get 11
                        i32.load8_s
                        local.tee 15
                        local.get 14
                        i32.lt_s
                        local.tee 16
                        select
                        local.get 12
                        i32.add
                        local.get 15
                        i32.store8
                        local.get 2
                        local.get 10
                        i32.const -2
                        i32.add
                        local.get 11
                        i32.load8_s offset=1
                        local.tee 15
                        local.get 14
                        i32.lt_s
                        local.tee 21
                        select
                        local.get 12
                        local.get 16
                        i32.add
                        local.tee 12
                        i32.add
                        local.get 15
                        i32.store8
                        local.get 2
                        local.get 10
                        i32.const -3
                        i32.add
                        local.get 11
                        i32.load8_s offset=2
                        local.tee 15
                        local.get 14
                        i32.lt_s
                        local.tee 16
                        select
                        local.get 12
                        local.get 21
                        i32.add
                        local.tee 12
                        i32.add
                        local.get 15
                        i32.store8
                        local.get 2
                        local.get 10
                        i32.const -4
                        i32.add
                        local.tee 10
                        local.get 11
                        i32.load8_s offset=3
                        local.tee 15
                        local.get 14
                        i32.lt_s
                        local.tee 21
                        select
                        local.get 12
                        local.get 16
                        i32.add
                        local.tee 12
                        i32.add
                        local.get 15
                        i32.store8
                        local.get 12
                        local.get 21
                        i32.add
                        local.set 12
                        local.get 11
                        i32.const 4
                        i32.add
                        local.tee 11
                        local.get 20
                        i32.lt_u
                        br_if 0 (;@10;)
                      end
                    end
                    block  ;; label = @9
                      local.get 11
                      local.get 0
                      local.get 19
                      i32.add
                      local.tee 14
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 19
                      local.get 11
                      i32.sub
                      local.set 16
                      local.get 11
                      local.get 0
                      i32.add
                      local.set 21
                      local.get 13
                      i32.load8_s
                      local.set 15
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 14
                          local.get 11
                          i32.sub
                          i32.const 1
                          i32.and
                          br_if 0 (;@11;)
                          local.get 11
                          local.set 14
                          br 1 (;@10;)
                        end
                        local.get 2
                        local.get 10
                        i32.const -1
                        i32.add
                        local.tee 10
                        local.get 11
                        i32.load8_s
                        local.tee 14
                        local.get 15
                        i32.lt_s
                        local.tee 20
                        select
                        local.get 12
                        i32.add
                        local.get 14
                        i32.store8
                        local.get 11
                        i32.const 1
                        i32.add
                        local.set 14
                        local.get 12
                        local.get 20
                        i32.add
                        local.set 12
                      end
                      local.get 21
                      local.get 16
                      i32.add
                      local.set 20
                      block  ;; label = @10
                        local.get 9
                        local.get 19
                        i32.add
                        local.get 11
                        i32.eq
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          local.get 2
                          local.get 10
                          i32.const -1
                          i32.add
                          local.get 14
                          i32.load8_s
                          local.tee 11
                          local.get 15
                          i32.lt_s
                          local.tee 16
                          select
                          local.get 12
                          i32.add
                          local.get 11
                          i32.store8
                          local.get 2
                          local.get 10
                          i32.const -2
                          i32.add
                          local.tee 10
                          local.get 14
                          i32.load8_s offset=1
                          local.tee 11
                          local.get 15
                          i32.lt_s
                          local.tee 21
                          select
                          local.get 12
                          local.get 16
                          i32.add
                          local.tee 12
                          i32.add
                          local.get 11
                          i32.store8
                          local.get 12
                          local.get 21
                          i32.add
                          local.set 12
                          local.get 14
                          i32.const 2
                          i32.add
                          local.tee 14
                          local.get 20
                          i32.ne
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 20
                      local.set 11
                    end
                    block  ;; label = @9
                      local.get 19
                      local.get 1
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 10
                      i32.const -1
                      i32.add
                      local.tee 10
                      local.get 12
                      i32.add
                      local.get 11
                      i32.load8_u
                      i32.store8
                      local.get 11
                      i32.const 1
                      i32.add
                      local.set 11
                      local.get 1
                      local.set 19
                      br 1 (;@8;)
                    end
                  end
                  local.get 0
                  local.get 2
                  local.get 12
                  call $memcpy
                  local.set 19
                  local.get 1
                  local.get 12
                  i32.sub
                  local.set 20
                  block  ;; label = @8
                    local.get 1
                    local.get 12
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 20
                    i32.const 3
                    i32.and
                    local.set 15
                    i32.const 0
                    local.set 10
                    block  ;; label = @9
                      local.get 12
                      local.get 1
                      i32.sub
                      i32.const -4
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 19
                      local.get 12
                      i32.add
                      local.set 16
                      local.get 8
                      local.get 1
                      i32.add
                      local.set 14
                      local.get 20
                      i32.const -4
                      i32.and
                      local.set 21
                      i32.const 0
                      local.set 10
                      loop  ;; label = @10
                        local.get 16
                        local.get 10
                        i32.add
                        local.tee 11
                        local.get 14
                        i32.load8_u
                        i32.store8
                        local.get 11
                        i32.const 1
                        i32.add
                        local.get 18
                        local.get 10
                        i32.const -2
                        i32.xor
                        i32.add
                        i32.load8_u
                        i32.store8
                        local.get 11
                        i32.const 2
                        i32.add
                        local.get 18
                        local.get 10
                        i32.const -3
                        i32.xor
                        i32.add
                        i32.load8_u
                        i32.store8
                        local.get 11
                        i32.const 3
                        i32.add
                        local.get 18
                        local.get 10
                        i32.const -4
                        i32.xor
                        i32.add
                        i32.load8_u
                        i32.store8
                        local.get 14
                        i32.const -4
                        i32.add
                        local.set 14
                        local.get 21
                        local.get 10
                        i32.const 4
                        i32.add
                        local.tee 10
                        i32.ne
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 15
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 8
                    local.get 1
                    local.get 10
                    i32.sub
                    i32.add
                    local.set 11
                    local.get 19
                    local.get 10
                    i32.add
                    local.get 12
                    i32.add
                    local.set 10
                    loop  ;; label = @9
                      local.get 10
                      local.get 11
                      i32.load8_u
                      i32.store8
                      local.get 11
                      i32.const -1
                      i32.add
                      local.set 11
                      local.get 10
                      i32.const 1
                      i32.add
                      local.set 10
                      local.get 15
                      i32.const -1
                      i32.add
                      local.tee 15
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 12
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 12
                  local.get 1
                  i32.le_u
                  br_if 2 (;@5;)
                  local.get 7
                  i32.const 0
                  i32.store offset=24
                  local.get 7
                  i32.const 1
                  i32.store offset=12
                  local.get 7
                  i32.const 1048716
                  i32.store offset=8
                  local.get 7
                  i64.const 4
                  i64.store offset=16 align=4
                  local.get 7
                  i32.const 8
                  i32.add
                  i32.const 1048724
                  call $_ZN4core9panicking9panic_fmt17h5d2b6b424c06aa76E
                  unreachable
                end
                local.get 1
                local.get 3
                i32.gt_u
                br_if 0 (;@6;)
                i32.const 0
                local.set 14
                local.get 0
                local.set 11
                local.get 2
                local.get 1
                i32.add
                local.tee 19
                local.set 10
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 11
                    local.get 0
                    i32.const 0
                    local.get 17
                    i32.const -3
                    i32.add
                    local.tee 12
                    local.get 12
                    local.get 17
                    i32.gt_u
                    select
                    i32.add
                    local.tee 20
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 13
                    i32.load8_s
                    local.set 12
                    loop  ;; label = @9
                      local.get 2
                      local.get 10
                      i32.const -1
                      i32.add
                      local.get 12
                      local.get 11
                      i32.load8_s
                      local.tee 15
                      i32.ge_s
                      local.tee 16
                      select
                      local.get 14
                      i32.add
                      local.get 15
                      i32.store8
                      local.get 2
                      local.get 10
                      i32.const -2
                      i32.add
                      local.get 12
                      local.get 11
                      i32.load8_s offset=1
                      local.tee 15
                      i32.ge_s
                      local.tee 21
                      select
                      local.get 14
                      local.get 16
                      i32.add
                      local.tee 14
                      i32.add
                      local.get 15
                      i32.store8
                      local.get 2
                      local.get 10
                      i32.const -3
                      i32.add
                      local.get 12
                      local.get 11
                      i32.load8_s offset=2
                      local.tee 15
                      i32.ge_s
                      local.tee 16
                      select
                      local.get 14
                      local.get 21
                      i32.add
                      local.tee 14
                      i32.add
                      local.get 15
                      i32.store8
                      local.get 2
                      local.get 10
                      i32.const -4
                      i32.add
                      local.tee 10
                      local.get 12
                      local.get 11
                      i32.load8_s offset=3
                      local.tee 15
                      i32.ge_s
                      local.tee 21
                      select
                      local.get 14
                      local.get 16
                      i32.add
                      local.tee 14
                      i32.add
                      local.get 15
                      i32.store8
                      local.get 14
                      local.get 21
                      i32.add
                      local.set 14
                      local.get 11
                      i32.const 4
                      i32.add
                      local.tee 11
                      local.get 20
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                  end
                  block  ;; label = @8
                    local.get 11
                    local.get 0
                    local.get 17
                    i32.add
                    local.tee 12
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 17
                    local.get 11
                    i32.sub
                    local.set 16
                    local.get 11
                    local.get 0
                    i32.add
                    local.set 21
                    local.get 13
                    i32.load8_s
                    local.set 15
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 12
                        local.get 11
                        i32.sub
                        i32.const 1
                        i32.and
                        br_if 0 (;@10;)
                        local.get 11
                        local.set 12
                        br 1 (;@9;)
                      end
                      local.get 2
                      local.get 10
                      i32.const -1
                      i32.add
                      local.tee 10
                      local.get 15
                      local.get 11
                      i32.load8_s
                      local.tee 12
                      i32.ge_s
                      local.tee 20
                      select
                      local.get 14
                      i32.add
                      local.get 12
                      i32.store8
                      local.get 11
                      i32.const 1
                      i32.add
                      local.set 12
                      local.get 14
                      local.get 20
                      i32.add
                      local.set 14
                    end
                    local.get 21
                    local.get 16
                    i32.add
                    local.set 20
                    block  ;; label = @9
                      local.get 9
                      local.get 17
                      i32.add
                      local.get 11
                      i32.eq
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        local.get 2
                        local.get 10
                        i32.const -1
                        i32.add
                        local.get 15
                        local.get 12
                        i32.load8_s
                        local.tee 11
                        i32.ge_s
                        local.tee 16
                        select
                        local.get 14
                        i32.add
                        local.get 11
                        i32.store8
                        local.get 2
                        local.get 10
                        i32.const -2
                        i32.add
                        local.tee 10
                        local.get 15
                        local.get 12
                        i32.load8_s offset=1
                        local.tee 11
                        i32.ge_s
                        local.tee 21
                        select
                        local.get 14
                        local.get 16
                        i32.add
                        local.tee 14
                        i32.add
                        local.get 11
                        i32.store8
                        local.get 14
                        local.get 21
                        i32.add
                        local.set 14
                        local.get 12
                        i32.const 2
                        i32.add
                        local.tee 12
                        local.get 20
                        i32.ne
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 20
                    local.set 11
                  end
                  block  ;; label = @8
                    local.get 17
                    local.get 1
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 2
                    local.get 14
                    i32.add
                    local.get 11
                    i32.load8_u
                    i32.store8
                    local.get 11
                    i32.const 1
                    i32.add
                    local.set 11
                    local.get 14
                    i32.const 1
                    i32.add
                    local.set 14
                    local.get 10
                    i32.const -1
                    i32.add
                    local.set 10
                    local.get 1
                    local.set 17
                    br 1 (;@7;)
                  end
                end
                local.get 0
                local.get 2
                local.get 14
                call $memcpy
                local.set 0
                local.get 1
                local.get 14
                i32.sub
                local.set 12
                block  ;; label = @7
                  local.get 1
                  local.get 14
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 12
                  i32.const 3
                  i32.and
                  local.set 16
                  i32.const 0
                  local.set 10
                  block  ;; label = @8
                    local.get 14
                    local.get 1
                    i32.sub
                    i32.const -4
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 14
                    i32.add
                    local.set 21
                    local.get 8
                    local.get 1
                    i32.add
                    local.set 15
                    local.get 12
                    i32.const -4
                    i32.and
                    local.set 20
                    i32.const 0
                    local.set 10
                    loop  ;; label = @9
                      local.get 21
                      local.get 10
                      i32.add
                      local.tee 11
                      local.get 15
                      i32.load8_u
                      i32.store8
                      local.get 11
                      i32.const 1
                      i32.add
                      local.get 19
                      local.get 10
                      i32.const -2
                      i32.xor
                      i32.add
                      i32.load8_u
                      i32.store8
                      local.get 11
                      i32.const 2
                      i32.add
                      local.get 19
                      local.get 10
                      i32.const -3
                      i32.xor
                      i32.add
                      i32.load8_u
                      i32.store8
                      local.get 11
                      i32.const 3
                      i32.add
                      local.get 19
                      local.get 10
                      i32.const -4
                      i32.xor
                      i32.add
                      i32.load8_u
                      i32.store8
                      local.get 15
                      i32.const -4
                      i32.add
                      local.set 15
                      local.get 20
                      local.get 10
                      i32.const 4
                      i32.add
                      local.tee 10
                      i32.ne
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 16
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 10
                  i32.sub
                  local.get 1
                  i32.add
                  local.set 11
                  local.get 0
                  local.get 10
                  i32.add
                  local.get 14
                  i32.add
                  local.set 10
                  loop  ;; label = @8
                    local.get 10
                    local.get 11
                    i32.load8_u
                    i32.store8
                    local.get 11
                    i32.const -1
                    i32.add
                    local.set 11
                    local.get 10
                    i32.const 1
                    i32.add
                    local.set 10
                    local.get 16
                    i32.const -1
                    i32.add
                    local.tee 16
                    br_if 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  local.get 14
                  local.get 1
                  i32.le_u
                  br_if 0 (;@7;)
                  local.get 14
                  local.get 1
                  i32.const 1048740
                  call $_ZN4core5slice5index26slice_start_index_len_fail17hc23676ac170372b5E
                  unreachable
                end
                local.get 0
                local.get 14
                i32.add
                local.set 0
                i32.const 0
                local.set 5
                local.get 12
                local.set 1
                local.get 12
                i32.const 33
                i32.ge_u
                br_if 4 (;@2;)
                br 2 (;@4;)
              end
              unreachable
            end
            local.get 19
            local.get 12
            i32.add
            local.get 20
            local.get 2
            local.get 3
            local.get 4
            local.get 7
            i32.const 7
            i32.add
            local.get 6
            call $_ZN4core5slice4sort6stable9quicksort9quicksort17h3d91cec3e00dc633E
            local.get 12
            local.set 1
            local.get 12
            i32.const 33
            i32.ge_u
            br_if 1 (;@3;)
          end
        end
      end
      local.get 0
      local.get 12
      local.get 2
      local.get 3
      local.get 6
      call $_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd93de7e6f7436d3fE
    end
    local.get 7
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $rust_begin_unwind (type 5) (param i32)
    loop  ;; label = @1
      br 0 (;@1;)
    end)
  (func $foo (type 5) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.const 2
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.set 0
      block  ;; label = @2
        local.get 2
        i32.const 21
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        local.get 1
        i32.const 15
        i32.add
        call $_ZN4core5slice4sort6stable14driftsort_main17hc866db1d097ff0bfE
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i32.const 1
      local.get 1
      i32.const 15
      i32.add
      call $_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0dfec2e95a6de28dE
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4core5slice4sort6shared9smallsort12sort8_stable17h7d4e39905669bad9E (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 0
    i32.load8_s offset=1
    local.tee 3
    local.get 0
    i32.load8_s
    local.tee 4
    i32.lt_s
    i32.add
    local.tee 5
    local.get 0
    i32.const 3
    i32.const 2
    local.get 0
    i32.load8_s offset=3
    local.get 0
    i32.load8_s offset=2
    i32.lt_s
    local.tee 6
    select
    i32.add
    local.tee 7
    local.get 0
    local.get 3
    local.get 4
    i32.ge_s
    i32.add
    local.tee 3
    local.get 0
    i32.const 2
    i32.const 3
    local.get 6
    select
    i32.add
    local.tee 4
    i32.load8_s
    local.get 3
    i32.load8_s
    i32.lt_s
    local.tee 6
    select
    local.get 7
    i32.load8_s
    local.tee 8
    local.get 5
    i32.load8_s
    local.tee 9
    i32.lt_s
    local.tee 5
    select
    local.tee 10
    i32.load8_s
    local.set 11
    local.get 4
    local.get 3
    local.get 7
    local.get 5
    select
    local.get 6
    select
    local.tee 12
    i32.load8_s
    local.set 13
    local.get 2
    local.get 8
    local.get 9
    local.get 5
    select
    local.tee 7
    i32.store8
    local.get 2
    local.get 12
    local.get 10
    local.get 13
    local.get 11
    i32.lt_s
    local.tee 5
    select
    i32.load8_u
    i32.store8 offset=1
    local.get 2
    local.get 10
    local.get 12
    local.get 5
    select
    i32.load8_u
    i32.store8 offset=2
    local.get 2
    i32.const 3
    i32.add
    local.tee 8
    local.get 3
    local.get 4
    local.get 6
    select
    i32.load8_s
    local.tee 3
    i32.store8
    local.get 0
    i32.const 4
    i32.add
    local.tee 4
    local.get 0
    i32.load8_s offset=5
    local.tee 5
    local.get 0
    i32.load8_s offset=4
    local.tee 10
    i32.lt_s
    i32.add
    local.tee 12
    local.get 4
    i32.const 3
    i32.const 2
    local.get 0
    i32.load8_s offset=7
    local.get 0
    i32.load8_s offset=6
    i32.lt_s
    local.tee 9
    select
    i32.add
    local.tee 6
    local.get 4
    local.get 5
    local.get 10
    i32.ge_s
    i32.add
    local.tee 0
    local.get 4
    i32.const 2
    i32.const 3
    local.get 9
    select
    i32.add
    local.tee 5
    i32.load8_s
    local.get 0
    i32.load8_s
    i32.lt_s
    local.tee 10
    select
    local.get 6
    i32.load8_s
    local.tee 9
    local.get 12
    i32.load8_s
    local.tee 11
    i32.lt_s
    local.tee 4
    select
    local.tee 12
    i32.load8_s
    local.set 13
    local.get 5
    local.get 0
    local.get 6
    local.get 4
    select
    local.get 10
    select
    local.tee 6
    i32.load8_s
    local.set 14
    local.get 2
    i32.const 4
    i32.add
    local.tee 15
    local.get 9
    local.get 11
    local.get 4
    select
    local.tee 4
    i32.store8
    local.get 2
    i32.const 5
    i32.add
    local.get 6
    local.get 12
    local.get 14
    local.get 13
    i32.lt_s
    local.tee 9
    select
    i32.load8_u
    i32.store8
    local.get 2
    i32.const 6
    i32.add
    local.get 12
    local.get 6
    local.get 9
    select
    i32.load8_u
    i32.store8
    local.get 2
    i32.const 7
    i32.add
    local.tee 12
    local.get 0
    local.get 5
    local.get 10
    select
    i32.load8_s
    local.tee 0
    i32.store8
    local.get 1
    local.get 4
    local.get 7
    local.get 4
    local.get 7
    i32.lt_s
    local.tee 6
    select
    i32.store8
    local.get 1
    local.get 0
    local.get 3
    local.get 0
    local.get 3
    i32.gt_s
    select
    i32.store8 offset=7
    local.get 1
    local.get 15
    local.get 6
    i32.add
    local.tee 5
    i32.load8_s
    local.tee 6
    local.get 2
    local.get 4
    local.get 7
    i32.ge_s
    i32.add
    local.tee 10
    i32.load8_s
    local.tee 7
    local.get 6
    local.get 7
    i32.lt_s
    local.tee 4
    select
    i32.store8 offset=1
    local.get 1
    local.get 12
    local.get 0
    local.get 3
    i32.ge_s
    i32.sub
    local.tee 12
    i32.load8_s
    local.tee 2
    local.get 8
    local.get 0
    local.get 3
    i32.lt_s
    i32.sub
    local.tee 8
    i32.load8_s
    local.tee 0
    local.get 2
    local.get 0
    i32.gt_s
    select
    i32.store8 offset=6
    local.get 1
    local.get 5
    local.get 4
    i32.add
    local.tee 5
    i32.load8_s
    local.tee 4
    local.get 10
    local.get 6
    local.get 7
    i32.ge_s
    i32.add
    local.tee 10
    i32.load8_s
    local.tee 7
    local.get 4
    local.get 7
    i32.lt_s
    local.tee 6
    select
    i32.store8 offset=2
    local.get 1
    local.get 12
    local.get 2
    local.get 0
    i32.ge_s
    i32.sub
    local.tee 12
    i32.load8_s
    local.tee 3
    local.get 8
    local.get 2
    local.get 0
    i32.lt_s
    i32.sub
    local.tee 8
    i32.load8_s
    local.tee 0
    local.get 3
    local.get 0
    i32.gt_s
    select
    i32.store8 offset=5
    local.get 1
    local.get 5
    local.get 6
    i32.add
    local.tee 5
    i32.load8_s
    local.tee 6
    local.get 10
    local.get 4
    local.get 7
    i32.ge_s
    i32.add
    local.tee 4
    i32.load8_s
    local.tee 7
    local.get 6
    local.get 7
    i32.lt_s
    local.tee 10
    select
    i32.store8 offset=3
    local.get 1
    local.get 12
    local.get 3
    local.get 0
    i32.ge_s
    i32.sub
    local.tee 12
    i32.load8_s
    local.tee 2
    local.get 8
    local.get 3
    local.get 0
    i32.lt_s
    i32.sub
    local.tee 3
    i32.load8_s
    local.tee 0
    local.get 2
    local.get 0
    i32.gt_s
    select
    i32.store8 offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        local.get 6
        local.get 7
        i32.ge_s
        i32.add
        local.get 3
        local.get 2
        local.get 0
        i32.lt_s
        i32.sub
        i32.const 1
        i32.add
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        local.get 10
        i32.add
        local.get 12
        local.get 2
        local.get 0
        i32.ge_s
        i32.sub
        i32.const 1
        i32.add
        i32.eq
        br_if 1 (;@1;)
      end
      call $_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h10235f8f248da96bE
      unreachable
    end)
  (func $_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0dfec2e95a6de28dE (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.const -1
      i32.add
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        local.get 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.add
        local.set 4
        local.get 0
        local.get 2
        i32.add
        local.set 5
        loop  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.load8_s
            local.tee 6
            local.get 5
            i32.const -1
            i32.add
            i32.load8_s
            local.tee 7
            i32.ge_s
            br_if 0 (;@4;)
            local.get 2
            local.set 1
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                local.get 1
                i32.add
                local.tee 8
                local.get 7
                i32.store8
                block  ;; label = @7
                  local.get 1
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 0
                  local.set 1
                  br 2 (;@5;)
                end
                local.get 1
                i32.const -1
                i32.add
                local.set 1
                local.get 6
                local.get 8
                i32.const -2
                i32.add
                i32.load8_s
                local.tee 7
                i32.lt_s
                br_if 0 (;@6;)
              end
              local.get 0
              local.get 1
              i32.add
              local.set 1
            end
            local.get 1
            local.get 6
            i32.store8
          end
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 5
          i32.const 1
          i32.add
          local.tee 5
          local.get 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      return
    end
    unreachable)
  (func $_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd93de7e6f7436d3fE (type 7) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 2
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 16
              i32.add
              local.get 3
              i32.gt_u
              br_if 0 (;@5;)
              local.get 1
              i32.const 1
              i32.shr_u
              local.set 6
              local.get 1
              i32.const 15
              i32.gt_u
              br_if 1 (;@4;)
              block  ;; label = @6
                local.get 1
                i32.const 7
                i32.le_u
                br_if 0 (;@6;)
                local.get 2
                local.get 0
                i32.const 2
                i32.const 3
                local.get 0
                i32.load8_s offset=3
                local.get 0
                i32.load8_s offset=2
                i32.lt_s
                local.tee 7
                select
                i32.add
                local.tee 8
                i32.load8_s
                local.tee 3
                local.get 0
                local.get 0
                i32.load8_s offset=1
                local.tee 9
                local.get 0
                i32.load8_s
                local.tee 10
                i32.ge_s
                i32.add
                local.tee 11
                i32.load8_s
                local.tee 12
                local.get 3
                local.get 12
                i32.gt_s
                select
                i32.store8 offset=3
                local.get 2
                local.get 0
                i32.const 3
                i32.const 2
                local.get 7
                select
                i32.add
                local.tee 7
                i32.load8_s
                local.tee 13
                local.get 0
                local.get 9
                local.get 10
                i32.lt_s
                i32.add
                local.tee 10
                i32.load8_s
                local.tee 9
                local.get 13
                local.get 9
                i32.lt_s
                local.tee 9
                select
                i32.store8
                local.get 2
                local.get 8
                local.get 11
                local.get 7
                local.get 9
                select
                local.get 3
                local.get 12
                i32.lt_s
                local.tee 12
                select
                i32.load8_s
                local.tee 3
                local.get 10
                local.get 7
                local.get 11
                local.get 12
                select
                local.get 9
                select
                i32.load8_s
                local.tee 11
                local.get 3
                local.get 11
                i32.gt_s
                select
                i32.store8 offset=2
                local.get 2
                local.get 3
                local.get 11
                local.get 3
                local.get 11
                i32.lt_s
                select
                i32.store8 offset=1
                local.get 2
                local.get 6
                i32.add
                local.tee 11
                local.get 0
                local.get 6
                i32.add
                local.tee 3
                i32.const 2
                i32.const 3
                local.get 3
                i32.load8_s offset=3
                local.get 3
                i32.load8_s offset=2
                i32.lt_s
                local.tee 8
                select
                i32.add
                local.tee 13
                i32.load8_s
                local.tee 12
                local.get 3
                local.get 3
                i32.load8_s offset=1
                local.tee 10
                local.get 3
                i32.load8_s
                local.tee 14
                i32.ge_s
                i32.add
                local.tee 7
                i32.load8_s
                local.tee 9
                local.get 12
                local.get 9
                i32.gt_s
                select
                i32.store8 offset=3
                local.get 11
                local.get 3
                i32.const 3
                i32.const 2
                local.get 8
                select
                i32.add
                local.tee 8
                i32.load8_s
                local.tee 15
                local.get 3
                local.get 10
                local.get 14
                i32.lt_s
                i32.add
                local.tee 14
                i32.load8_s
                local.tee 3
                local.get 15
                local.get 3
                i32.lt_s
                local.tee 10
                select
                i32.store8
                local.get 11
                local.get 13
                local.get 7
                local.get 8
                local.get 10
                select
                local.get 12
                local.get 9
                i32.lt_s
                local.tee 12
                select
                i32.load8_s
                local.tee 3
                local.get 14
                local.get 8
                local.get 7
                local.get 12
                select
                local.get 10
                select
                i32.load8_s
                local.tee 12
                local.get 3
                local.get 12
                i32.lt_s
                select
                i32.store8 offset=1
                local.get 11
                local.get 3
                local.get 12
                local.get 3
                local.get 12
                i32.gt_s
                select
                i32.store8 offset=2
                i32.const 4
                local.set 14
                br 3 (;@3;)
              end
              local.get 2
              local.get 0
              i32.load8_u
              i32.store8
              local.get 2
              local.get 6
              i32.add
              local.get 0
              local.get 6
              i32.add
              i32.load8_u
              i32.store8
              i32.const 1
              local.set 14
              br 2 (;@3;)
            end
            unreachable
          end
          local.get 0
          local.get 2
          local.get 2
          local.get 1
          i32.add
          local.tee 3
          call $_ZN4core5slice4sort6shared9smallsort12sort8_stable17h7d4e39905669bad9E
          i32.const 8
          local.set 14
          local.get 0
          local.get 6
          i32.add
          local.get 2
          local.get 6
          i32.add
          local.get 3
          i32.const 8
          i32.add
          call $_ZN4core5slice4sort6shared9smallsort12sort8_stable17h7d4e39905669bad9E
        end
        local.get 5
        i32.const 2
        i32.store offset=12
        local.get 5
        local.get 6
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.store
        local.get 1
        local.get 6
        i32.sub
        local.set 15
        i32.const 0
        local.set 3
        i32.const 2
        local.set 7
        loop  ;; label = @3
          local.get 5
          local.get 3
          i32.const 1
          i32.add
          local.tee 11
          i32.store offset=8
          local.get 3
          i32.const 2
          i32.shl
          local.set 12
          local.get 11
          local.set 3
          block  ;; label = @4
            local.get 14
            local.get 15
            local.get 6
            local.get 5
            local.get 12
            i32.add
            i32.load
            local.tee 11
            select
            local.tee 10
            i32.ge_u
            br_if 0 (;@4;)
            local.get 2
            local.get 11
            i32.add
            local.set 9
            local.get 0
            local.get 11
            i32.add
            local.set 13
            local.get 14
            local.set 8
            loop  ;; label = @5
              local.get 9
              local.get 8
              i32.add
              local.tee 3
              local.get 13
              local.get 8
              i32.add
              i32.load8_s
              local.tee 7
              i32.store8
              block  ;; label = @6
                local.get 7
                local.get 3
                i32.const -1
                i32.add
                i32.load8_s
                local.tee 11
                i32.ge_s
                br_if 0 (;@6;)
                local.get 8
                local.set 3
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 9
                    local.get 3
                    i32.add
                    local.tee 12
                    local.get 11
                    i32.store8
                    block  ;; label = @9
                      local.get 3
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 9
                      local.set 3
                      br 2 (;@7;)
                    end
                    local.get 3
                    i32.const -1
                    i32.add
                    local.set 3
                    local.get 7
                    local.get 12
                    i32.const -2
                    i32.add
                    i32.load8_s
                    local.tee 11
                    i32.lt_s
                    br_if 0 (;@8;)
                  end
                  local.get 9
                  local.get 3
                  i32.add
                  local.set 3
                end
                local.get 3
                local.get 7
                i32.store8
              end
              local.get 8
              i32.const 1
              i32.add
              local.tee 8
              local.get 10
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 5
            i32.load offset=8
            local.set 3
            local.get 5
            i32.load offset=12
            local.set 7
          end
          local.get 7
          local.get 3
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 0
        local.get 1
        i32.const -1
        i32.add
        local.tee 3
        i32.add
        local.set 8
        local.get 2
        local.get 3
        i32.add
        local.set 9
        local.get 2
        local.get 6
        i32.add
        local.tee 12
        i32.const -1
        i32.add
        local.set 7
        loop  ;; label = @3
          local.get 0
          local.get 12
          i32.load8_s
          local.tee 10
          local.get 2
          i32.load8_s
          local.tee 13
          local.get 10
          local.get 13
          i32.lt_s
          local.tee 14
          select
          i32.store8
          local.get 8
          local.get 9
          i32.load8_s
          local.tee 3
          local.get 7
          i32.load8_s
          local.tee 11
          local.get 3
          local.get 11
          i32.gt_s
          select
          i32.store8
          local.get 8
          i32.const -1
          i32.add
          local.set 8
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 7
          local.get 3
          local.get 11
          i32.lt_s
          i32.sub
          local.set 7
          local.get 9
          local.get 3
          local.get 11
          i32.ge_s
          i32.sub
          local.set 9
          local.get 2
          local.get 10
          local.get 13
          i32.ge_s
          i32.add
          local.set 2
          local.get 12
          local.get 14
          i32.add
          local.set 12
          local.get 6
          i32.const -1
          i32.add
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 7
        i32.const 1
        i32.add
        local.set 3
        block  ;; label = @3
          local.get 1
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 2
          local.get 12
          local.get 2
          local.get 3
          i32.lt_u
          local.tee 11
          select
          i32.load8_u
          i32.store8
          local.get 12
          local.get 2
          local.get 3
          i32.ge_u
          i32.add
          local.set 12
          local.get 2
          local.get 11
          i32.add
          local.set 2
        end
        local.get 2
        local.get 3
        i32.ne
        br_if 1 (;@1;)
        local.get 12
        local.get 9
        i32.const 1
        i32.add
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 5
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h10235f8f248da96bE
    unreachable)
  (func $_ZN4core5slice4sort6stable5drift4sort17h4184895756a0bcbeE (type 8) (param i32 i32 i32 i32 i32 i32)
    (local i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 336
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.const 2
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      local.tee 7
      i64.const 4611686018427387903
      i64.add
      local.get 7
      i64.div_u
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 4097
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          call $_ZN4core5slice4sort6stable5drift11sqrt_approx17h458af0bc706dea57E
          local.set 8
          br 1 (;@2;)
        end
        local.get 1
        local.get 1
        i32.const 1
        i32.shr_u
        i32.sub
        local.tee 9
        i32.const 64
        local.get 9
        i32.const 64
        i32.lt_u
        select
        local.set 8
      end
      local.get 0
      i32.const -1
      i32.add
      local.set 10
      i32.const 1
      local.set 9
      i32.const 0
      local.set 11
      i32.const 0
      local.set 12
      loop  ;; label = @2
        i32.const 0
        local.set 13
        i32.const 1
        local.set 14
        block  ;; label = @3
          local.get 1
          local.get 11
          i32.gt_u
          local.tee 15
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 11
          i32.add
          local.set 16
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 11
              i32.sub
              local.tee 17
              local.get 8
              i32.lt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 17
                  i32.const 2
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 17
                  local.set 18
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 16
                        i32.load8_s offset=1
                        local.tee 19
                        local.get 16
                        i32.load8_s
                        i32.lt_s
                        local.tee 20
                        br_if 0 (;@10;)
                        i32.const 2
                        local.set 18
                        local.get 17
                        i32.const 2
                        i32.eq
                        br_if 4 (;@6;)
                        i32.const 2
                        local.set 18
                        loop  ;; label = @11
                          local.get 16
                          local.get 18
                          i32.add
                          i32.load8_s
                          local.tee 21
                          local.get 19
                          i32.extend8_s
                          i32.lt_s
                          br_if 3 (;@8;)
                          local.get 21
                          local.set 19
                          local.get 17
                          local.get 18
                          i32.const 1
                          i32.add
                          local.tee 18
                          i32.ne
                          br_if 0 (;@11;)
                          br 2 (;@9;)
                        end
                      end
                      i32.const 2
                      local.set 18
                      i32.const 1
                      local.set 21
                      local.get 17
                      i32.const 2
                      i32.eq
                      br_if 2 (;@7;)
                      i32.const 2
                      local.set 18
                      loop  ;; label = @10
                        local.get 16
                        local.get 18
                        i32.add
                        i32.load8_s
                        local.tee 21
                        local.get 19
                        i32.extend8_s
                        i32.ge_s
                        br_if 2 (;@8;)
                        local.get 21
                        local.set 19
                        local.get 17
                        local.get 18
                        i32.const 1
                        i32.add
                        local.tee 18
                        i32.ne
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 17
                    local.set 18
                  end
                  local.get 18
                  local.get 8
                  i32.lt_u
                  br_if 2 (;@5;)
                  local.get 20
                  i32.eqz
                  br_if 1 (;@6;)
                  block  ;; label = @8
                    local.get 18
                    i32.const 2
                    i32.ge_u
                    br_if 0 (;@8;)
                    i32.const 1
                    local.set 18
                    br 2 (;@6;)
                  end
                  local.get 18
                  i32.const 1
                  i32.shr_u
                  local.set 21
                end
                local.get 21
                i32.const 1
                i32.and
                local.set 14
                local.get 16
                local.get 18
                i32.add
                local.set 13
                i32.const 0
                local.set 17
                block  ;; label = @7
                  local.get 21
                  i32.const 1
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 18
                  i32.const -1
                  i32.add
                  local.set 19
                  local.get 21
                  i32.const 2147483646
                  i32.and
                  local.set 22
                  i32.const 0
                  local.set 17
                  loop  ;; label = @8
                    local.get 16
                    local.get 19
                    i32.add
                    local.tee 20
                    i32.load8_u
                    local.set 23
                    local.get 20
                    local.get 16
                    local.get 17
                    i32.add
                    local.tee 21
                    i32.load8_u
                    i32.store8
                    local.get 21
                    local.get 23
                    i32.store8
                    local.get 13
                    local.get 17
                    i32.const -2
                    i32.xor
                    i32.add
                    local.tee 20
                    i32.load8_u
                    local.set 23
                    local.get 20
                    local.get 21
                    i32.const 1
                    i32.add
                    local.tee 21
                    i32.load8_u
                    i32.store8
                    local.get 21
                    local.get 23
                    i32.store8
                    local.get 19
                    i32.const -2
                    i32.add
                    local.set 19
                    local.get 22
                    local.get 17
                    i32.const 2
                    i32.add
                    local.tee 17
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 14
                i32.eqz
                br_if 0 (;@6;)
                local.get 16
                local.get 17
                i32.add
                local.tee 16
                i32.load8_u
                local.set 19
                local.get 16
                local.get 13
                local.get 17
                i32.const -1
                i32.xor
                i32.add
                local.tee 17
                i32.load8_u
                i32.store8
                local.get 17
                local.get 19
                i32.store8
              end
              local.get 18
              i32.const 1
              i32.shl
              i32.const 1
              i32.or
              local.set 14
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 4
              br_if 0 (;@5;)
              local.get 8
              local.get 17
              local.get 8
              local.get 17
              i32.lt_u
              select
              i32.const 1
              i32.shl
              local.set 14
              br 1 (;@4;)
            end
            local.get 16
            local.get 17
            i32.const 32
            local.get 17
            i32.const 32
            i32.lt_u
            select
            local.tee 18
            local.get 2
            local.get 3
            i32.const 0
            i32.const 0
            local.get 5
            call $_ZN4core5slice4sort6stable9quicksort9quicksort17h3d91cec3e00dc633E
            local.get 18
            i32.const 1
            i32.shl
            i32.const 1
            i32.or
            local.set 14
          end
          local.get 14
          i32.const 1
          i32.shr_u
          local.get 11
          i32.add
          i64.extend_i32_u
          local.get 11
          i64.extend_i32_u
          local.tee 24
          i64.add
          local.get 7
          i64.mul
          local.get 11
          local.get 9
          i32.const 1
          i32.shr_u
          i32.sub
          i64.extend_i32_u
          local.get 24
          i64.add
          local.get 7
          i64.mul
          i64.xor
          i64.clz
          i32.wrap_i64
          local.set 13
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 12
            i32.const 2
            i32.lt_u
            br_if 0 (;@4;)
            local.get 10
            local.get 11
            i32.add
            local.set 25
            local.get 0
            local.get 11
            i32.add
            local.set 22
            loop  ;; label = @5
              local.get 6
              i32.const 270
              i32.add
              local.get 12
              i32.const -1
              i32.add
              local.tee 19
              i32.add
              i32.load8_u
              local.get 13
              i32.lt_u
              br_if 1 (;@4;)
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.const 4
                      i32.add
                      local.get 19
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.load
                      local.tee 12
                      i32.const 1
                      i32.shr_u
                      local.tee 17
                      local.get 9
                      i32.const 1
                      i32.shr_u
                      local.tee 21
                      i32.add
                      local.tee 20
                      local.get 3
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 12
                      local.get 9
                      i32.or
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 1 (;@8;)
                    end
                    local.get 0
                    local.get 11
                    local.get 20
                    i32.sub
                    i32.add
                    local.set 16
                    block  ;; label = @9
                      local.get 12
                      i32.const 1
                      i32.and
                      br_if 0 (;@9;)
                      local.get 16
                      local.get 17
                      local.get 2
                      local.get 3
                      local.get 17
                      i32.const 1
                      i32.or
                      i32.clz
                      i32.const 1
                      i32.shl
                      i32.const 62
                      i32.xor
                      i32.const 0
                      local.get 5
                      call $_ZN4core5slice4sort6stable9quicksort9quicksort17h3d91cec3e00dc633E
                    end
                    local.get 9
                    i32.const 1
                    i32.and
                    br_if 1 (;@7;)
                    local.get 16
                    local.get 17
                    i32.add
                    local.get 21
                    local.get 2
                    local.get 3
                    local.get 21
                    i32.const 1
                    i32.or
                    i32.clz
                    i32.const 1
                    i32.shl
                    i32.const 62
                    i32.xor
                    i32.const 0
                    local.get 5
                    call $_ZN4core5slice4sort6stable9quicksort9quicksort17h3d91cec3e00dc633E
                    br 1 (;@7;)
                  end
                  local.get 20
                  i32.const 1
                  i32.shl
                  local.set 9
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 9
                  i32.const 2
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 12
                  i32.const 2
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 21
                  local.get 17
                  local.get 21
                  local.get 17
                  i32.lt_u
                  local.tee 18
                  select
                  local.tee 9
                  local.get 3
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 16
                  local.get 17
                  i32.add
                  local.tee 12
                  local.get 16
                  local.get 18
                  select
                  local.get 9
                  call $memcpy
                  local.tee 23
                  local.get 9
                  i32.add
                  local.set 18
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 21
                        local.get 17
                        i32.ge_u
                        br_if 0 (;@10;)
                        local.get 25
                        local.set 17
                        loop  ;; label = @11
                          local.get 17
                          local.get 18
                          i32.const -1
                          i32.add
                          local.tee 18
                          i32.load8_s
                          local.tee 9
                          local.get 12
                          i32.const -1
                          i32.add
                          local.tee 21
                          i32.load8_s
                          local.tee 12
                          local.get 9
                          local.get 12
                          i32.gt_s
                          select
                          i32.store8
                          local.get 18
                          local.get 9
                          local.get 12
                          i32.lt_s
                          i32.add
                          local.set 18
                          local.get 21
                          local.get 9
                          local.get 12
                          i32.ge_s
                          i32.add
                          local.tee 12
                          local.get 16
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 17
                          i32.const -1
                          i32.add
                          local.set 17
                          local.get 18
                          local.get 23
                          i32.ne
                          br_if 0 (;@11;)
                          br 2 (;@9;)
                        end
                      end
                      block  ;; label = @10
                        local.get 9
                        br_if 0 (;@10;)
                        local.get 23
                        local.set 9
                        br 2 (;@8;)
                      end
                      local.get 23
                      local.set 9
                      loop  ;; label = @10
                        local.get 16
                        local.get 12
                        i32.load8_s
                        local.tee 17
                        local.get 9
                        i32.load8_s
                        local.tee 21
                        local.get 17
                        local.get 21
                        i32.lt_s
                        local.tee 23
                        select
                        i32.store8
                        local.get 16
                        i32.const 1
                        i32.add
                        local.set 16
                        local.get 9
                        local.get 17
                        local.get 21
                        i32.ge_s
                        i32.add
                        local.tee 9
                        local.get 18
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 12
                        local.get 23
                        i32.add
                        local.tee 12
                        local.get 22
                        i32.ne
                        br_if 0 (;@10;)
                        br 2 (;@8;)
                      end
                    end
                    local.get 23
                    local.set 9
                    local.get 12
                    local.set 16
                  end
                  local.get 16
                  local.get 9
                  local.get 18
                  local.get 9
                  i32.sub
                  call $memcpy
                  drop
                end
                local.get 20
                i32.const 1
                i32.shl
                i32.const 1
                i32.or
                local.set 9
              end
              i32.const 1
              local.set 18
              local.get 19
              local.set 12
              local.get 19
              i32.const 1
              i32.gt_u
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 12
          local.set 18
        end
        local.get 6
        i32.const 270
        i32.add
        local.get 18
        i32.add
        local.get 13
        i32.store8
        local.get 6
        i32.const 4
        i32.add
        local.get 18
        i32.const 2
        i32.shl
        i32.add
        local.get 9
        i32.store
        block  ;; label = @3
          local.get 15
          i32.eqz
          br_if 0 (;@3;)
          local.get 18
          i32.const 1
          i32.add
          local.set 12
          local.get 14
          i32.const 1
          i32.shr_u
          local.get 11
          i32.add
          local.set 11
          local.get 14
          local.set 9
          br 1 (;@2;)
        end
      end
      local.get 9
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 1
      i32.const 1
      i32.or
      i32.clz
      i32.const 1
      i32.shl
      i32.const 62
      i32.xor
      i32.const 0
      local.get 5
      call $_ZN4core5slice4sort6stable9quicksort9quicksort17h3d91cec3e00dc633E
    end
    local.get 6
    i32.const 336
    i32.add
    global.set $__stack_pointer)
  (func $__rust_alloc_error_handler (type 9) (param i32 i32)
    local.get 0
    local.get 1
    call $__rdl_oom
    return)
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h8c0ccf8a5414dad1E (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.load
    local.tee 5
    i32.load
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 2
          i32.add
          local.tee 1
          local.get 1
          i32.mul
          local.tee 1
          i32.const 2048
          local.get 1
          i32.const 2048
          i32.gt_u
          select
          local.tee 2
          i32.const 4
          local.get 4
          i32.const 12
          i32.add
          i32.const 1
          i32.const 1
          call $_ZN9wee_alloc15alloc_first_fit17h030088275f1ea1ffE
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          local.get 4
          i32.load offset=12
          i32.store
          local.get 2
          i32.const 2
          i32.shl
          local.set 6
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 2
          i32.const 2
          i32.shl
          local.tee 6
          i32.const 16416
          local.get 6
          i32.const 16416
          i32.gt_u
          select
          i32.const 65543
          i32.add
          local.tee 7
          i32.const 16
          i32.shr_u
          memory.grow
          local.tee 1
          i32.const -1
          i32.ne
          br_if 0 (;@3;)
          local.get 5
          local.get 4
          i32.load offset=12
          i32.store
          i32.const 1
          local.set 7
          i32.const 0
          local.set 8
          br 2 (;@1;)
        end
        i32.const 0
        local.set 8
        local.get 1
        i32.const 16
        i32.shl
        local.tee 1
        i32.const 0
        i32.store offset=4
        local.get 1
        local.get 4
        i32.load offset=12
        i32.store offset=8
        local.get 1
        local.get 1
        local.get 7
        i32.const -65536
        i32.and
        i32.add
        i32.const 2
        i32.or
        i32.store
        local.get 4
        local.get 1
        i32.store offset=12
        i32.const 1
        local.set 7
        local.get 2
        i32.const 4
        local.get 4
        i32.const 12
        i32.add
        i32.const 1
        i32.const 1
        call $_ZN9wee_alloc15alloc_first_fit17h030088275f1ea1ffE
        local.set 1
        local.get 5
        local.get 4
        i32.load offset=12
        i32.store
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      i64.const 0
      i64.store offset=4 align=4
      local.get 1
      local.get 1
      local.get 6
      i32.add
      i32.const 2
      i32.or
      i32.store
      i32.const 0
      local.set 7
      local.get 1
      local.set 8
    end
    local.get 0
    local.get 8
    i32.store offset=4
    local.get 0
    local.get 7
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h4db2fade97bcb8d0E (type 0) (param i32 i32) (result i32)
    i32.const 512)
  (func $_ZN9wee_alloc15alloc_first_fit17h030088275f1ea1ffE (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.load
      local.tee 5
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 1
    i32.const -1
    i32.add
    local.set 6
    i32.const 0
    local.get 1
    i32.sub
    local.set 7
    local.get 0
    i32.const 2
    i32.shl
    local.set 8
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.load offset=8
          local.tee 1
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 5
          i32.const 8
          i32.add
          local.set 9
          br 1 (;@2;)
        end
        loop  ;; label = @3
          local.get 5
          local.get 1
          i32.const -2
          i32.and
          i32.store offset=8
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.load offset=4
              local.tee 10
              i32.const -4
              i32.and
              local.tee 9
              br_if 0 (;@5;)
              i32.const 0
              local.set 11
              br 1 (;@4;)
            end
            i32.const 0
            local.get 9
            local.get 9
            i32.load8_u
            i32.const 1
            i32.and
            select
            local.set 11
          end
          block  ;; label = @4
            local.get 5
            i32.load
            local.tee 1
            i32.const -4
            i32.and
            local.tee 12
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 2
            i32.and
            br_if 0 (;@4;)
            local.get 12
            local.get 12
            i32.load offset=4
            i32.const 3
            i32.and
            local.get 9
            i32.or
            i32.store offset=4
            local.get 5
            i32.load offset=4
            local.tee 10
            i32.const -4
            i32.and
            local.set 9
            local.get 5
            i32.load
            local.set 1
          end
          block  ;; label = @4
            local.get 9
            i32.eqz
            br_if 0 (;@4;)
            local.get 9
            local.get 9
            i32.load
            i32.const 3
            i32.and
            local.get 1
            i32.const -4
            i32.and
            i32.or
            i32.store
            local.get 5
            i32.load offset=4
            local.set 10
            local.get 5
            i32.load
            local.set 1
          end
          local.get 5
          local.get 10
          i32.const 3
          i32.and
          i32.store offset=4
          local.get 5
          local.get 1
          i32.const 3
          i32.and
          i32.store
          block  ;; label = @4
            local.get 1
            i32.const 2
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 11
            local.get 11
            i32.load
            i32.const 2
            i32.or
            i32.store
          end
          local.get 2
          local.get 11
          i32.store
          local.get 11
          local.set 5
          local.get 11
          i32.load offset=8
          local.tee 1
          i32.const 1
          i32.and
          br_if 0 (;@3;)
        end
        local.get 11
        i32.const 8
        i32.add
        local.set 9
        local.get 11
        local.set 5
      end
      block  ;; label = @2
        local.get 5
        i32.load
        i32.const -4
        i32.and
        local.tee 11
        local.get 9
        i32.sub
        local.get 8
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 9
            local.get 3
            local.get 0
            local.get 4
            call_indirect (type 0)
            i32.const 2
            i32.shl
            i32.add
            i32.const 8
            i32.add
            local.get 11
            local.get 8
            i32.sub
            local.get 7
            i32.and
            local.tee 1
            i32.le_u
            br_if 0 (;@4;)
            local.get 9
            i32.load
            local.set 1
            local.get 6
            local.get 9
            i32.and
            br_if 2 (;@2;)
            local.get 2
            local.get 1
            i32.const -4
            i32.and
            i32.store
            local.get 5
            i32.load
            local.set 9
            local.get 5
            local.set 1
            br 1 (;@3;)
          end
          i32.const 0
          local.set 11
          local.get 1
          i32.const 0
          i32.store
          local.get 1
          i32.const -8
          i32.add
          local.tee 1
          i64.const 0
          i64.store align=4
          local.get 1
          local.get 5
          i32.load
          i32.const -4
          i32.and
          i32.store
          block  ;; label = @4
            local.get 5
            i32.load
            local.tee 12
            i32.const -4
            i32.and
            local.tee 10
            i32.eqz
            br_if 0 (;@4;)
            local.get 12
            i32.const 2
            i32.and
            br_if 0 (;@4;)
            local.get 10
            local.get 10
            i32.load offset=4
            i32.const 3
            i32.and
            local.get 1
            i32.or
            i32.store offset=4
            local.get 1
            i32.load offset=4
            i32.const 3
            i32.and
            local.set 11
          end
          local.get 1
          local.get 11
          local.get 5
          i32.or
          i32.store offset=4
          local.get 9
          local.get 9
          i32.load
          i32.const -2
          i32.and
          i32.store
          local.get 5
          local.get 5
          i32.load
          local.tee 9
          i32.const 3
          i32.and
          local.get 1
          i32.or
          local.tee 11
          i32.store
          block  ;; label = @4
            local.get 9
            i32.const 2
            i32.and
            br_if 0 (;@4;)
            local.get 1
            i32.load
            local.set 9
            br 1 (;@3;)
          end
          local.get 5
          local.get 11
          i32.const -3
          i32.and
          i32.store
          local.get 1
          i32.load
          i32.const 2
          i32.or
          local.set 9
        end
        local.get 1
        local.get 9
        i32.const 1
        i32.or
        i32.store
        local.get 1
        i32.const 8
        i32.add
        return
      end
      local.get 2
      local.get 1
      i32.store
      local.get 1
      local.set 5
      local.get 1
      br_if 0 (;@1;)
    end
    i32.const 0)
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h66fbdf3e266d22a3E (type 0) (param i32 i32) (result i32)
    local.get 1)
  (func $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h4b28a93b29fb0e17E (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        local.get 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      i32.const 3
      i32.add
      local.tee 4
      i32.const 2
      i32.shr_u
      local.set 5
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        i32.const -1
        i32.add
        local.tee 2
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        i32.const 1024
        i32.add
        i32.store offset=8
        local.get 3
        local.get 0
        local.get 2
        i32.const 2
        i32.shl
        i32.add
        local.tee 0
        i32.load
        i32.store offset=12
        block  ;; label = @3
          local.get 5
          local.get 1
          local.get 3
          i32.const 12
          i32.add
          local.get 3
          i32.const 8
          i32.add
          i32.const 2
          call $_ZN9wee_alloc15alloc_first_fit17h030088275f1ea1ffE
          local.tee 2
          br_if 0 (;@3;)
          local.get 3
          local.get 3
          i32.const 8
          i32.add
          local.get 5
          local.get 3
          call $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h8c0ccf8a5414dad1E
          i32.const 0
          local.set 2
          local.get 3
          i32.load
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=4
          local.tee 2
          local.get 3
          i32.load offset=12
          i32.store offset=8
          local.get 3
          local.get 2
          i32.store offset=12
          local.get 5
          local.get 1
          local.get 3
          i32.const 12
          i32.add
          local.get 3
          i32.const 8
          i32.add
          i32.const 2
          call $_ZN9wee_alloc15alloc_first_fit17h030088275f1ea1ffE
          local.set 2
        end
        local.get 0
        local.get 3
        i32.load offset=12
        i32.store
        br 1 (;@1;)
      end
      local.get 3
      local.get 0
      i32.load offset=1024
      i32.store offset=12
      block  ;; label = @2
        local.get 5
        local.get 1
        local.get 3
        i32.const 12
        i32.add
        i32.const 1048884
        i32.const 1
        call $_ZN9wee_alloc15alloc_first_fit17h030088275f1ea1ffE
        local.tee 2
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i32.const -4
          i32.and
          local.tee 2
          local.get 1
          i32.const 3
          i32.shl
          i32.const 16384
          i32.add
          local.tee 4
          local.get 2
          local.get 4
          i32.gt_u
          select
          i32.const 65543
          i32.add
          local.tee 4
          i32.const 16
          i32.shr_u
          memory.grow
          local.tee 2
          i32.const -1
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 2
        i32.const 16
        i32.shl
        local.tee 2
        i32.const 0
        i32.store offset=4
        local.get 2
        local.get 3
        i32.load offset=12
        i32.store offset=8
        local.get 2
        local.get 2
        local.get 4
        i32.const -65536
        i32.and
        i32.add
        i32.const 2
        i32.or
        i32.store
        local.get 3
        local.get 2
        i32.store offset=12
        local.get 5
        local.get 1
        local.get 3
        i32.const 12
        i32.add
        i32.const 1048884
        i32.const 1
        call $_ZN9wee_alloc15alloc_first_fit17h030088275f1ea1ffE
        local.set 2
      end
      local.get 0
      local.get 3
      i32.load offset=12
      i32.store offset=1024
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h130c0bb53dd407b5E (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 3
        i32.add
        i32.const 2
        i32.shr_u
        i32.const -1
        i32.add
        local.tee 3
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        local.get 3
        i32.const 2
        i32.shl
        i32.add
        local.tee 3
        i32.load
        i32.store
        local.get 1
        i32.const -8
        i32.add
        local.tee 1
        local.get 1
        i32.load
        i32.const -2
        i32.and
        i32.store
        local.get 3
        local.get 1
        i32.store
        return
      end
      local.get 0
      i32.load offset=1024
      local.set 4
      local.get 1
      i32.const 0
      i32.store
      local.get 1
      i32.const -8
      i32.add
      local.tee 3
      local.get 3
      i32.load
      local.tee 2
      i32.const -2
      i32.and
      local.tee 5
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const -4
              i32.add
              local.tee 6
              i32.load
              i32.const -4
              i32.and
              local.tee 7
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              i32.load
              local.tee 8
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.const -4
                    i32.and
                    local.tee 9
                    br_if 0 (;@8;)
                    local.get 7
                    local.set 1
                    br 1 (;@7;)
                  end
                  local.get 7
                  local.set 1
                  local.get 2
                  i32.const 2
                  i32.and
                  br_if 0 (;@7;)
                  local.get 9
                  local.get 9
                  i32.load offset=4
                  i32.const 3
                  i32.and
                  local.get 7
                  i32.or
                  i32.store offset=4
                  local.get 3
                  i32.load
                  local.set 5
                  local.get 6
                  i32.load
                  local.tee 2
                  i32.const -4
                  i32.and
                  local.tee 1
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 1
                  i32.load
                  local.set 8
                end
                local.get 1
                local.get 5
                i32.const -4
                i32.and
                local.get 8
                i32.const 3
                i32.and
                i32.or
                i32.store
                local.get 6
                i32.load
                local.set 2
                local.get 3
                i32.load
                local.set 5
              end
              local.get 6
              local.get 2
              i32.const 3
              i32.and
              i32.store
              local.get 3
              local.get 5
              i32.const 3
              i32.and
              i32.store
              local.get 5
              i32.const 2
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 7
              local.get 7
              i32.load
              i32.const 2
              i32.or
              i32.store
              br 1 (;@4;)
            end
            local.get 2
            i32.const 2
            i32.and
            br_if 1 (;@3;)
            local.get 2
            i32.const -4
            i32.and
            local.tee 2
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load8_u
            i32.const 1
            i32.and
            br_if 1 (;@3;)
            local.get 1
            local.get 2
            i32.load offset=8
            i32.const -4
            i32.and
            i32.store
            local.get 2
            local.get 3
            i32.const 1
            i32.or
            i32.store offset=8
          end
          local.get 4
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.get 4
        i32.store
      end
      local.get 0
      local.get 3
      i32.store offset=1024
    end)
  (func $_ZN5alloc7raw_vec17capacity_overflow17h460680d164b94e65E.llvm.5124922386644179396 (type 5) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    i32.const 1
    i32.store offset=12
    local.get 1
    i32.const 1048904
    i32.store offset=8
    local.get 1
    i64.const 4
    i64.store offset=16 align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $_ZN4core9panicking9panic_fmt17h5d2b6b424c06aa76E
    unreachable)
  (func $_ZN5alloc7raw_vec12handle_error17ha5bad542b5a52512E (type 3) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 2
      call $_ZN5alloc7raw_vec17capacity_overflow17h460680d164b94e65E.llvm.5124922386644179396
      unreachable
    end
    local.get 0
    local.get 1
    call $_ZN5alloc5alloc18handle_alloc_error17h8ecc5d41e4e5ce0aE
    unreachable)
  (func $_ZN5alloc5alloc18handle_alloc_error17h8ecc5d41e4e5ce0aE (type 9) (param i32 i32)
    local.get 1
    local.get 0
    call $__rust_alloc_error_handler
    unreachable)
  (func $__rdl_oom (type 9) (param i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=12
    i32.const 3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    local.set 3
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1050632
      br_if 0 (;@1;)
      local.get 2
      i32.const 2
      i32.store offset=20
      local.get 2
      i32.const 1049056
      i32.store offset=16
      local.get 2
      i64.const 1
      i64.store offset=28 align=4
      local.get 2
      local.get 3
      i64.store offset=40
      local.get 2
      local.get 2
      i32.const 40
      i32.add
      i32.store offset=24
      local.get 2
      i32.const 16
      i32.add
      i32.const 0
      i32.const 1049072
      call $_ZN4core9panicking18panic_nounwind_fmt17h42069ecae49b4c50E
      unreachable
    end
    local.get 2
    i32.const 2
    i32.store offset=20
    local.get 2
    i32.const 1049056
    i32.store offset=16
    local.get 2
    i64.const 1
    i64.store offset=28 align=4
    local.get 2
    local.get 3
    i64.store offset=40
    local.get 2
    local.get 2
    i32.const 40
    i32.add
    i32.store offset=24
    local.get 2
    i32.const 16
    i32.add
    i32.const 1049088
    call $_ZN4core9panicking9panic_fmt17h5d2b6b424c06aa76E
    unreachable)
  (func $_ZN4core3fmt9Formatter12pad_integral17h83c1f4bce02c5a2cE (type 11) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        local.get 5
        i32.const 1
        i32.add
        local.set 6
        local.get 0
        i32.load offset=20
        local.set 7
        i32.const 45
        local.set 8
        br 1 (;@1;)
      end
      i32.const 43
      i32.const 1114112
      local.get 0
      i32.load offset=20
      local.tee 7
      i32.const 1
      i32.and
      local.tee 1
      select
      local.set 8
      local.get 1
      local.get 5
      i32.add
      local.set 6
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 7
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          call $_ZN4core3str5count14do_count_chars17h98a5592b0ffd363dE
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 9
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 4
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 1
            i32.const 0
            local.set 10
            br 1 (;@3;)
          end
          local.get 3
          i32.const 12
          i32.and
          local.set 11
          i32.const 0
          local.set 1
          i32.const 0
          local.set 10
          loop  ;; label = @4
            local.get 1
            local.get 2
            local.get 10
            i32.add
            local.tee 12
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 12
            i32.const 1
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 12
            i32.const 2
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 12
            i32.const 3
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 1
            local.get 11
            local.get 10
            i32.const 4
            i32.add
            local.tee 10
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 10
        i32.add
        local.set 12
        loop  ;; label = @3
          local.get 1
          local.get 12
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 1
          local.get 12
          i32.const 1
          i32.add
          local.set 12
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
        end
      end
      local.get 1
      local.get 6
      i32.add
      local.set 6
    end
    block  ;; label = @1
      local.get 0
      i32.load
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=28
        local.tee 1
        local.get 0
        i32.load offset=32
        local.tee 12
        local.get 8
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1c59336289fdab93E
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        return
      end
      local.get 1
      local.get 4
      local.get 5
      local.get 12
      i32.load offset=12
      call_indirect (type 1)
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 1
            local.get 6
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=28
            local.tee 1
            local.get 0
            i32.load offset=32
            local.tee 12
            local.get 8
            local.get 2
            local.get 3
            call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1c59336289fdab93E
            i32.eqz
            br_if 1 (;@3;)
            i32.const 1
            return
          end
          local.get 7
          i32.const 8
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=16
          local.set 9
          local.get 0
          i32.const 48
          i32.store offset=16
          local.get 0
          i32.load8_u offset=24
          local.set 7
          i32.const 1
          local.set 11
          local.get 0
          i32.const 1
          i32.store8 offset=24
          local.get 0
          i32.load offset=28
          local.tee 12
          local.get 0
          i32.load offset=32
          local.tee 10
          local.get 8
          local.get 2
          local.get 3
          call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1c59336289fdab93E
          br_if 2 (;@1;)
          local.get 1
          local.get 6
          i32.sub
          i32.const 1
          i32.add
          local.set 1
          block  ;; label = @4
            loop  ;; label = @5
              local.get 1
              i32.const -1
              i32.add
              local.tee 1
              i32.eqz
              br_if 1 (;@4;)
              local.get 12
              i32.const 48
              local.get 10
              i32.load offset=16
              call_indirect (type 0)
              i32.eqz
              br_if 0 (;@5;)
            end
            i32.const 1
            return
          end
          block  ;; label = @4
            local.get 12
            local.get 4
            local.get 5
            local.get 10
            i32.load offset=12
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
            i32.const 1
            return
          end
          local.get 0
          local.get 7
          i32.store8 offset=24
          local.get 0
          local.get 9
          i32.store offset=16
          i32.const 0
          return
        end
        local.get 1
        local.get 4
        local.get 5
        local.get 12
        i32.load offset=12
        call_indirect (type 1)
        local.set 11
        br 1 (;@1;)
      end
      local.get 1
      local.get 6
      i32.sub
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1
            local.get 0
            i32.load8_u offset=24
            local.tee 1
            local.get 1
            i32.const 3
            i32.eq
            select
            local.tee 1
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          local.get 6
          local.set 1
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 6
        i32.const 1
        i32.shr_u
        local.set 1
        local.get 6
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 6
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      local.get 0
      i32.load offset=16
      local.set 9
      local.get 0
      i32.load offset=32
      local.set 12
      local.get 0
      i32.load offset=28
      local.set 10
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 10
          local.get 9
          local.get 12
          i32.load offset=16
          call_indirect (type 0)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      i32.const 1
      local.set 11
      local.get 10
      local.get 12
      local.get 8
      local.get 2
      local.get 3
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1c59336289fdab93E
      br_if 0 (;@1;)
      local.get 10
      local.get 4
      local.get 5
      local.get 12
      i32.load offset=12
      call_indirect (type 1)
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 6
          local.get 1
          i32.ne
          br_if 0 (;@3;)
          local.get 6
          local.get 6
          i32.lt_u
          return
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 10
        local.get 9
        local.get 12
        i32.load offset=16
        call_indirect (type 0)
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const -1
      i32.add
      local.get 6
      i32.lt_u
      return
    end
    local.get 11)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1c59336289fdab93E (type 10) (param i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 0)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    block  ;; label = @1
      local.get 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=12
    call_indirect (type 1))
  (func $_ZN4core3str5count14do_count_chars17h98a5592b0ffd363dE (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        local.tee 2
        local.get 0
        i32.sub
        local.tee 3
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.sub
        local.tee 4
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        i32.const 3
        i32.and
        local.set 5
        i32.const 0
        local.set 6
        i32.const 0
        local.set 1
        block  ;; label = @3
          local.get 2
          local.get 0
          i32.eq
          local.tee 7
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 2
              i32.sub
              local.tee 8
              i32.const -4
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 9
              br 1 (;@4;)
            end
            i32.const 0
            local.set 9
            loop  ;; label = @5
              local.get 1
              local.get 0
              local.get 9
              i32.add
              local.tee 2
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 1
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 2
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 3
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 1
              local.get 9
              i32.const 4
              i32.add
              local.tee 9
              br_if 0 (;@5;)
            end
          end
          local.get 7
          br_if 0 (;@3;)
          local.get 0
          local.get 9
          i32.add
          local.set 2
          loop  ;; label = @4
            local.get 1
            local.get 2
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 8
            i32.const 1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
          end
        end
        local.get 0
        local.get 3
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          i32.const -4
          i32.and
          i32.add
          local.tee 2
          i32.load8_s
          i32.const -65
          i32.gt_s
          local.set 6
          local.get 5
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          i32.load8_s offset=1
          i32.const -65
          i32.gt_s
          i32.add
          local.set 6
          local.get 5
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          i32.load8_s offset=2
          i32.const -65
          i32.gt_s
          i32.add
          local.set 6
        end
        local.get 4
        i32.const 2
        i32.shr_u
        local.set 8
        local.get 6
        local.get 1
        i32.add
        local.set 3
        loop  ;; label = @3
          local.get 0
          local.set 4
          local.get 8
          i32.eqz
          br_if 2 (;@1;)
          local.get 8
          i32.const 192
          local.get 8
          i32.const 192
          i32.lt_u
          select
          local.tee 6
          i32.const 3
          i32.and
          local.set 7
          local.get 6
          i32.const 2
          i32.shl
          local.set 5
          i32.const 0
          local.set 2
          block  ;; label = @4
            local.get 8
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.const 1008
            i32.and
            i32.add
            local.set 9
            i32.const 0
            local.set 2
            local.get 4
            local.set 1
            loop  ;; label = @5
              local.get 1
              i32.load
              local.tee 0
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 0
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 2
              i32.add
              local.get 1
              i32.load offset=4
              local.tee 2
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 2
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.get 1
              i32.load offset=8
              local.tee 2
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 2
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.get 1
              i32.load offset=12
              local.tee 2
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 2
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.set 2
              local.get 1
              i32.const 16
              i32.add
              local.tee 1
              local.get 9
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 8
          local.get 6
          i32.sub
          local.set 8
          local.get 4
          local.get 5
          i32.add
          local.set 0
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 16711935
          i32.and
          local.get 2
          i32.const 16711935
          i32.and
          i32.add
          i32.const 65537
          i32.mul
          i32.const 16
          i32.shr_u
          local.get 3
          i32.add
          local.set 3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 4
        local.get 6
        i32.const 252
        i32.and
        i32.const 2
        i32.shl
        i32.add
        local.tee 2
        i32.load
        local.tee 1
        i32.const -1
        i32.xor
        i32.const 7
        i32.shr_u
        local.get 1
        i32.const 6
        i32.shr_u
        i32.or
        i32.const 16843009
        i32.and
        local.set 1
        block  ;; label = @3
          local.get 7
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=4
          local.tee 0
          i32.const -1
          i32.xor
          i32.const 7
          i32.shr_u
          local.get 0
          i32.const 6
          i32.shr_u
          i32.or
          i32.const 16843009
          i32.and
          local.get 1
          i32.add
          local.set 1
          local.get 7
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=8
          local.tee 2
          i32.const -1
          i32.xor
          i32.const 7
          i32.shr_u
          local.get 2
          i32.const 6
          i32.shr_u
          i32.or
          i32.const 16843009
          i32.and
          local.get 1
          i32.add
          local.set 1
        end
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 459007
        i32.and
        local.get 1
        i32.const 16711935
        i32.and
        i32.add
        i32.const 65537
        i32.mul
        i32.const 16
        i32.shr_u
        local.get 3
        i32.add
        return
      end
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 1
      i32.const 3
      i32.and
      local.set 9
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 4
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          i32.const 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 1
        i32.const -4
        i32.and
        local.set 8
        i32.const 0
        local.set 3
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 3
          local.get 0
          local.get 2
          i32.add
          local.tee 1
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 1
          i32.const 1
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 1
          i32.const 2
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 1
          i32.const 3
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 3
          local.get 8
          local.get 2
          i32.const 4
          i32.add
          local.tee 2
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 9
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.set 3
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 9
        i32.const -1
        i32.add
        local.tee 9
        br_if 0 (;@2;)
      end
    end
    local.get 3)
  (func $_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h10235f8f248da96bE (type 12)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.const 1049380
    i32.store offset=8
    local.get 0
    i64.const 4
    i64.store offset=16 align=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 1049520
    call $_ZN4core9panicking9panic_fmt17h5d2b6b424c06aa76E
    unreachable)
  (func $_ZN4core5slice4sort6stable5drift11sqrt_approx17h458af0bc706dea57E (type 13) (param i32) (result i32)
    (local i32)
    i32.const 1
    i32.const 32
    local.get 0
    i32.const 1
    i32.or
    i32.clz
    i32.sub
    i32.const 1
    i32.shr_u
    local.tee 1
    i32.shl
    local.get 0
    local.get 1
    i32.shr_u
    i32.add
    i32.const 1
    i32.shr_u)
  (func $_ZN4core9panicking9panic_fmt17h5d2b6b424c06aa76E (type 9) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 1
    i32.store16 offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 4
    i32.add
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core9panicking18panic_nounwind_fmt17h42069ecae49b4c50E (type 3) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    local.get 0
    i64.load align=4
    i64.store offset=8
    local.get 3
    local.get 1
    i32.store8 offset=45
    local.get 3
    i32.const 0
    i32.store8 offset=44
    local.get 3
    local.get 2
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 8
    i32.add
    i32.store offset=36
    local.get 3
    i32.const 36
    i32.add
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core5slice5index26slice_start_index_len_fail17hc23676ac170372b5E (type 3) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN4core5slice5index26slice_start_index_len_fail8do_panic7runtime17h3795aad72adc9d35E
    unreachable)
  (func $_ZN4core5slice5index26slice_start_index_len_fail8do_panic7runtime17h3795aad72adc9d35E (type 3) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1049588
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i32.const 3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 3
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h5d2b6b424c06aa76E
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he7ca32bd02eeaa39E (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h05df94494f99958aE.llvm.170491792956970203)
  (func $_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h05df94494f99958aE.llvm.170491792956970203 (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 10
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 10000
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      i32.const 10
      local.set 4
      loop  ;; label = @2
        local.get 3
        i32.const 6
        i32.add
        local.get 4
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i32.const 10000
        i32.div_u
        local.tee 5
        i32.const 10000
        i32.mul
        i32.sub
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.const 1049104
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1049104
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 4
        i32.const -4
        i32.add
        local.set 4
        local.get 0
        i32.const 99999999
        i32.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 99
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      i32.const 6
      i32.add
      local.get 4
      i32.const -2
      i32.add
      local.tee 4
      i32.add
      local.get 5
      local.get 5
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1049104
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 6
        i32.add
        local.get 4
        i32.const -2
        i32.add
        local.tee 4
        i32.add
        local.get 0
        i32.const 1
        i32.shl
        i32.const 1049104
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 3
      i32.const 6
      i32.add
      local.get 4
      i32.const -1
      i32.add
      local.tee 4
      i32.add
      local.get 0
      i32.const 48
      i32.or
      i32.store8
    end
    local.get 2
    local.get 1
    i32.const 1
    i32.const 0
    local.get 3
    i32.const 6
    i32.add
    local.get 4
    i32.add
    i32.const 10
    local.get 4
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h83c1f4bce02c5a2cE
    local.set 0
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $memcpy (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.tee 5
        local.get 0
        i32.le_u
        br_if 0 (;@2;)
        local.get 4
        i32.const -1
        i32.add
        local.set 6
        local.get 0
        local.set 3
        local.get 1
        local.set 7
        block  ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.set 8
          local.get 0
          local.set 3
          local.get 1
          local.set 7
          loop  ;; label = @4
            local.get 3
            local.get 7
            i32.load8_u
            i32.store8
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 8
            i32.const -1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 7
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 7
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.get 7
          i32.const 1
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 2
          i32.add
          local.get 7
          i32.const 2
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 3
          i32.add
          local.get 7
          i32.const 3
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 4
          i32.add
          local.get 7
          i32.const 4
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 5
          i32.add
          local.get 7
          i32.const 5
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 6
          i32.add
          local.get 7
          i32.const 6
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 7
          i32.add
          local.get 7
          i32.const 7
          i32.add
          i32.load8_u
          i32.store8
          local.get 7
          i32.const 8
          i32.add
          local.set 7
          local.get 3
          i32.const 8
          i32.add
          local.tee 3
          local.get 5
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 8
      i32.const -4
      i32.and
      local.tee 6
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 4
          i32.add
          local.tee 7
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 5
          local.get 3
          i32.ge_u
          br_if 1 (;@2;)
          local.get 7
          local.set 1
          loop  ;; label = @4
            local.get 5
            local.get 1
            i32.load
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 5
        local.get 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 7
        i32.const 3
        i32.shl
        local.tee 2
        i32.const 24
        i32.and
        local.set 4
        local.get 7
        i32.const -4
        i32.and
        local.tee 9
        i32.const 4
        i32.add
        local.set 1
        i32.const 0
        local.get 2
        i32.sub
        i32.const 24
        i32.and
        local.set 10
        local.get 9
        i32.load
        local.set 2
        loop  ;; label = @3
          local.get 5
          local.get 2
          local.get 4
          i32.shr_u
          local.get 1
          i32.load
          local.tee 2
          local.get 10
          i32.shl
          i32.or
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 3
      i32.and
      local.set 2
      local.get 7
      local.get 6
      i32.add
      local.set 1
    end
    block  ;; label = @1
      local.get 3
      local.get 3
      local.get 2
      i32.add
      local.tee 5
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      i32.const -1
      i32.add
      local.set 8
      block  ;; label = @2
        local.get 2
        i32.const 7
        i32.and
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 7
          i32.const -1
          i32.add
          local.tee 7
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.get 1
        i32.const 1
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 2
        i32.add
        local.get 1
        i32.const 2
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 3
        i32.add
        local.get 1
        i32.const 3
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 4
        i32.add
        local.get 1
        i32.const 4
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 5
        i32.add
        local.get 1
        i32.const 5
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 6
        i32.add
        local.get 1
        i32.const 6
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 7
        i32.add
        local.get 1
        i32.const 7
        i32.add
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 3
        i32.const 8
        i32.add
        local.tee 3
        local.get 5
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (table (;0;) 4 4 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1050634))
  (global (;2;) i32 (i32.const 1050640))
  (export "memory" (memory 0))
  (export "foo" (func $foo))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h4db2fade97bcb8d0E $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h66fbdf3e266d22a3E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he7ca32bd02eeaa39E)
  (data $.rodata (i32.const 1048576) "/Users/gsobol/.rustup/toolchains/nightly-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rsmid > len\00\82\00\10\00\09\00\00\00\00\00\10\00\82\00\00\00L\00\00\00\1f\00\00\00\00\00\10\00\82\00\00\00F\00\00\00\17\00\00\00/Users/gsobol/.rustup/toolchains/nightly-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/slice.rs\00\00\00\b4\00\10\00m\00\00\00\95\03\00\00\09\00\00\00capacity overflow\00\00\004\01\10\00\11\00\00\00/Users/gsobol/.rustup/toolchains/nightly-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/alloc.rsmemory allocation of  bytes failed\00\bd\01\10\00\15\00\00\00\d2\01\10\00\0d\00\00\00P\01\10\00m\00\00\00\b6\01\00\00\0d\00\00\00P\01\10\00m\00\00\00\b4\01\00\00\0d\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899user-provided comparison function does not correctly implement a total order\d8\02\10\00L\00\00\00/Users/gsobol/.rustup/toolchains/nightly-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/slice/sort/shared/smallsort.rs\00\00,\03\10\00\82\00\00\00a\03\00\00\05\00\00\00range start index  out of range for slice of length \c0\03\10\00\12\00\00\00\d2\03\10\00\22\00\00\00"))
