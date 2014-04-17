---
format: pml-0.1
triple: patmos-unknown-unknown-elf
machine-functions:
- name: 28
  level: machinecode
  mapsto: main
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 18500
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18504
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18508
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18512
    - index: 4
      opcode: LIl
      size: 8
      address: 18516
    - index: 5
      opcode: MOV
      size: 4
      address: 18524
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18528
    - index: 7
      opcode: LIl
      size: 8
      address: 18532
    - index: 8
      opcode: LIl
      size: 8
      address: 18540
    - index: 9
      opcode: CALL
      callees:
      - init_sample_buffer
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 18548
    - index: 10
      opcode: LIi
      size: 4
      address: 18552
    - index: 11
      opcode: MOV
      size: 4
      address: 18556
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18560
    - index: 13
      opcode: CALL
      callees:
      - test_interpolate
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 18564
    - index: 14
      opcode: NOP
      size: 4
      address: 18568
    - index: 15
      opcode: NOP
      size: 4
      address: 18572
    - index: 16
      opcode: NOP
      size: 4
      address: 18576
    - index: 17
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18580
    - index: 18
      opcode: NOP
      size: 4
      address: 18584
    - index: 19
      opcode: CALL
      callees:
      - test_merge_samples
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 18588
    - index: 20
      opcode: NOP
      size: 4
      address: 18592
    - index: 21
      opcode: NOP
      size: 4
      address: 18596
    - index: 22
      opcode: NOP
      size: 4
      address: 18600
    - index: 23
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18604
    - index: 24
      opcode: NOP
      size: 4
      address: 18608
    - index: 25
      opcode: CALL
      callees:
      - test_fft
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 18612
    - index: 26
      opcode: NOP
      size: 4
      address: 18616
    - index: 27
      opcode: NOP
      size: 4
      address: 18620
    - index: 28
      opcode: NOP
      size: 4
      address: 18624
    - index: 29
      opcode: CALL
      callees:
      - test_task
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 18628
    - index: 30
      opcode: NOP
      size: 4
      address: 18632
    - index: 31
      opcode: NOP
      size: 4
      address: 18636
    - index: 32
      opcode: NOP
      size: 4
      address: 18640
    address: 18500
  - name: 1
    mapsto: do.body
    predecessors:
    - 0
    successors:
    - 2
    address: 18644
  - name: 2
    mapsto: do.end
    predecessors:
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 18644
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18648
    - index: 2
      opcode: NOP
      size: 4
      address: 18652
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18656
    - index: 4
      opcode: NOP
      size: 4
      address: 18660
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18664
    - index: 6
      opcode: NOP
      size: 4
      address: 18668
    - index: 7
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 18672
    - index: 8
      opcode: NOP
      size: 4
      address: 18676
    - index: 9
      opcode: MOV
      size: 4
      address: 18680
    - index: 10
      opcode: ADDi
      size: 4
      address: 18684
    address: 18644
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
- name: 7
  level: machinecode
  mapsto: init_sample_buffer
  arguments:
  - name: ! '%buf_size'
    index: 2
    registers:
    - r5
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 7620
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7624
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7628
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7632
    - index: 4
      opcode: LIl
      size: 8
      address: 7636
    - index: 5
      opcode: MOV
      size: 4
      address: 7644
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7648
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7652
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7656
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7660
    - index: 10
      opcode: NOP
      size: 4
      address: 7664
    - index: 11
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7668
    - index: 12
      opcode: NOP
      size: 4
      address: 7672
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7676
    - index: 14
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7680
    - index: 15
      opcode: NOP
      size: 4
      address: 7684
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7688
    - index: 17
      opcode: NOP
      size: 4
      address: 7692
    - index: 18
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7696
    - index: 19
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7700
    - index: 20
      opcode: NOP
      size: 4
      address: 7704
    - index: 21
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7708
    - index: 22
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7712
    - index: 23
      opcode: CALL
      callees:
      - clear_sample_buffer
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 7716
    - index: 24
      opcode: NOP
      size: 4
      address: 7720
    - index: 25
      opcode: MOV
      size: 4
      address: 7724
    - index: 26
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7728
    - index: 27
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7732
    - index: 28
      opcode: NOP
      size: 4
      address: 7736
    - index: 29
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7740
    - index: 30
      opcode: NOP
      size: 4
      address: 7744
    - index: 31
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7748
    - index: 32
      opcode: NOP
      size: 4
      address: 7752
    - index: 33
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7756
    - index: 34
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7760
    - index: 35
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7764
    - index: 36
      opcode: MOV
      size: 4
      address: 7768
    - index: 37
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7772
    - index: 38
      opcode: NOP
      size: 4
      address: 7776
    - index: 39
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7780
    - index: 40
      opcode: NOP
      size: 4
      address: 7784
    - index: 41
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7788
    - index: 42
      opcode: NOP
      size: 4
      address: 7792
    - index: 43
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 7796
    - index: 44
      opcode: NOP
      size: 4
      address: 7800
    - index: 45
      opcode: NOP
      size: 4
      address: 7804
    - index: 46
      opcode: ADDi
      size: 4
      address: 7808
    address: 7620
  subfunctions:
  - name: 0
    blocks:
    - 0
- name: 22
  level: machinecode
  mapsto: test_interpolate
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 13636
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13640
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13644
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13648
    - index: 4
      opcode: MFS
      size: 4
      address: 13652
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13656
    - index: 6
      opcode: LIl
      size: 8
      address: 13660
    - index: 7
      opcode: MOV
      size: 4
      address: 13668
    - index: 8
      opcode: LIl
      size: 8
      address: 13672
    - index: 9
      opcode: LIl
      size: 8
      address: 13680
    - index: 10
      opcode: LIl
      size: 8
      address: 13688
    - index: 11
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13696
    - index: 12
      opcode: NOP
      size: 4
      address: 13700
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13704
    - index: 14
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13708
    - index: 15
      opcode: NOP
      size: 4
      address: 13712
    - index: 16
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13716
    - index: 17
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13720
    - index: 18
      opcode: NOP
      size: 4
      address: 13724
    - index: 19
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13728
    - index: 20
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13732
    - index: 21
      opcode: NOP
      size: 4
      address: 13736
    - index: 22
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13740
    - index: 23
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 13744
    - index: 24
      opcode: NOP
      size: 4
      address: 13748
    - index: 25
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 13752
    - index: 26
      opcode: NOP
      size: 4
      address: 13756
    - index: 27
      opcode: SLi
      size: 4
      address: 13760
    - index: 28
      opcode: ORr
      size: 4
      address: 13764
    - index: 29
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13768
    - index: 30
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 13772
    - index: 31
      opcode: NOP
      size: 4
      address: 13776
    - index: 32
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 13780
    - index: 33
      opcode: NOP
      size: 4
      address: 13784
    - index: 34
      opcode: CALL
      callees:
      - sep
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 13788
    - index: 35
      opcode: SLi
      size: 4
      address: 13792
    - index: 36
      opcode: ORr
      size: 4
      address: 13796
    - index: 37
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13800
    - index: 38
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13804
    address: 13636
  - name: 1
    mapsto: for.cond
    predecessors:
    - 0
    - 9
    successors:
    - 2
    - 10
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13808
    - index: 1
      opcode: NOP
      size: 4
      address: 13812
    - index: 2
      opcode: LIi
      size: 4
      address: 13816
    - index: 3
      opcode: CMPULT
      size: 4
      address: 13820
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 10
      address: 13824
    - index: 5
      opcode: NOP
      size: 4
      address: 13828
    - index: 6
      opcode: NOP
      size: 4
      address: 13832
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 13836
    - index: 8
      opcode: NOP
      size: 4
      address: 13840
    - index: 9
      opcode: NOP
      size: 4
      address: 13844
    address: 13808
  - name: 2
    mapsto: for.body
    predecessors:
    - 1
    successors:
    - 3
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13848
    - index: 1
      opcode: NOP
      size: 4
      address: 13852
    - index: 2
      opcode: ADDi
      size: 4
      address: 13856
    - index: 3
      opcode: SHADD2r
      size: 4
      address: 13860
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13864
    - index: 5
      opcode: NOP
      size: 4
      address: 13868
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13872
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13876
    - index: 8
      opcode: NOP
      size: 4
      address: 13880
    - index: 9
      opcode: SHADD2r
      size: 4
      address: 13884
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13888
    - index: 11
      opcode: NOP
      size: 4
      address: 13892
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13896
    - index: 13
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13900
    - index: 14
      opcode: NOP
      size: 4
      address: 13904
    - index: 15
      opcode: ADDi
      size: 4
      address: 13908
    - index: 16
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13912
    address: 13848
  - name: 3
    mapsto: for.cond3
    predecessors:
    - 2
    - 7
    successors:
    - 4
    - 8
    loops:
    - 3
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13916
    - index: 1
      opcode: NOP
      size: 4
      address: 13920
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13924
    - index: 3
      opcode: NOP
      size: 4
      address: 13928
    - index: 4
      opcode: CMPLE
      size: 4
      address: 13932
    - index: 5
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 8
      address: 13936
    - index: 6
      opcode: NOP
      size: 4
      address: 13940
    - index: 7
      opcode: NOP
      size: 4
      address: 13944
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 13948
    - index: 9
      opcode: NOP
      size: 4
      address: 13952
    - index: 10
      opcode: NOP
      size: 4
      address: 13956
    address: 13916
  - name: 4
    mapsto: for.body5
    predecessors:
    - 3
    successors:
    - 5
    loops:
    - 3
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13960
    - index: 1
      opcode: NOP
      size: 4
      address: 13964
    - index: 2
      opcode: ADDi
      size: 4
      address: 13968
    - index: 3
      opcode: SHADDr
      size: 4
      address: 13972
    - index: 4
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 13976
    - index: 5
      opcode: NOP
      size: 4
      address: 13980
    - index: 6
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 13984
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13988
    - index: 8
      opcode: NOP
      size: 4
      address: 13992
    - index: 9
      opcode: SHADDr
      size: 4
      address: 13996
    - index: 10
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 14000
    - index: 11
      opcode: NOP
      size: 4
      address: 14004
    - index: 12
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 14008
    - index: 13
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14012
    - index: 14
      opcode: NOP
      size: 4
      address: 14016
    - index: 15
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14020
    - index: 16
      opcode: NOP
      size: 4
      address: 14024
    - index: 17
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14028
    - index: 18
      opcode: NOP
      size: 4
      address: 14032
    - index: 19
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 14036
    - index: 20
      opcode: NOP
      size: 4
      address: 14040
    - index: 21
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 14044
    - index: 22
      opcode: NOP
      size: 4
      address: 14048
    - index: 23
      opcode: CALL
      callees:
      - iinterpolate16
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 14052
    - index: 24
      opcode: NOP
      size: 4
      address: 14056
    - index: 25
      opcode: NOP
      size: 4
      address: 14060
    - index: 26
      opcode: NOP
      size: 4
      address: 14064
    - index: 27
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 14068
    address: 13960
  - name: 5
    mapsto: do.body
    predecessors:
    - 4
    successors:
    - 6
    loops:
    - 3
    - 1
    address: 14072
  - name: 6
    mapsto: do.end
    predecessors:
    - 5
    successors:
    - 7
    loops:
    - 3
    - 1
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 14072
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14080
    - index: 2
      opcode: NOP
      size: 4
      address: 14084
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14088
    - index: 4
      opcode: NOP
      size: 4
      address: 14092
    - index: 5
      opcode: SRi
      size: 4
      address: 14096
    - index: 6
      opcode: SLi
      size: 4
      address: 14100
    - index: 7
      opcode: ORr
      size: 4
      address: 14104
    - index: 8
      opcode: SLi
      size: 4
      address: 14108
    - index: 9
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 14112
    - index: 10
      opcode: NOP
      size: 4
      address: 14116
    - index: 11
      opcode: SRAi
      size: 4
      address: 14120
    - index: 12
      opcode: XORr
      size: 4
      address: 14124
    - index: 13
      opcode: XORr
      size: 4
      address: 14128
    - index: 14
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14132
    - index: 15
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14136
    address: 14072
  - name: 7
    mapsto: for.inc
    predecessors:
    - 6
    successors:
    - 3
    loops:
    - 3
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14140
    - index: 1
      opcode: NOP
      size: 4
      address: 14144
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 14148
    - index: 3
      opcode: ADDi
      size: 4
      address: 14152
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14156
    address: 14140
  - name: 8
    mapsto: for.end
    predecessors:
    - 3
    successors:
    - 9
    loops:
    - 1
    address: 14160
  - name: 9
    mapsto: for.inc9
    predecessors:
    - 8
    successors:
    - 1
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14160
    - index: 1
      opcode: NOP
      size: 4
      address: 14164
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 14168
    - index: 3
      opcode: ADDi
      size: 4
      address: 14172
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14176
    address: 14160
  - name: 10
    mapsto: for.end11
    predecessors:
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 14180
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14184
    - index: 2
      opcode: NOP
      size: 4
      address: 14188
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14192
    - index: 4
      opcode: NOP
      size: 4
      address: 14196
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14200
    - index: 6
      opcode: NOP
      size: 4
      address: 14204
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14208
    - index: 8
      opcode: NOP
      size: 4
      address: 14212
    - index: 9
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 14216
    - index: 10
      opcode: NOP
      size: 4
      address: 14220
    - index: 11
      opcode: MTS
      size: 4
      address: 14224
    - index: 12
      opcode: ADDi
      size: 4
      address: 14228
    address: 14180
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
    - 7
    - 8
    - 9
    - 10
- name: 24
  level: machinecode
  mapsto: test_merge_samples
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 14340
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14344
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14348
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14352
    - index: 4
      opcode: MFS
      size: 4
      address: 14356
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14360
    - index: 6
      opcode: LIl
      size: 8
      address: 14364
    - index: 7
      opcode: MOV
      size: 4
      address: 14372
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14376
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14380
    - index: 10
      opcode: ADDi
      size: 4
      address: 14384
    - index: 11
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14388
    - index: 12
      opcode: LIi
      size: 4
      address: 14392
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14396
    - index: 14
      opcode: LIl
      size: 8
      address: 14400
    - index: 15
      opcode: CALL
      callees:
      - sep
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 14408
    - index: 16
      opcode: NOP
      size: 4
      address: 14412
    - index: 17
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14416
    - index: 18
      opcode: MOV
      size: 4
      address: 14420
    - index: 19
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14424
    - index: 20
      opcode: NOP
      size: 4
      address: 14428
    - index: 21
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14432
    address: 14340
  - name: 1
    mapsto: do.body
    predecessors:
    - 0
    successors:
    - 2
    address: 14436
  - name: 2
    mapsto: do.end
    predecessors:
    - 1
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14436
    - index: 1
      opcode: NOP
      size: 4
      address: 14440
    - index: 2
      opcode: CALL
      callees:
      - clear_sample_buffer
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 14444
    - index: 3
      opcode: NOP
      size: 4
      address: 14448
    - index: 4
      opcode: NOP
      size: 4
      address: 14452
    - index: 5
      opcode: NOP
      size: 4
      address: 14456
    - index: 6
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14460
    - index: 7
      opcode: NOP
      size: 4
      address: 14464
    - index: 8
      opcode: LIl
      size: 8
      address: 14468
    - index: 9
      opcode: CALL
      callees:
      - print_sample_buffer
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 14476
    - index: 10
      opcode: NOP
      size: 4
      address: 14480
    - index: 11
      opcode: NOP
      size: 4
      address: 14484
    - index: 12
      opcode: NOP
      size: 4
      address: 14488
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14492
    address: 14436
  - name: 3
    mapsto: for.cond
    predecessors:
    - 2
    - 14
    successors:
    - 4
    - 15
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14496
    - index: 1
      opcode: NOP
      size: 4
      address: 14500
    - index: 2
      opcode: LIi
      size: 4
      address: 14504
    - index: 3
      opcode: CMPLT
      size: 4
      address: 14508
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 15
      address: 14512
    - index: 5
      opcode: NOP
      size: 4
      address: 14516
    - index: 6
      opcode: NOP
      size: 4
      address: 14520
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 14524
    - index: 8
      opcode: NOP
      size: 4
      address: 14528
    - index: 9
      opcode: NOP
      size: 4
      address: 14532
    address: 14496
  - name: 4
    mapsto: for.body
    predecessors:
    - 3
    successors:
    - 5
    loops:
    - 3
    address: 14536
  - name: 5
    mapsto: do.body1
    predecessors:
    - 4
    successors:
    - 6
    loops:
    - 3
    address: 14536
  - name: 6
    mapsto: do.end2
    predecessors:
    - 5
    successors:
    - 7
    loops:
    - 3
    instructions:
    - index: 0
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14536
    address: 14536
  - name: 7
    mapsto: for.cond3
    predecessors:
    - 6
    - 12
    successors:
    - 8
    - 13
    loops:
    - 7
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14540
    - index: 1
      opcode: NOP
      size: 4
      address: 14544
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14548
    - index: 3
      opcode: NOP
      size: 4
      address: 14552
    - index: 4
      opcode: CMPLE
      size: 4
      address: 14556
    - index: 5
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 13
      address: 14560
    - index: 6
      opcode: NOP
      size: 4
      address: 14564
    - index: 7
      opcode: NOP
      size: 4
      address: 14568
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 8
      address: 14572
    - index: 9
      opcode: NOP
      size: 4
      address: 14576
    - index: 10
      opcode: NOP
      size: 4
      address: 14580
    address: 14540
  - name: 8
    mapsto: for.body6
    predecessors:
    - 7
    successors:
    - 9
    - 10
    loops:
    - 7
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14584
    - index: 1
      opcode: NOP
      size: 4
      address: 14588
    - index: 2
      opcode: LIl
      size: 8
      address: 14592
    - index: 3
      opcode: MUL
      size: 4
      address: 14600
    - index: 4
      opcode: NOP
      size: 4
      address: 14604
    - index: 5
      opcode: MFS
      size: 4
      address: 14608
    - index: 6
      opcode: SRi
      size: 4
      address: 14612
    - index: 7
      opcode: SRAi
      size: 4
      address: 14616
    - index: 8
      opcode: ADDr
      size: 4
      address: 14620
    - index: 9
      opcode: SHADD2r
      size: 4
      address: 14624
    - index: 10
      opcode: SUBr
      size: 4
      address: 14628
    - index: 11
      opcode: MOVrp
      size: 4
      address: 14632
    - index: 12
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 10
      address: 14636
    - index: 13
      opcode: NOP
      size: 4
      address: 14640
    - index: 14
      opcode: NOP
      size: 4
      address: 14644
    - index: 15
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 9
      address: 14648
    - index: 16
      opcode: NOP
      size: 4
      address: 14652
    - index: 17
      opcode: NOP
      size: 4
      address: 14656
    address: 14584
  - name: 9
    mapsto: if.then
    predecessors:
    - 8
    successors:
    - 11
    loops:
    - 7
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14660
    - index: 1
      opcode: NOP
      size: 4
      address: 14664
    - index: 2
      opcode: SLi
      size: 4
      address: 14668
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14672
    - index: 4
      opcode: NOP
      size: 4
      address: 14676
    - index: 5
      opcode: ADDi
      size: 4
      address: 14680
    - index: 6
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 11
      address: 14684
    - index: 7
      opcode: SHADDr
      size: 4
      address: 14688
    - index: 8
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 14692
    address: 14660
  - name: 10
    mapsto: if.else
    predecessors:
    - 8
    successors:
    - 11
    loops:
    - 7
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14696
    - index: 1
      opcode: NOP
      size: 4
      address: 14700
    - index: 2
      opcode: ADDi
      size: 4
      address: 14704
    - index: 3
      opcode: SHADDr
      size: 4
      address: 14708
    - index: 4
      opcode: LIl
      size: 8
      address: 14712
    - index: 5
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 14720
    address: 14696
  - name: 11
    mapsto: if.end
    predecessors:
    - 10
    - 9
    successors:
    - 12
    loops:
    - 7
    - 3
    address: 14724
  - name: 12
    mapsto: for.inc
    predecessors:
    - 11
    successors:
    - 7
    loops:
    - 7
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14724
    - index: 1
      opcode: NOP
      size: 4
      address: 14728
    - index: 2
      opcode: ADDi
      size: 4
      address: 14732
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14736
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14740
    - index: 5
      opcode: NOP
      size: 4
      address: 14744
    - index: 6
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 7
      address: 14748
    - index: 7
      opcode: ADDi
      size: 4
      address: 14752
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14756
    address: 14724
  - name: 13
    mapsto: for.end
    predecessors:
    - 7
    successors:
    - 14
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14760
    - index: 1
      opcode: NOP
      size: 4
      address: 14764
    - index: 2
      opcode: CALL
      callees:
      - merge_samples
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 14768
    - index: 3
      opcode: NOP
      size: 4
      address: 14772
    - index: 4
      opcode: NOP
      size: 4
      address: 14776
    - index: 5
      opcode: ADDi
      size: 4
      address: 14780
    - index: 6
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14784
    - index: 7
      opcode: NOP
      size: 4
      address: 14788
    - index: 8
      opcode: LIl
      size: 8
      address: 14792
    - index: 9
      opcode: CALL
      callees:
      - print_sample_buffer
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 14800
    - index: 10
      opcode: NOP
      size: 4
      address: 14804
    - index: 11
      opcode: NOP
      size: 4
      address: 14808
    - index: 12
      opcode: NOP
      size: 4
      address: 14812
    address: 14760
  - name: 14
    mapsto: for.inc11
    predecessors:
    - 13
    successors:
    - 3
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14816
    - index: 1
      opcode: NOP
      size: 4
      address: 14820
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 14824
    - index: 3
      opcode: ADDi
      size: 4
      address: 14828
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14832
    address: 14816
  - name: 15
    mapsto: for.end13
    predecessors:
    - 3
    successors:
    - 16
    instructions:
    - index: 0
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14836
    address: 14836
  - name: 16
    mapsto: for.cond14
    predecessors:
    - 15
    - 24
    successors:
    - 17
    - 25
    loops:
    - 16
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14840
    - index: 1
      opcode: NOP
      size: 4
      address: 14844
    - index: 2
      opcode: LIi
      size: 4
      address: 14848
    - index: 3
      opcode: CMPLT
      size: 4
      address: 14852
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 25
      address: 14856
    - index: 5
      opcode: NOP
      size: 4
      address: 14860
    - index: 6
      opcode: NOP
      size: 4
      address: 14864
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 17
      address: 14868
    - index: 8
      opcode: NOP
      size: 4
      address: 14872
    - index: 9
      opcode: NOP
      size: 4
      address: 14876
    address: 14840
  - name: 17
    mapsto: for.body17
    predecessors:
    - 16
    successors:
    - 18
    loops:
    - 16
    address: 14880
  - name: 18
    mapsto: do.body18
    predecessors:
    - 17
    successors:
    - 19
    loops:
    - 16
    address: 14880
  - name: 19
    mapsto: do.end19
    predecessors:
    - 18
    successors:
    - 20
    loops:
    - 16
    instructions:
    - index: 0
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14880
    address: 14880
  - name: 20
    mapsto: for.cond20
    predecessors:
    - 19
    - 22
    successors:
    - 21
    - 23
    loops:
    - 20
    - 16
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14884
    - index: 1
      opcode: NOP
      size: 4
      address: 14888
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14892
    - index: 3
      opcode: NOP
      size: 4
      address: 14896
    - index: 4
      opcode: CMPLE
      size: 4
      address: 14900
    - index: 5
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 23
      address: 14904
    - index: 6
      opcode: NOP
      size: 4
      address: 14908
    - index: 7
      opcode: NOP
      size: 4
      address: 14912
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 21
      address: 14916
    - index: 9
      opcode: NOP
      size: 4
      address: 14920
    - index: 10
      opcode: NOP
      size: 4
      address: 14924
    address: 14884
  - name: 21
    mapsto: for.body24
    predecessors:
    - 20
    successors:
    - 22
    loops:
    - 20
    - 16
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14928
    - index: 1
      opcode: NOP
      size: 4
      address: 14932
    - index: 2
      opcode: SLi
      size: 4
      address: 14936
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14940
    - index: 4
      opcode: NOP
      size: 4
      address: 14944
    - index: 5
      opcode: ADDi
      size: 4
      address: 14948
    - index: 6
      opcode: SHADDr
      size: 4
      address: 14952
    - index: 7
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 14956
    address: 14928
  - name: 22
    mapsto: for.inc28
    predecessors:
    - 21
    successors:
    - 20
    loops:
    - 20
    - 16
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14960
    - index: 1
      opcode: NOP
      size: 4
      address: 14964
    - index: 2
      opcode: ADDi
      size: 4
      address: 14968
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14972
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14976
    - index: 5
      opcode: NOP
      size: 4
      address: 14980
    - index: 6
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 20
      address: 14984
    - index: 7
      opcode: ADDi
      size: 4
      address: 14988
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14992
    address: 14960
  - name: 23
    mapsto: for.end31
    predecessors:
    - 20
    successors:
    - 24
    loops:
    - 16
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14996
    - index: 1
      opcode: NOP
      size: 4
      address: 15000
    - index: 2
      opcode: CALL
      callees:
      - merge_samples
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 15004
    - index: 3
      opcode: NOP
      size: 4
      address: 15008
    - index: 4
      opcode: NOP
      size: 4
      address: 15012
    - index: 5
      opcode: ADDi
      size: 4
      address: 15016
    - index: 6
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15020
    - index: 7
      opcode: NOP
      size: 4
      address: 15024
    - index: 8
      opcode: LIl
      size: 8
      address: 15028
    - index: 9
      opcode: CALL
      callees:
      - print_sample_buffer
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 15036
    - index: 10
      opcode: NOP
      size: 4
      address: 15040
    - index: 11
      opcode: NOP
      size: 4
      address: 15044
    - index: 12
      opcode: NOP
      size: 4
      address: 15048
    address: 14996
  - name: 24
    mapsto: for.inc32
    predecessors:
    - 23
    successors:
    - 16
    loops:
    - 16
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15052
    - index: 1
      opcode: NOP
      size: 4
      address: 15056
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 16
      address: 15060
    - index: 3
      opcode: ADDi
      size: 4
      address: 15064
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15068
    address: 15052
  - name: 25
    mapsto: for.end34
    predecessors:
    - 16
    successors: []
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 15072
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15076
    - index: 2
      opcode: NOP
      size: 4
      address: 15080
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15084
    - index: 4
      opcode: NOP
      size: 4
      address: 15088
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15092
    - index: 6
      opcode: NOP
      size: 4
      address: 15096
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15100
    - index: 8
      opcode: NOP
      size: 4
      address: 15104
    - index: 9
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 15108
    - index: 10
      opcode: NOP
      size: 4
      address: 15112
    - index: 11
      opcode: MTS
      size: 4
      address: 15116
    - index: 12
      opcode: ADDi
      size: 4
      address: 15120
    address: 15072
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
    - 7
    - 8
    - 9
    - 10
    - 11
    - 12
    - 13
    - 14
    - 15
    - 16
    - 17
    - 18
    - 19
    - 20
    - 21
    - 22
    - 23
    - 24
    - 25
- name: 26
  level: machinecode
  mapsto: test_fft
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 15428
    - index: 1
      opcode: ADDi
      size: 4
      address: 15432
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15436
    - index: 3
      opcode: ADDi
      size: 4
      address: 15440
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15444
    - index: 5
      opcode: ADDi
      size: 4
      address: 15448
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15452
    - index: 7
      opcode: MFS
      size: 4
      address: 15456
    - index: 8
      opcode: ADDi
      size: 4
      address: 15460
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15464
    - index: 10
      opcode: LIl
      size: 8
      address: 15468
    - index: 11
      opcode: MOV
      size: 4
      address: 15476
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15480
    - index: 13
      opcode: ADDi
      size: 4
      address: 15484
    - index: 14
      opcode: LIi
      size: 4
      address: 15488
    - index: 15
      opcode: ADDi
      size: 4
      address: 15492
    - index: 16
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15496
    - index: 17
      opcode: LIl
      size: 8
      address: 15500
    - index: 18
      opcode: ADDi
      size: 4
      address: 15508
    - index: 19
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15512
    - index: 20
      opcode: LIl
      size: 8
      address: 15516
    - index: 21
      opcode: ADDi
      size: 4
      address: 15524
    - index: 22
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15528
    - index: 23
      opcode: CALL
      callees:
      - sep
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 15532
    - index: 24
      opcode: MOV
      size: 4
      address: 15536
    - index: 25
      opcode: ADDi
      size: 4
      address: 15540
    - index: 26
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15544
    - index: 27
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15548
    - index: 28
      opcode: NOP
      size: 4
      address: 15552
    - index: 29
      opcode: CALL
      callees:
      - clear_sample_buffer
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 15556
    - index: 30
      opcode: NOP
      size: 4
      address: 15560
    - index: 31
      opcode: NOP
      size: 4
      address: 15564
    - index: 32
      opcode: NOP
      size: 4
      address: 15568
    - index: 33
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15572
    - index: 34
      opcode: NOP
      size: 4
      address: 15576
    - index: 35
      opcode: ADDi
      size: 4
      address: 15580
    - index: 36
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15584
    - index: 37
      opcode: NOP
      size: 4
      address: 15588
    - index: 38
      opcode: CALL
      callees:
      - merge_samples
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 15592
    - index: 39
      opcode: NOP
      size: 4
      address: 15596
    - index: 40
      opcode: NOP
      size: 4
      address: 15600
    - index: 41
      opcode: NOP
      size: 4
      address: 15604
    - index: 42
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15608
    - index: 43
      opcode: NOP
      size: 4
      address: 15612
    - index: 44
      opcode: ADDi
      size: 4
      address: 15616
    - index: 45
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15620
    - index: 46
      opcode: NOP
      size: 4
      address: 15624
    - index: 47
      opcode: CALL
      callees:
      - merge_samples
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 15628
    - index: 48
      opcode: NOP
      size: 4
      address: 15632
    - index: 49
      opcode: NOP
      size: 4
      address: 15636
    - index: 50
      opcode: NOP
      size: 4
      address: 15640
    - index: 51
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15644
    - index: 52
      opcode: NOP
      size: 4
      address: 15648
    - index: 53
      opcode: LIl
      size: 8
      address: 15652
    - index: 54
      opcode: CALL
      callees:
      - print_sample_buffer
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 15660
    - index: 55
      opcode: NOP
      size: 4
      address: 15664
    - index: 56
      opcode: NOP
      size: 4
      address: 15668
    - index: 57
      opcode: NOP
      size: 4
      address: 15672
    - index: 58
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15676
    - index: 59
      opcode: NOP
      size: 4
      address: 15680
    - index: 60
      opcode: CALL
      callees:
      - fft
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 15684
    - index: 61
      opcode: NOP
      size: 4
      address: 15688
    - index: 62
      opcode: ADDi
      size: 4
      address: 15692
    - index: 63
      opcode: ADDi
      size: 4
      address: 15696
    - index: 64
      opcode: ADDi
      size: 4
      address: 15700
    - index: 65
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15704
    - index: 66
      opcode: ADDi
      size: 4
      address: 15708
    - index: 67
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15712
    - index: 68
      opcode: NOP
      size: 4
      address: 15716
    - index: 69
      opcode: ADDi
      size: 4
      address: 15720
    - index: 70
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15724
    - index: 71
      opcode: ADDi
      size: 4
      address: 15728
    - index: 72
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15732
    address: 15428
  - name: 1
    mapsto: for.cond
    predecessors:
    - 0
    - 7
    successors:
    - 2
    - 8
    loops:
    - 1
    instructions:
    - index: 0
      opcode: ADDi
      size: 4
      address: 15736
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15740
    - index: 2
      opcode: NOP
      size: 4
      address: 15744
    - index: 3
      opcode: LIi
      size: 4
      address: 15748
    - index: 4
      opcode: CMPULT
      size: 4
      address: 15752
    - index: 5
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 8
      address: 15756
    - index: 6
      opcode: NOP
      size: 4
      address: 15760
    - index: 7
      opcode: NOP
      size: 4
      address: 15764
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 15768
    - index: 9
      opcode: NOP
      size: 4
      address: 15772
    - index: 10
      opcode: NOP
      size: 4
      address: 15776
    address: 15736
  - name: 2
    mapsto: for.body
    predecessors:
    - 1
    successors:
    - 3
    - 4
    loops:
    - 1
    instructions:
    - index: 0
      opcode: ADDi
      size: 4
      address: 15780
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15784
    - index: 2
      opcode: NOP
      size: 4
      address: 15788
    - index: 3
      opcode: ADDi
      size: 4
      address: 15792
    - index: 4
      opcode: SHADDr
      size: 4
      address: 15796
    - index: 5
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 15800
    - index: 6
      opcode: NOP
      size: 4
      address: 15804
    - index: 7
      opcode: ADDi
      size: 4
      address: 15808
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15812
    - index: 9
      opcode: ADDi
      size: 4
      address: 15816
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15820
    - index: 11
      opcode: NOP
      size: 4
      address: 15824
    - index: 12
      opcode: ADDi
      size: 4
      address: 15828
    - index: 13
      opcode: SHADDr
      size: 4
      address: 15832
    - index: 14
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 15836
    - index: 15
      opcode: NOP
      size: 4
      address: 15840
    - index: 16
      opcode: ADDi
      size: 4
      address: 15844
    - index: 17
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15848
    - index: 18
      opcode: ADDi
      size: 4
      address: 15852
    - index: 19
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15856
    - index: 20
      opcode: NOP
      size: 4
      address: 15860
    - index: 21
      opcode: MUL
      size: 4
      address: 15864
    - index: 22
      opcode: NOP
      size: 4
      address: 15868
    - index: 23
      opcode: MFS
      size: 4
      address: 15872
    - index: 24
      opcode: SRAi
      size: 4
      address: 15876
    - index: 25
      opcode: MUL
      size: 4
      address: 15880
    - index: 26
      opcode: CALL
      callees:
      - isqrt32u
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 15884
    - index: 27
      opcode: MFS
      size: 4
      address: 15888
    - index: 28
      opcode: SRAi
      size: 4
      address: 15892
    - index: 29
      opcode: ADDr
      size: 4
      address: 15896
    - index: 30
      opcode: SLi
      size: 4
      address: 15900
    - index: 31
      opcode: LIl
      size: 8
      address: 15904
    - index: 32
      opcode: CMPLT
      size: 4
      address: 15912
    - index: 33
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 15916
    - index: 34
      opcode: ADDi
      size: 4
      address: 15920
    - index: 35
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15924
    - index: 36
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 15928
    - index: 37
      opcode: NOP
      size: 4
      address: 15932
    - index: 38
      opcode: NOP
      size: 4
      address: 15936
    address: 15780
  - name: 3
    mapsto: if.then
    predecessors:
    - 2
    successors:
    - 4
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 15940
    - index: 1
      opcode: ADDi
      size: 4
      address: 15948
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15952
    address: 15940
  - name: 4
    mapsto: if.end
    predecessors:
    - 2
    - 3
    successors:
    - 5
    loops:
    - 1
    address: 15956
  - name: 5
    mapsto: do.body
    predecessors:
    - 4
    successors:
    - 6
    loops:
    - 1
    address: 15956
  - name: 6
    mapsto: do.end
    predecessors:
    - 5
    successors:
    - 7
    loops:
    - 1
    instructions:
    - index: 0
      opcode: ADDi
      size: 4
      address: 15956
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15960
    - index: 2
      opcode: NOP
      size: 4
      address: 15964
    - index: 3
      opcode: ADDi
      size: 4
      address: 15968
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15972
    - index: 5
      opcode: NOP
      size: 4
      address: 15976
    - index: 6
      opcode: ADDi
      size: 4
      address: 15980
    - index: 7
      opcode: SHADD2r
      size: 4
      address: 15984
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15988
    address: 15956
  - name: 7
    mapsto: for.inc
    predecessors:
    - 6
    successors:
    - 1
    loops:
    - 1
    instructions:
    - index: 0
      opcode: ADDi
      size: 4
      address: 15992
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15996
    - index: 2
      opcode: NOP
      size: 4
      address: 16000
    - index: 3
      opcode: ADDi
      size: 4
      address: 16004
    - index: 4
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 16008
    - index: 5
      opcode: ADDi
      size: 4
      address: 16012
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16016
    address: 15992
  - name: 8
    mapsto: for.end
    predecessors:
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 16020
    - index: 1
      opcode: ADDi
      size: 4
      address: 16024
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16028
    - index: 3
      opcode: NOP
      size: 4
      address: 16032
    - index: 4
      opcode: ADDi
      size: 4
      address: 16036
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16040
    - index: 6
      opcode: NOP
      size: 4
      address: 16044
    - index: 7
      opcode: ADDi
      size: 4
      address: 16048
    - index: 8
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16052
    - index: 9
      opcode: NOP
      size: 4
      address: 16056
    - index: 10
      opcode: ADDi
      size: 4
      address: 16060
    - index: 11
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16064
    - index: 12
      opcode: NOP
      size: 4
      address: 16068
    - index: 13
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 16072
    - index: 14
      opcode: NOP
      size: 4
      address: 16076
    - index: 15
      opcode: MTS
      size: 4
      address: 16080
    - index: 16
      opcode: ADDi
      size: 4
      address: 16084
    address: 16020
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
    - 7
    - 8
- name: 27
  level: machinecode
  mapsto: test_task
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 16132
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16136
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16140
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16144
    - index: 4
      opcode: MFS
      size: 4
      address: 16148
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16152
    - index: 6
      opcode: LIl
      size: 8
      address: 16156
    - index: 7
      opcode: LIl
      size: 8
      address: 16164
    - index: 8
      opcode: CALL
      callees:
      - init_state
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 16172
    - index: 9
      opcode: MOV
      size: 4
      address: 16176
    - index: 10
      opcode: MOV
      size: 4
      address: 16180
    - index: 11
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16184
    - index: 12
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16188
    - index: 13
      opcode: NOP
      size: 4
      address: 16192
    - index: 14
      opcode: CALL
      callees:
      - init_state
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 16196
    - index: 15
      opcode: NOP
      size: 4
      address: 16200
    - index: 16
      opcode: NOP
      size: 4
      address: 16204
    - index: 17
      opcode: ADDi
      size: 4
      address: 16208
    - index: 18
      opcode: LIl
      size: 8
      address: 16212
    - index: 19
      opcode: CALL
      callees:
      - sep
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 16220
    - index: 20
      opcode: NOP
      size: 4
      address: 16224
    - index: 21
      opcode: NOP
      size: 4
      address: 16228
    - index: 22
      opcode: NOP
      size: 4
      address: 16232
    - index: 23
      opcode: LIl
      size: 8
      address: 16236
    - index: 24
      opcode: LIi
      size: 4
      address: 16244
    - index: 25
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16248
    - index: 26
      opcode: LIl
      size: 8
      address: 16252
    - index: 27
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16260
    - index: 28
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16264
    - index: 29
      opcode: LIl
      size: 8
      address: 16268
    - index: 30
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16276
    - index: 31
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16280
    address: 16132
  - name: 1
    mapsto: for.cond
    predecessors:
    - 0
    - 5
    successors:
    - 2
    - 6
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16284
    - index: 1
      opcode: NOP
      size: 4
      address: 16288
    - index: 2
      opcode: LIi
      size: 4
      address: 16292
    - index: 3
      opcode: CMPLT
      size: 4
      address: 16296
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 6
      address: 16300
    - index: 5
      opcode: NOP
      size: 4
      address: 16304
    - index: 6
      opcode: NOP
      size: 4
      address: 16308
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 16312
    - index: 8
      opcode: NOP
      size: 4
      address: 16316
    - index: 9
      opcode: NOP
      size: 4
      address: 16320
    address: 16284
  - name: 2
    mapsto: for.body
    predecessors:
    - 1
    successors:
    - 3
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16324
    - index: 1
      opcode: NOP
      size: 4
      address: 16328
    - index: 2
      opcode: SLi
      size: 4
      address: 16332
    - index: 3
      opcode: ADDl
      size: 8
      address: 16336
    - index: 4
      opcode: LIi
      size: 4
      address: 16344
    - index: 5
      opcode: MUL
      size: 4
      address: 16348
    - index: 6
      opcode: NOP
      size: 4
      address: 16352
    - index: 7
      opcode: MFS
      size: 4
      address: 16356
    - index: 8
      opcode: ADDl
      size: 8
      address: 16360
    - index: 9
      opcode: SHADD2l
      size: 8
      address: 16368
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16376
    - index: 11
      opcode: NOP
      size: 4
      address: 16380
    - index: 12
      opcode: CALL
      callees:
      - task
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 16384
    - index: 13
      opcode: NOP
      size: 4
      address: 16388
    - index: 14
      opcode: NOP
      size: 4
      address: 16392
    - index: 15
      opcode: NOP
      size: 4
      address: 16396
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16400
    - index: 17
      opcode: NOP
      size: 4
      address: 16404
    - index: 18
      opcode: SHADDl
      size: 8
      address: 16408
    - index: 19
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 16416
    address: 16324
  - name: 3
    mapsto: do.body
    predecessors:
    - 2
    successors:
    - 4
    loops:
    - 1
    address: 16420
  - name: 4
    mapsto: do.end
    predecessors:
    - 3
    successors:
    - 5
    loops:
    - 1
    address: 16420
  - name: 5
    mapsto: for.inc
    predecessors:
    - 4
    successors:
    - 1
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16420
    - index: 1
      opcode: NOP
      size: 4
      address: 16424
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 16428
    - index: 3
      opcode: ADDi
      size: 4
      address: 16432
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16436
    address: 16420
  - name: 6
    mapsto: for.end
    predecessors:
    - 1
    successors:
    - 7
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 16440
    - index: 1
      opcode: CALL
      callees:
      - sep
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 16448
    - index: 2
      opcode: NOP
      size: 4
      address: 16452
    - index: 3
      opcode: NOP
      size: 4
      address: 16456
    - index: 4
      opcode: NOP
      size: 4
      address: 16460
    - index: 5
      opcode: LIl
      size: 8
      address: 16464
    - index: 6
      opcode: LIi
      size: 4
      address: 16472
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16476
    - index: 8
      opcode: LIl
      size: 8
      address: 16480
    - index: 9
      opcode: ADDi
      size: 4
      address: 16488
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16492
    - index: 11
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16496
    - index: 12
      opcode: LIl
      size: 8
      address: 16500
    - index: 13
      opcode: ADDi
      size: 4
      address: 16508
    - index: 14
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16512
    - index: 15
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16516
    address: 16440
  - name: 7
    mapsto: for.cond4
    predecessors:
    - 6
    - 11
    successors:
    - 8
    - 12
    loops:
    - 7
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16520
    - index: 1
      opcode: NOP
      size: 4
      address: 16524
    - index: 2
      opcode: LIi
      size: 4
      address: 16528
    - index: 3
      opcode: CMPLT
      size: 4
      address: 16532
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 12
      address: 16536
    - index: 5
      opcode: NOP
      size: 4
      address: 16540
    - index: 6
      opcode: NOP
      size: 4
      address: 16544
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 8
      address: 16548
    - index: 8
      opcode: NOP
      size: 4
      address: 16552
    - index: 9
      opcode: NOP
      size: 4
      address: 16556
    address: 16520
  - name: 8
    mapsto: for.body6
    predecessors:
    - 7
    successors:
    - 9
    loops:
    - 7
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16560
    - index: 1
      opcode: NOP
      size: 4
      address: 16564
    - index: 2
      opcode: SLi
      size: 4
      address: 16568
    - index: 3
      opcode: ADDl
      size: 8
      address: 16572
    - index: 4
      opcode: LIi
      size: 4
      address: 16580
    - index: 5
      opcode: MUL
      size: 4
      address: 16584
    - index: 6
      opcode: NOP
      size: 4
      address: 16588
    - index: 7
      opcode: MFS
      size: 4
      address: 16592
    - index: 8
      opcode: ADDl
      size: 8
      address: 16596
    - index: 9
      opcode: SHADD2l
      size: 8
      address: 16604
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16612
    - index: 11
      opcode: NOP
      size: 4
      address: 16616
    - index: 12
      opcode: CALL
      callees:
      - task
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 16620
    - index: 13
      opcode: NOP
      size: 4
      address: 16624
    - index: 14
      opcode: NOP
      size: 4
      address: 16628
    - index: 15
      opcode: NOP
      size: 4
      address: 16632
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16636
    - index: 17
      opcode: NOP
      size: 4
      address: 16640
    - index: 18
      opcode: SHADDl
      size: 8
      address: 16644
    - index: 19
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 16652
    address: 16560
  - name: 9
    mapsto: do.body12
    predecessors:
    - 8
    successors:
    - 10
    loops:
    - 7
    address: 16656
  - name: 10
    mapsto: do.end13
    predecessors:
    - 9
    successors:
    - 11
    loops:
    - 7
    address: 16656
  - name: 11
    mapsto: for.inc14
    predecessors:
    - 10
    successors:
    - 7
    loops:
    - 7
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16656
    - index: 1
      opcode: NOP
      size: 4
      address: 16660
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 7
      address: 16664
    - index: 3
      opcode: ADDi
      size: 4
      address: 16668
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16672
    address: 16656
  - name: 12
    mapsto: for.end16
    predecessors:
    - 7
    successors:
    - 13
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 16676
    - index: 1
      opcode: CALL
      callees:
      - sep
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 16684
    - index: 2
      opcode: NOP
      size: 4
      address: 16688
    - index: 3
      opcode: NOP
      size: 4
      address: 16692
    - index: 4
      opcode: NOP
      size: 4
      address: 16696
    - index: 5
      opcode: LIl
      size: 8
      address: 16700
    - index: 6
      opcode: LIi
      size: 4
      address: 16708
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16712
    - index: 8
      opcode: LIl
      size: 8
      address: 16716
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16724
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16728
    - index: 11
      opcode: LIl
      size: 8
      address: 16732
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16740
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16744
    address: 16676
  - name: 13
    mapsto: for.cond17
    predecessors:
    - 12
    - 17
    successors:
    - 14
    - 18
    loops:
    - 13
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16748
    - index: 1
      opcode: NOP
      size: 4
      address: 16752
    - index: 2
      opcode: LIi
      size: 4
      address: 16756
    - index: 3
      opcode: CMPLT
      size: 4
      address: 16760
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 18
      address: 16764
    - index: 5
      opcode: NOP
      size: 4
      address: 16768
    - index: 6
      opcode: NOP
      size: 4
      address: 16772
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 14
      address: 16776
    - index: 8
      opcode: NOP
      size: 4
      address: 16780
    - index: 9
      opcode: NOP
      size: 4
      address: 16784
    address: 16748
  - name: 14
    mapsto: for.body19
    predecessors:
    - 13
    successors:
    - 15
    loops:
    - 13
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16788
    - index: 1
      opcode: NOP
      size: 4
      address: 16792
    - index: 2
      opcode: SLi
      size: 4
      address: 16796
    - index: 3
      opcode: ADDl
      size: 8
      address: 16800
    - index: 4
      opcode: LIi
      size: 4
      address: 16808
    - index: 5
      opcode: MUL
      size: 4
      address: 16812
    - index: 6
      opcode: NOP
      size: 4
      address: 16816
    - index: 7
      opcode: MFS
      size: 4
      address: 16820
    - index: 8
      opcode: ADDl
      size: 8
      address: 16824
    - index: 9
      opcode: SHADD2l
      size: 8
      address: 16832
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16840
    - index: 11
      opcode: NOP
      size: 4
      address: 16844
    - index: 12
      opcode: CALL
      callees:
      - task
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 16848
    - index: 13
      opcode: NOP
      size: 4
      address: 16852
    - index: 14
      opcode: NOP
      size: 4
      address: 16856
    - index: 15
      opcode: NOP
      size: 4
      address: 16860
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16864
    - index: 17
      opcode: NOP
      size: 4
      address: 16868
    - index: 18
      opcode: SHADDl
      size: 8
      address: 16872
    - index: 19
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 16880
    address: 16788
  - name: 15
    mapsto: do.body25
    predecessors:
    - 14
    successors:
    - 16
    loops:
    - 13
    address: 16884
  - name: 16
    mapsto: do.end26
    predecessors:
    - 15
    successors:
    - 17
    loops:
    - 13
    address: 16884
  - name: 17
    mapsto: for.inc27
    predecessors:
    - 16
    successors:
    - 13
    loops:
    - 13
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16884
    - index: 1
      opcode: NOP
      size: 4
      address: 16888
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 13
      address: 16892
    - index: 3
      opcode: ADDi
      size: 4
      address: 16896
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16900
    address: 16884
  - name: 18
    mapsto: for.end29
    predecessors:
    - 13
    successors:
    - 19
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 16904
    - index: 1
      opcode: CALL
      callees:
      - sep
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 16912
    - index: 2
      opcode: NOP
      size: 4
      address: 16916
    - index: 3
      opcode: NOP
      size: 4
      address: 16920
    - index: 4
      opcode: NOP
      size: 4
      address: 16924
    - index: 5
      opcode: LIl
      size: 8
      address: 16928
    - index: 6
      opcode: LIi
      size: 4
      address: 16936
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16940
    - index: 8
      opcode: LIl
      size: 8
      address: 16944
    - index: 9
      opcode: ADDi
      size: 4
      address: 16952
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16956
    - index: 11
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16960
    - index: 12
      opcode: LIl
      size: 8
      address: 16964
    - index: 13
      opcode: ADDi
      size: 4
      address: 16972
    - index: 14
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16976
    - index: 15
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 16980
    address: 16904
  - name: 19
    mapsto: for.cond30
    predecessors:
    - 18
    - 23
    successors:
    - 20
    - 24
    loops:
    - 19
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 16984
    - index: 1
      opcode: NOP
      size: 4
      address: 16988
    - index: 2
      opcode: LIi
      size: 4
      address: 16992
    - index: 3
      opcode: CMPLT
      size: 4
      address: 16996
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 24
      address: 17000
    - index: 5
      opcode: NOP
      size: 4
      address: 17004
    - index: 6
      opcode: NOP
      size: 4
      address: 17008
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 20
      address: 17012
    - index: 8
      opcode: NOP
      size: 4
      address: 17016
    - index: 9
      opcode: NOP
      size: 4
      address: 17020
    address: 16984
  - name: 20
    mapsto: for.body32
    predecessors:
    - 19
    successors:
    - 21
    loops:
    - 19
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17024
    - index: 1
      opcode: NOP
      size: 4
      address: 17028
    - index: 2
      opcode: SLi
      size: 4
      address: 17032
    - index: 3
      opcode: ADDl
      size: 8
      address: 17036
    - index: 4
      opcode: LIi
      size: 4
      address: 17044
    - index: 5
      opcode: MUL
      size: 4
      address: 17048
    - index: 6
      opcode: NOP
      size: 4
      address: 17052
    - index: 7
      opcode: MFS
      size: 4
      address: 17056
    - index: 8
      opcode: ADDl
      size: 8
      address: 17060
    - index: 9
      opcode: SHADD2l
      size: 8
      address: 17068
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17076
    - index: 11
      opcode: NOP
      size: 4
      address: 17080
    - index: 12
      opcode: CALL
      callees:
      - task
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 17084
    - index: 13
      opcode: NOP
      size: 4
      address: 17088
    - index: 14
      opcode: NOP
      size: 4
      address: 17092
    - index: 15
      opcode: NOP
      size: 4
      address: 17096
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17100
    - index: 17
      opcode: NOP
      size: 4
      address: 17104
    - index: 18
      opcode: SHADDl
      size: 8
      address: 17108
    - index: 19
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 17116
    address: 17024
  - name: 21
    mapsto: do.body38
    predecessors:
    - 20
    successors:
    - 22
    loops:
    - 19
    address: 17120
  - name: 22
    mapsto: do.end39
    predecessors:
    - 21
    successors:
    - 23
    loops:
    - 19
    address: 17120
  - name: 23
    mapsto: for.inc40
    predecessors:
    - 22
    successors:
    - 19
    loops:
    - 19
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17120
    - index: 1
      opcode: NOP
      size: 4
      address: 17124
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 19
      address: 17128
    - index: 3
      opcode: ADDi
      size: 4
      address: 17132
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17136
    address: 17120
  - name: 24
    mapsto: for.end42
    predecessors:
    - 19
    successors:
    - 25
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 17140
    - index: 1
      opcode: CALL
      callees:
      - sep
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 17148
    - index: 2
      opcode: NOP
      size: 4
      address: 17152
    - index: 3
      opcode: NOP
      size: 4
      address: 17156
    - index: 4
      opcode: NOP
      size: 4
      address: 17160
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17164
    address: 17140
  - name: 25
    mapsto: for.cond43
    predecessors:
    - 24
    - 27
    successors:
    - 26
    - 28
    loops:
    - 25
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17168
    - index: 1
      opcode: NOP
      size: 4
      address: 17172
    - index: 2
      opcode: LIi
      size: 4
      address: 17176
    - index: 3
      opcode: CMPLT
      size: 4
      address: 17180
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 28
      address: 17184
    - index: 5
      opcode: NOP
      size: 4
      address: 17188
    - index: 6
      opcode: NOP
      size: 4
      address: 17192
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 26
      address: 17196
    - index: 8
      opcode: NOP
      size: 4
      address: 17200
    - index: 9
      opcode: NOP
      size: 4
      address: 17204
    address: 17168
  - name: 26
    mapsto: for.body45
    predecessors:
    - 25
    successors:
    - 27
    loops:
    - 25
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17208
    - index: 1
      opcode: NOP
      size: 4
      address: 17212
    - index: 2
      opcode: SHADDl
      size: 8
      address: 17216
    - index: 3
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 17224
    address: 17208
  - name: 27
    mapsto: for.inc47
    predecessors:
    - 26
    successors:
    - 25
    loops:
    - 25
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17228
    - index: 1
      opcode: NOP
      size: 4
      address: 17232
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 25
      address: 17236
    - index: 3
      opcode: ADDi
      size: 4
      address: 17240
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17244
    address: 17228
  - name: 28
    mapsto: for.end49
    predecessors:
    - 25
    successors:
    - 29
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 17248
    - index: 1
      opcode: LIi
      size: 4
      address: 17256
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17260
    - index: 3
      opcode: LIl
      size: 8
      address: 17264
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17272
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17276
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17280
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17284
    address: 17248
  - name: 29
    mapsto: for.cond50
    predecessors:
    - 28
    - 33
    successors:
    - 30
    - 34
    loops:
    - 29
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17288
    - index: 1
      opcode: NOP
      size: 4
      address: 17292
    - index: 2
      opcode: LIi
      size: 4
      address: 17296
    - index: 3
      opcode: CMPLT
      size: 4
      address: 17300
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 34
      address: 17304
    - index: 5
      opcode: NOP
      size: 4
      address: 17308
    - index: 6
      opcode: NOP
      size: 4
      address: 17312
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 30
      address: 17316
    - index: 8
      opcode: NOP
      size: 4
      address: 17320
    - index: 9
      opcode: NOP
      size: 4
      address: 17324
    address: 17288
  - name: 30
    mapsto: for.body52
    predecessors:
    - 29
    successors:
    - 31
    loops:
    - 29
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17328
    - index: 1
      opcode: NOP
      size: 4
      address: 17332
    - index: 2
      opcode: SLi
      size: 4
      address: 17336
    - index: 3
      opcode: ADDl
      size: 8
      address: 17340
    - index: 4
      opcode: LIi
      size: 4
      address: 17348
    - index: 5
      opcode: MUL
      size: 4
      address: 17352
    - index: 6
      opcode: NOP
      size: 4
      address: 17356
    - index: 7
      opcode: MFS
      size: 4
      address: 17360
    - index: 8
      opcode: ADDl
      size: 8
      address: 17364
    - index: 9
      opcode: SHADD2l
      size: 8
      address: 17372
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17380
    - index: 11
      opcode: NOP
      size: 4
      address: 17384
    - index: 12
      opcode: CALL
      callees:
      - task
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 17388
    - index: 13
      opcode: NOP
      size: 4
      address: 17392
    - index: 14
      opcode: NOP
      size: 4
      address: 17396
    - index: 15
      opcode: NOP
      size: 4
      address: 17400
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17404
    - index: 17
      opcode: NOP
      size: 4
      address: 17408
    - index: 18
      opcode: SHADDl
      size: 8
      address: 17412
    - index: 19
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 17420
    address: 17328
  - name: 31
    mapsto: do.body58
    predecessors:
    - 30
    successors:
    - 32
    loops:
    - 29
    address: 17424
  - name: 32
    mapsto: do.end59
    predecessors:
    - 31
    successors:
    - 33
    loops:
    - 29
    address: 17424
  - name: 33
    mapsto: for.inc60
    predecessors:
    - 32
    successors:
    - 29
    loops:
    - 29
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17424
    - index: 1
      opcode: NOP
      size: 4
      address: 17428
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 29
      address: 17432
    - index: 3
      opcode: ADDi
      size: 4
      address: 17436
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17440
    address: 17424
  - name: 34
    mapsto: for.end62
    predecessors:
    - 29
    successors:
    - 35
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 17444
    - index: 1
      opcode: CALL
      callees:
      - sep
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 17452
    - index: 2
      opcode: NOP
      size: 4
      address: 17456
    - index: 3
      opcode: NOP
      size: 4
      address: 17460
    - index: 4
      opcode: NOP
      size: 4
      address: 17464
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17468
    address: 17444
  - name: 35
    mapsto: for.cond63
    predecessors:
    - 34
    - 37
    successors:
    - 36
    - 38
    loops:
    - 35
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17472
    - index: 1
      opcode: NOP
      size: 4
      address: 17476
    - index: 2
      opcode: LIi
      size: 4
      address: 17480
    - index: 3
      opcode: CMPLT
      size: 4
      address: 17484
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 38
      address: 17488
    - index: 5
      opcode: NOP
      size: 4
      address: 17492
    - index: 6
      opcode: NOP
      size: 4
      address: 17496
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 36
      address: 17500
    - index: 8
      opcode: NOP
      size: 4
      address: 17504
    - index: 9
      opcode: NOP
      size: 4
      address: 17508
    address: 17472
  - name: 36
    mapsto: for.body65
    predecessors:
    - 35
    successors:
    - 37
    loops:
    - 35
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17512
    - index: 1
      opcode: NOP
      size: 4
      address: 17516
    - index: 2
      opcode: SHADDl
      size: 8
      address: 17520
    - index: 3
      opcode: LIl
      size: 8
      address: 17528
    - index: 4
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 17536
    address: 17512
  - name: 37
    mapsto: for.inc67
    predecessors:
    - 36
    successors:
    - 35
    loops:
    - 35
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17540
    - index: 1
      opcode: NOP
      size: 4
      address: 17544
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 35
      address: 17548
    - index: 3
      opcode: ADDi
      size: 4
      address: 17552
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17556
    address: 17540
  - name: 38
    mapsto: for.end69
    predecessors:
    - 35
    successors:
    - 39
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 17560
    - index: 1
      opcode: LIl
      size: 8
      address: 17568
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17576
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17580
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17584
    address: 17560
  - name: 39
    mapsto: for.cond70
    predecessors:
    - 38
    - 43
    successors:
    - 40
    - 44
    loops:
    - 39
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17588
    - index: 1
      opcode: NOP
      size: 4
      address: 17592
    - index: 2
      opcode: LIi
      size: 4
      address: 17596
    - index: 3
      opcode: CMPLT
      size: 4
      address: 17600
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 44
      address: 17604
    - index: 5
      opcode: NOP
      size: 4
      address: 17608
    - index: 6
      opcode: NOP
      size: 4
      address: 17612
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 40
      address: 17616
    - index: 8
      opcode: NOP
      size: 4
      address: 17620
    - index: 9
      opcode: NOP
      size: 4
      address: 17624
    address: 17588
  - name: 40
    mapsto: for.body72
    predecessors:
    - 39
    successors:
    - 41
    loops:
    - 39
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17628
    - index: 1
      opcode: NOP
      size: 4
      address: 17632
    - index: 2
      opcode: SLi
      size: 4
      address: 17636
    - index: 3
      opcode: ADDl
      size: 8
      address: 17640
    - index: 4
      opcode: LIi
      size: 4
      address: 17648
    - index: 5
      opcode: MUL
      size: 4
      address: 17652
    - index: 6
      opcode: NOP
      size: 4
      address: 17656
    - index: 7
      opcode: MFS
      size: 4
      address: 17660
    - index: 8
      opcode: ADDl
      size: 8
      address: 17664
    - index: 9
      opcode: SHADD2l
      size: 8
      address: 17672
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17680
    - index: 11
      opcode: NOP
      size: 4
      address: 17684
    - index: 12
      opcode: CALL
      callees:
      - task
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 17688
    - index: 13
      opcode: NOP
      size: 4
      address: 17692
    - index: 14
      opcode: NOP
      size: 4
      address: 17696
    - index: 15
      opcode: NOP
      size: 4
      address: 17700
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17704
    - index: 17
      opcode: NOP
      size: 4
      address: 17708
    - index: 18
      opcode: SHADDl
      size: 8
      address: 17712
    - index: 19
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 17720
    address: 17628
  - name: 41
    mapsto: do.body78
    predecessors:
    - 40
    successors:
    - 42
    loops:
    - 39
    address: 17724
  - name: 42
    mapsto: do.end79
    predecessors:
    - 41
    successors:
    - 43
    loops:
    - 39
    address: 17724
  - name: 43
    mapsto: for.inc80
    predecessors:
    - 42
    successors:
    - 39
    loops:
    - 39
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17724
    - index: 1
      opcode: NOP
      size: 4
      address: 17728
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 39
      address: 17732
    - index: 3
      opcode: ADDi
      size: 4
      address: 17736
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17740
    address: 17724
  - name: 44
    mapsto: for.end82
    predecessors:
    - 39
    successors:
    - 45
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 17744
    - index: 1
      opcode: CALL
      callees:
      - sep
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 17752
    - index: 2
      opcode: NOP
      size: 4
      address: 17756
    - index: 3
      opcode: NOP
      size: 4
      address: 17760
    - index: 4
      opcode: NOP
      size: 4
      address: 17764
    - index: 5
      opcode: LIl
      size: 8
      address: 17768
    - index: 6
      opcode: LIl
      size: 8
      address: 17776
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17784
    - index: 8
      opcode: LIl
      size: 8
      address: 17788
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17796
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17800
    address: 17744
  - name: 45
    mapsto: for.cond83
    predecessors:
    - 44
    - 49
    successors:
    - 46
    - 50
    loops:
    - 45
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17804
    - index: 1
      opcode: NOP
      size: 4
      address: 17808
    - index: 2
      opcode: LIi
      size: 4
      address: 17812
    - index: 3
      opcode: CMPLT
      size: 4
      address: 17816
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 50
      address: 17820
    - index: 5
      opcode: NOP
      size: 4
      address: 17824
    - index: 6
      opcode: NOP
      size: 4
      address: 17828
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 46
      address: 17832
    - index: 8
      opcode: NOP
      size: 4
      address: 17836
    - index: 9
      opcode: NOP
      size: 4
      address: 17840
    address: 17804
  - name: 46
    mapsto: for.body85
    predecessors:
    - 45
    successors:
    - 47
    loops:
    - 45
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17844
    - index: 1
      opcode: NOP
      size: 4
      address: 17848
    - index: 2
      opcode: SLi
      size: 4
      address: 17852
    - index: 3
      opcode: ADDl
      size: 8
      address: 17856
    - index: 4
      opcode: LIi
      size: 4
      address: 17864
    - index: 5
      opcode: MUL
      size: 4
      address: 17868
    - index: 6
      opcode: NOP
      size: 4
      address: 17872
    - index: 7
      opcode: MFS
      size: 4
      address: 17876
    - index: 8
      opcode: ADDl
      size: 8
      address: 17880
    - index: 9
      opcode: SHADD2l
      size: 8
      address: 17888
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17896
    - index: 11
      opcode: NOP
      size: 4
      address: 17900
    - index: 12
      opcode: CALL
      callees:
      - task
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 17904
    - index: 13
      opcode: NOP
      size: 4
      address: 17908
    - index: 14
      opcode: NOP
      size: 4
      address: 17912
    - index: 15
      opcode: NOP
      size: 4
      address: 17916
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17920
    - index: 17
      opcode: NOP
      size: 4
      address: 17924
    - index: 18
      opcode: SHADDl
      size: 8
      address: 17928
    - index: 19
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 17936
    address: 17844
  - name: 47
    mapsto: do.body91
    predecessors:
    - 46
    successors:
    - 48
    loops:
    - 45
    address: 17940
  - name: 48
    mapsto: do.end92
    predecessors:
    - 47
    successors:
    - 49
    loops:
    - 45
    address: 17940
  - name: 49
    mapsto: for.inc93
    predecessors:
    - 48
    successors:
    - 45
    loops:
    - 45
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 17940
    - index: 1
      opcode: NOP
      size: 4
      address: 17944
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 45
      address: 17948
    - index: 3
      opcode: ADDi
      size: 4
      address: 17952
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17956
    address: 17940
  - name: 50
    mapsto: for.end95
    predecessors:
    - 45
    successors:
    - 51
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 17960
    - index: 1
      opcode: CALL
      callees:
      - sep
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 17968
    - index: 2
      opcode: NOP
      size: 4
      address: 17972
    - index: 3
      opcode: NOP
      size: 4
      address: 17976
    - index: 4
      opcode: NOP
      size: 4
      address: 17980
    - index: 5
      opcode: LIl
      size: 8
      address: 17984
    - index: 6
      opcode: LIi
      size: 4
      address: 17992
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 17996
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18000
    - index: 9
      opcode: LIl
      size: 8
      address: 18004
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18012
    - index: 11
      opcode: LIl
      size: 8
      address: 18016
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18024
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18028
    address: 17960
  - name: 51
    mapsto: for.cond96
    predecessors:
    - 50
    - 55
    successors:
    - 52
    - 56
    loops:
    - 51
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18032
    - index: 1
      opcode: NOP
      size: 4
      address: 18036
    - index: 2
      opcode: LIi
      size: 4
      address: 18040
    - index: 3
      opcode: CMPLT
      size: 4
      address: 18044
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 56
      address: 18048
    - index: 5
      opcode: NOP
      size: 4
      address: 18052
    - index: 6
      opcode: NOP
      size: 4
      address: 18056
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 52
      address: 18060
    - index: 8
      opcode: NOP
      size: 4
      address: 18064
    - index: 9
      opcode: NOP
      size: 4
      address: 18068
    address: 18032
  - name: 52
    mapsto: for.body98
    predecessors:
    - 51
    successors:
    - 53
    loops:
    - 51
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18072
    - index: 1
      opcode: NOP
      size: 4
      address: 18076
    - index: 2
      opcode: SLi
      size: 4
      address: 18080
    - index: 3
      opcode: ADDl
      size: 8
      address: 18084
    - index: 4
      opcode: LIi
      size: 4
      address: 18092
    - index: 5
      opcode: MUL
      size: 4
      address: 18096
    - index: 6
      opcode: NOP
      size: 4
      address: 18100
    - index: 7
      opcode: MFS
      size: 4
      address: 18104
    - index: 8
      opcode: ADDl
      size: 8
      address: 18108
    - index: 9
      opcode: SHADD2l
      size: 8
      address: 18116
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18124
    - index: 11
      opcode: NOP
      size: 4
      address: 18128
    - index: 12
      opcode: CALL
      callees:
      - task
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 18132
    - index: 13
      opcode: NOP
      size: 4
      address: 18136
    - index: 14
      opcode: NOP
      size: 4
      address: 18140
    - index: 15
      opcode: NOP
      size: 4
      address: 18144
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18148
    - index: 17
      opcode: NOP
      size: 4
      address: 18152
    - index: 18
      opcode: SHADDl
      size: 8
      address: 18156
    - index: 19
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 18164
    address: 18072
  - name: 53
    mapsto: do.body104
    predecessors:
    - 52
    successors:
    - 54
    loops:
    - 51
    address: 18168
  - name: 54
    mapsto: do.end105
    predecessors:
    - 53
    successors:
    - 55
    loops:
    - 51
    address: 18168
  - name: 55
    mapsto: for.inc106
    predecessors:
    - 54
    successors:
    - 51
    loops:
    - 51
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18168
    - index: 1
      opcode: NOP
      size: 4
      address: 18172
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 51
      address: 18176
    - index: 3
      opcode: ADDi
      size: 4
      address: 18180
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18184
    address: 18168
  - name: 56
    mapsto: for.end108
    predecessors:
    - 51
    successors:
    - 57
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 18188
    - index: 1
      opcode: CALL
      callees:
      - sep
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 18196
    - index: 2
      opcode: NOP
      size: 4
      address: 18200
    - index: 3
      opcode: NOP
      size: 4
      address: 18204
    - index: 4
      opcode: NOP
      size: 4
      address: 18208
    - index: 5
      opcode: LIl
      size: 8
      address: 18212
    - index: 6
      opcode: ADDi
      size: 4
      address: 18220
    - index: 7
      opcode: LIl
      size: 8
      address: 18224
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18232
    - index: 9
      opcode: LIl
      size: 8
      address: 18236
    - index: 10
      opcode: ADDi
      size: 4
      address: 18244
    - index: 11
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18248
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18252
    address: 18188
  - name: 57
    mapsto: for.cond109
    predecessors:
    - 56
    - 61
    successors:
    - 58
    - 62
    loops:
    - 57
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18256
    - index: 1
      opcode: NOP
      size: 4
      address: 18260
    - index: 2
      opcode: LIi
      size: 4
      address: 18264
    - index: 3
      opcode: CMPLT
      size: 4
      address: 18268
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 62
      address: 18272
    - index: 5
      opcode: NOP
      size: 4
      address: 18276
    - index: 6
      opcode: NOP
      size: 4
      address: 18280
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 58
      address: 18284
    - index: 8
      opcode: NOP
      size: 4
      address: 18288
    - index: 9
      opcode: NOP
      size: 4
      address: 18292
    address: 18256
  - name: 58
    mapsto: for.body111
    predecessors:
    - 57
    successors:
    - 59
    loops:
    - 57
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18296
    - index: 1
      opcode: NOP
      size: 4
      address: 18300
    - index: 2
      opcode: SLi
      size: 4
      address: 18304
    - index: 3
      opcode: ADDl
      size: 8
      address: 18308
    - index: 4
      opcode: LIi
      size: 4
      address: 18316
    - index: 5
      opcode: MUL
      size: 4
      address: 18320
    - index: 6
      opcode: NOP
      size: 4
      address: 18324
    - index: 7
      opcode: MFS
      size: 4
      address: 18328
    - index: 8
      opcode: ADDl
      size: 8
      address: 18332
    - index: 9
      opcode: SHADD2l
      size: 8
      address: 18340
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18348
    - index: 11
      opcode: NOP
      size: 4
      address: 18352
    - index: 12
      opcode: CALL
      callees:
      - task
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 18356
    - index: 13
      opcode: NOP
      size: 4
      address: 18360
    - index: 14
      opcode: NOP
      size: 4
      address: 18364
    - index: 15
      opcode: NOP
      size: 4
      address: 18368
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18372
    - index: 17
      opcode: NOP
      size: 4
      address: 18376
    - index: 18
      opcode: SHADDl
      size: 8
      address: 18380
    - index: 19
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 18388
    address: 18296
  - name: 59
    mapsto: do.body117
    predecessors:
    - 58
    successors:
    - 60
    loops:
    - 57
    address: 18392
  - name: 60
    mapsto: do.end118
    predecessors:
    - 59
    successors:
    - 61
    loops:
    - 57
    address: 18392
  - name: 61
    mapsto: for.inc119
    predecessors:
    - 60
    successors:
    - 57
    loops:
    - 57
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18392
    - index: 1
      opcode: NOP
      size: 4
      address: 18396
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 57
      address: 18400
    - index: 3
      opcode: ADDi
      size: 4
      address: 18404
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 18408
    address: 18392
  - name: 62
    mapsto: for.end121
    predecessors:
    - 57
    successors: []
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 18412
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18416
    - index: 2
      opcode: NOP
      size: 4
      address: 18420
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18424
    - index: 4
      opcode: NOP
      size: 4
      address: 18428
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18432
    - index: 6
      opcode: NOP
      size: 4
      address: 18436
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 18440
    - index: 8
      opcode: NOP
      size: 4
      address: 18444
    - index: 9
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 18448
    - index: 10
      opcode: NOP
      size: 4
      address: 18452
    - index: 11
      opcode: MTS
      size: 4
      address: 18456
    - index: 12
      opcode: ADDi
      size: 4
      address: 18460
    address: 18412
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
    - 7
    - 8
    - 9
    - 10
    - 11
    - 12
    - 13
    - 14
    - 15
    - 16
    - 17
    - 18
    - 19
    - 20
    - 21
    - 22
    - 23
    - 24
    - 25
    - 26
    - 27
    - 28
    - 29
    - 30
    - 31
    - 32
    - 33
    - 34
    - 35
    - 36
    - 37
    - 38
    - 39
    - 40
    - 41
    - 42
    - 43
    - 44
    - 45
    - 46
    - 47
    - 48
    - 49
    - 50
    - 51
    - 52
    - 53
    - 54
    - 55
    - 56
    - 57
    - 58
    - 59
    - 60
    - 61
    - 62
- name: 8
  level: machinecode
  mapsto: clear_sample_buffer
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 7876
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7880
    - index: 2
      opcode: MFS
      size: 4
      address: 7884
    - index: 3
      opcode: MOV
      size: 4
      address: 7888
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7892
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7896
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7900
    address: 7876
  - name: 1
    mapsto: for.cond
    predecessors:
    - 0
    - 3
    successors:
    - 2
    - 4
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7904
    - index: 1
      opcode: NOP
      size: 4
      address: 7908
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7912
    - index: 3
      opcode: NOP
      size: 4
      address: 7916
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7920
    - index: 5
      opcode: NOP
      size: 4
      address: 7924
    - index: 6
      opcode: CMPLE
      size: 4
      address: 7928
    - index: 7
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 7932
    - index: 8
      opcode: NOP
      size: 4
      address: 7936
    - index: 9
      opcode: NOP
      size: 4
      address: 7940
    - index: 10
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 7944
    - index: 11
      opcode: NOP
      size: 4
      address: 7948
    - index: 12
      opcode: NOP
      size: 4
      address: 7952
    address: 7904
  - name: 2
    mapsto: for.body
    predecessors:
    - 1
    successors:
    - 3
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7956
    - index: 1
      opcode: NOP
      size: 4
      address: 7960
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7964
    - index: 3
      opcode: NOP
      size: 4
      address: 7968
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7972
    - index: 5
      opcode: NOP
      size: 4
      address: 7976
    - index: 6
      opcode: SHADDr
      size: 4
      address: 7980
    - index: 7
      opcode: LIl
      size: 8
      address: 7984
    - index: 8
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 7992
    address: 7956
  - name: 3
    mapsto: for.inc
    predecessors:
    - 2
    successors:
    - 1
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7996
    - index: 1
      opcode: NOP
      size: 4
      address: 8000
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 8004
    - index: 3
      opcode: ADDi
      size: 4
      address: 8008
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8012
    address: 7996
  - name: 4
    mapsto: for.end
    predecessors:
    - 1
    successors:
    - 5
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8016
    - index: 1
      opcode: NOP
      size: 4
      address: 8020
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8024
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8028
    - index: 4
      opcode: NOP
      size: 4
      address: 8032
    - index: 5
      opcode: LIl
      size: 8
      address: 8036
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8044
    address: 8016
  - name: 5
    mapsto: do.body
    predecessors:
    - 4
    successors:
    - 6
    address: 8048
  - name: 6
    mapsto: do.end
    predecessors:
    - 5
    successors: []
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 8048
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8052
    - index: 2
      opcode: NOP
      size: 4
      address: 8056
    - index: 3
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 8060
    - index: 4
      opcode: NOP
      size: 4
      address: 8064
    - index: 5
      opcode: MTS
      size: 4
      address: 8068
    - index: 6
      opcode: ADDi
      size: 4
      address: 8072
    address: 8048
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
- name: 23
  level: machinecode
  mapsto: sep
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 14276
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14280
    - index: 2
      opcode: MOV
      size: 4
      address: 14284
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14288
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 14292
    - index: 5
      opcode: MOV
      size: 4
      address: 14296
    - index: 6
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 14300
    - index: 7
      opcode: NOP
      size: 4
      address: 14304
    - index: 8
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 14308
    - index: 9
      opcode: NOP
      size: 4
      address: 14312
    - index: 10
      opcode: NOP
      size: 4
      address: 14316
    - index: 11
      opcode: ADDi
      size: 4
      address: 14320
    address: 14276
  subfunctions:
  - name: 0
    blocks:
    - 0
- name: 3
  level: machinecode
  mapsto: iinterpolate16
  arguments:
  - name: ! '%xi1'
    index: 0
    registers:
    - r3
  - name: ! '%xv1'
    index: 1
    registers:
    - r4
  - name: ! '%xi2'
    index: 2
    registers:
    - r5
  - name: ! '%xv2'
    index: 3
    registers:
    - r6
  - name: ! '%xi'
    index: 4
    registers:
    - r7
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 6
    - 15
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 4932
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 4936
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 4940
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 4944
    - index: 4
      opcode: MFS
      size: 4
      address: 4948
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 4952
    - index: 6
      opcode: MOV
      size: 4
      address: 4956
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 4960
    - index: 8
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 4964
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 4968
    - index: 10
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 4972
    - index: 11
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 4976
    - index: 12
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 4980
    - index: 13
      opcode: NOP
      size: 4
      address: 4984
    - index: 14
      opcode: SUBr
      size: 4
      address: 4988
    - index: 15
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 4992
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 4996
    - index: 17
      opcode: NOP
      size: 4
      address: 5000
    - index: 18
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5004
    - index: 19
      opcode: NOP
      size: 4
      address: 5008
    - index: 20
      opcode: SUBr
      size: 4
      address: 5012
    - index: 21
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5016
    - index: 22
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 5020
    - index: 23
      opcode: NOP
      size: 4
      address: 5024
    - index: 24
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5028
    - index: 25
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5032
    - index: 26
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5036
    - index: 27
      opcode: NOP
      size: 4
      address: 5040
    - index: 28
      opcode: SUBi
      size: 4
      address: 5044
    - index: 29
      opcode: LIi
      size: 4
      address: 5048
    - index: 30
      opcode: CMPULT
      size: 4
      address: 5052
    - index: 31
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5056
    - index: 32
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5060
    - index: 33
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5064
    - index: 34
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5068
    - index: 35
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5072
    - index: 36
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 6
      address: 5076
    - index: 37
      opcode: LIl
      size: 8
      address: 5080
    - index: 38
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5088
    address: 4932
  - name: 15
    mapsto: entry
    predecessors:
    - 0
    successors:
    - 1
    - 2
    - 3
    - 4
    - 5
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5092
    - index: 1
      opcode: NOP
      size: 4
      address: 5096
    - index: 2
      opcode: SHADD2l
      size: 8
      address: 5100
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5108
    - index: 4
      opcode: NOP
      size: 4
      address: 5112
    - index: 5
      opcode: BRTu
      size: 4
      branch-type: indirect
      branch-delay-slots: 2
      branch-targets:
      - 1
      - 2
      - 3
      - 4
      - 5
      address: 5116
    - index: 6
      opcode: NOP
      size: 4
      address: 5120
    - index: 7
      opcode: NOP
      size: 4
      address: 5124
    address: 5092
  - name: 1
    mapsto: sw.bb.i
    predecessors:
    - 15
    successors:
    - 7
    instructions:
    - index: 0
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 5128
    - index: 1
      opcode: NOP
      size: 4
      address: 5132
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 7
      address: 5136
    - index: 3
      opcode: NOP
      size: 4
      address: 5140
    - index: 4
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5144
    address: 5128
  - name: 2
    mapsto: sw.bb1.i
    predecessors:
    - 15
    successors:
    - 7
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5148
    - index: 1
      opcode: NOP
      size: 4
      address: 5152
    - index: 2
      opcode: SRi
      size: 4
      address: 5156
    - index: 3
      opcode: ADDr
      size: 4
      address: 5160
    - index: 4
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 7
      address: 5164
    - index: 5
      opcode: SRi
      size: 4
      address: 5168
    - index: 6
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5172
    address: 5148
  - name: 3
    mapsto: sw.bb4.i
    predecessors:
    - 15
    successors:
    - 7
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 5176
    - index: 1
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5184
    - index: 2
      opcode: NOP
      size: 4
      address: 5188
    - index: 3
      opcode: MUL
      size: 4
      address: 5192
    - index: 4
      opcode: NOP
      size: 4
      address: 5196
    - index: 5
      opcode: MFS
      size: 4
      address: 5200
    - index: 6
      opcode: SRi
      size: 4
      address: 5204
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 7
      address: 5208
    - index: 8
      opcode: ADDr
      size: 4
      address: 5212
    - index: 9
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5216
    address: 5176
  - name: 4
    mapsto: sw.bb8.i
    predecessors:
    - 15
    successors:
    - 7
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5220
    - index: 1
      opcode: NOP
      size: 4
      address: 5224
    - index: 2
      opcode: SRAi
      size: 4
      address: 5228
    - index: 3
      opcode: SRi
      size: 4
      address: 5232
    - index: 4
      opcode: ADDr
      size: 4
      address: 5236
    - index: 5
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 7
      address: 5240
    - index: 6
      opcode: SRi
      size: 4
      address: 5244
    - index: 7
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5248
    address: 5220
  - name: 5
    mapsto: sw.bb12.i
    predecessors:
    - 15
    successors:
    - 7
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 5252
    - index: 1
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5260
    - index: 2
      opcode: NOP
      size: 4
      address: 5264
    - index: 3
      opcode: MUL
      size: 4
      address: 5268
    - index: 4
      opcode: NOP
      size: 4
      address: 5272
    - index: 5
      opcode: MFS
      size: 4
      address: 5276
    - index: 6
      opcode: SRi
      size: 4
      address: 5280
    - index: 7
      opcode: SRi
      size: 4
      address: 5284
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 7
      address: 5288
    - index: 9
      opcode: ADDr
      size: 4
      address: 5292
    - index: 10
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5296
    address: 5252
  - name: 6
    mapsto: sw.default.i
    predecessors:
    - 0
    successors:
    - 7
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5300
    - index: 1
      opcode: NOP
      size: 4
      address: 5304
    - index: 2
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5308
    - index: 3
      opcode: NOP
      size: 4
      address: 5312
    - index: 4
      opcode: CALL
      callees:
      - __divsi3
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 5316
    - index: 5
      opcode: NOP
      size: 4
      address: 5320
    - index: 6
      opcode: NOP
      size: 4
      address: 5324
    - index: 7
      opcode: NOP
      size: 4
      address: 5328
    - index: 8
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5332
    address: 5300
  - name: 7
    mapsto: small_div.exit
    predecessors:
    - 5
    - 4
    - 3
    - 2
    - 1
    - 6
    successors:
    - 13
    - 16
    instructions:
    - index: 0
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 5336
    - index: 1
      opcode: NOP
      size: 4
      address: 5340
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5344
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5348
    - index: 4
      opcode: NOP
      size: 4
      address: 5352
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5356
    - index: 6
      opcode: NOP
      size: 4
      address: 5360
    - index: 7
      opcode: SUBr
      size: 4
      address: 5364
    - index: 8
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 5368
    - index: 9
      opcode: NOP
      size: 4
      address: 5372
    - index: 10
      opcode: MUL
      size: 4
      address: 5376
    - index: 11
      opcode: NOP
      size: 4
      address: 5380
    - index: 12
      opcode: MFS
      size: 4
      address: 5384
    - index: 13
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5388
    - index: 14
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 5392
    - index: 15
      opcode: NOP
      size: 4
      address: 5396
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5400
    - index: 17
      opcode: NOP
      size: 4
      address: 5404
    - index: 18
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5408
    - index: 19
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5412
    - index: 20
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5416
    - index: 21
      opcode: NOP
      size: 4
      address: 5420
    - index: 22
      opcode: SUBi
      size: 4
      address: 5424
    - index: 23
      opcode: LIi
      size: 4
      address: 5428
    - index: 24
      opcode: CMPULT
      size: 4
      address: 5432
    - index: 25
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 13
      address: 5436
    - index: 26
      opcode: NOP
      size: 4
      address: 5440
    - index: 27
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5444
    address: 5336
  - name: 16
    mapsto: small_div.exit
    predecessors:
    - 7
    successors:
    - 8
    - 9
    - 10
    - 11
    - 12
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5448
    - index: 1
      opcode: NOP
      size: 4
      address: 5452
    - index: 2
      opcode: SHADD2l
      size: 8
      address: 5456
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5464
    - index: 4
      opcode: NOP
      size: 4
      address: 5468
    - index: 5
      opcode: BRTu
      size: 4
      branch-type: indirect
      branch-delay-slots: 2
      branch-targets:
      - 8
      - 9
      - 10
      - 11
      - 12
      address: 5472
    - index: 6
      opcode: NOP
      size: 4
      address: 5476
    - index: 7
      opcode: NOP
      size: 4
      address: 5480
    address: 5448
  - name: 8
    mapsto: sw.bb.i17
    predecessors:
    - 16
    successors:
    - 14
    instructions:
    - index: 0
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 5484
    - index: 1
      opcode: NOP
      size: 4
      address: 5488
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 14
      address: 5492
    - index: 3
      opcode: NOP
      size: 4
      address: 5496
    - index: 4
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5500
    address: 5484
  - name: 9
    mapsto: sw.bb1.i21
    predecessors:
    - 16
    successors:
    - 14
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5504
    - index: 1
      opcode: NOP
      size: 4
      address: 5508
    - index: 2
      opcode: SRi
      size: 4
      address: 5512
    - index: 3
      opcode: ADDr
      size: 4
      address: 5516
    - index: 4
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 14
      address: 5520
    - index: 5
      opcode: SRi
      size: 4
      address: 5524
    - index: 6
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5528
    address: 5504
  - name: 10
    mapsto: sw.bb4.i25
    predecessors:
    - 16
    successors:
    - 14
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 5532
    - index: 1
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5540
    - index: 2
      opcode: NOP
      size: 4
      address: 5544
    - index: 3
      opcode: MUL
      size: 4
      address: 5548
    - index: 4
      opcode: NOP
      size: 4
      address: 5552
    - index: 5
      opcode: MFS
      size: 4
      address: 5556
    - index: 6
      opcode: SRi
      size: 4
      address: 5560
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 14
      address: 5564
    - index: 8
      opcode: ADDr
      size: 4
      address: 5568
    - index: 9
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5572
    address: 5532
  - name: 11
    mapsto: sw.bb8.i29
    predecessors:
    - 16
    successors:
    - 14
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5576
    - index: 1
      opcode: NOP
      size: 4
      address: 5580
    - index: 2
      opcode: SRAi
      size: 4
      address: 5584
    - index: 3
      opcode: SRi
      size: 4
      address: 5588
    - index: 4
      opcode: ADDr
      size: 4
      address: 5592
    - index: 5
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 14
      address: 5596
    - index: 6
      opcode: SRi
      size: 4
      address: 5600
    - index: 7
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5604
    address: 5576
  - name: 12
    mapsto: sw.bb12.i33
    predecessors:
    - 16
    successors:
    - 14
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 5608
    - index: 1
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5616
    - index: 2
      opcode: NOP
      size: 4
      address: 5620
    - index: 3
      opcode: MUL
      size: 4
      address: 5624
    - index: 4
      opcode: NOP
      size: 4
      address: 5628
    - index: 5
      opcode: MFS
      size: 4
      address: 5632
    - index: 6
      opcode: SRi
      size: 4
      address: 5636
    - index: 7
      opcode: SRi
      size: 4
      address: 5640
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 14
      address: 5644
    - index: 9
      opcode: ADDr
      size: 4
      address: 5648
    - index: 10
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5652
    address: 5608
  - name: 13
    mapsto: sw.default.i38
    predecessors:
    - 7
    successors:
    - 14
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5656
    - index: 1
      opcode: NOP
      size: 4
      address: 5660
    - index: 2
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 5664
    - index: 3
      opcode: NOP
      size: 4
      address: 5668
    - index: 4
      opcode: CALL
      callees:
      - __divsi3
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 5672
    - index: 5
      opcode: NOP
      size: 4
      address: 5676
    - index: 6
      opcode: NOP
      size: 4
      address: 5680
    - index: 7
      opcode: NOP
      size: 4
      address: 5684
    - index: 8
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5688
    address: 5656
  - name: 14
    mapsto: small_div.exit39
    predecessors:
    - 12
    - 11
    - 10
    - 9
    - 8
    - 13
    successors: []
    instructions:
    - index: 0
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 5692
    - index: 1
      opcode: NOP
      size: 4
      address: 5696
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5700
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5704
    - index: 4
      opcode: NOP
      size: 4
      address: 5708
    - index: 5
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 5712
    - index: 6
      opcode: NOP
      size: 4
      address: 5716
    - index: 7
      opcode: MUL
      size: 4
      address: 5720
    - index: 8
      opcode: NOP
      size: 4
      address: 5724
    - index: 9
      opcode: MFS
      size: 4
      address: 5728
    - index: 10
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 5732
    - index: 11
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 5736
    - index: 12
      opcode: NOP
      size: 4
      address: 5740
    - index: 13
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 5744
    - index: 14
      opcode: NOP
      size: 4
      address: 5748
    - index: 15
      opcode: ADDr
      size: 4
      address: 5752
    - index: 16
      opcode: SLi
      size: 4
      address: 5756
    - index: 17
      opcode: MOV
      size: 4
      address: 5760
    - index: 18
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5764
    - index: 19
      opcode: NOP
      size: 4
      address: 5768
    - index: 20
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5772
    - index: 21
      opcode: NOP
      size: 4
      address: 5776
    - index: 22
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5780
    - index: 23
      opcode: NOP
      size: 4
      address: 5784
    - index: 24
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5788
    - index: 25
      opcode: NOP
      size: 4
      address: 5792
    - index: 26
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 5796
    - index: 27
      opcode: SRAi
      size: 4
      address: 5800
    - index: 28
      opcode: MTS
      size: 4
      address: 5804
    - index: 29
      opcode: ADDi
      size: 4
      address: 5808
    address: 5692
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 15
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
    - 7
    - 16
    - 8
    - 9
    - 10
    - 11
    - 12
    - 13
    - 14
- name: 25
  level: machinecode
  mapsto: print_sample_buffer
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 15172
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15176
    - index: 2
      opcode: MFS
      size: 4
      address: 15180
    - index: 3
      opcode: MOV
      size: 4
      address: 15184
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15188
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15192
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15196
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15200
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15204
    address: 15172
  - name: 1
    mapsto: for.cond
    predecessors:
    - 0
    - 3
    successors:
    - 2
    - 4
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15208
    - index: 1
      opcode: NOP
      size: 4
      address: 15212
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15216
    - index: 3
      opcode: NOP
      size: 4
      address: 15220
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15224
    - index: 5
      opcode: NOP
      size: 4
      address: 15228
    - index: 6
      opcode: CMPLE
      size: 4
      address: 15232
    - index: 7
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 15236
    - index: 8
      opcode: NOP
      size: 4
      address: 15240
    - index: 9
      opcode: NOP
      size: 4
      address: 15244
    - index: 10
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 15248
    - index: 11
      opcode: NOP
      size: 4
      address: 15252
    - index: 12
      opcode: NOP
      size: 4
      address: 15256
    address: 15208
  - name: 2
    mapsto: for.body
    predecessors:
    - 1
    successors:
    - 3
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 15260
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15268
    - index: 2
      opcode: NOP
      size: 4
      address: 15272
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15276
    - index: 4
      opcode: NOP
      size: 4
      address: 15280
    - index: 5
      opcode: SRi
      size: 4
      address: 15284
    - index: 6
      opcode: SLi
      size: 4
      address: 15288
    - index: 7
      opcode: ORr
      size: 4
      address: 15292
    - index: 8
      opcode: SLi
      size: 4
      address: 15296
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15300
    - index: 10
      opcode: NOP
      size: 4
      address: 15304
    - index: 11
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15308
    - index: 12
      opcode: NOP
      size: 4
      address: 15312
    - index: 13
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15316
    - index: 14
      opcode: NOP
      size: 4
      address: 15320
    - index: 15
      opcode: SHADDr
      size: 4
      address: 15324
    - index: 16
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 15328
    - index: 17
      opcode: NOP
      size: 4
      address: 15332
    - index: 18
      opcode: SRAi
      size: 4
      address: 15336
    - index: 19
      opcode: XORr
      size: 4
      address: 15340
    - index: 20
      opcode: XORr
      size: 4
      address: 15344
    - index: 21
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15348
    - index: 22
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15352
    address: 15260
  - name: 3
    mapsto: for.inc
    predecessors:
    - 2
    successors:
    - 1
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15356
    - index: 1
      opcode: NOP
      size: 4
      address: 15360
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 15364
    - index: 3
      opcode: ADDi
      size: 4
      address: 15368
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 15372
    address: 15356
  - name: 4
    mapsto: for.end
    predecessors:
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 15376
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 15380
    - index: 2
      opcode: NOP
      size: 4
      address: 15384
    - index: 3
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 15388
    - index: 4
      opcode: NOP
      size: 4
      address: 15392
    - index: 5
      opcode: MTS
      size: 4
      address: 15396
    - index: 6
      opcode: ADDi
      size: 4
      address: 15400
    address: 15376
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
- name: 15
  level: machinecode
  mapsto: merge_samples
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    - 2
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 9796
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9800
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9804
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9808
    - index: 4
      opcode: MFS
      size: 4
      address: 9812
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9816
    - index: 6
      opcode: MOV
      size: 4
      address: 9820
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9824
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9828
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9832
    - index: 10
      opcode: NOP
      size: 4
      address: 9836
    - index: 11
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9840
    - index: 12
      opcode: NOP
      size: 4
      address: 9844
    - index: 13
      opcode: CMPLT
      size: 4
      address: 9848
    - index: 14
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9852
    - index: 15
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 9856
    - index: 16
      opcode: LIl
      size: 8
      address: 9860
    - index: 17
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9868
    - index: 18
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 9872
    - index: 19
      opcode: NOP
      size: 4
      address: 9876
    - index: 20
      opcode: NOP
      size: 4
      address: 9880
    address: 9796
  - name: 1
    mapsto: if.then
    predecessors:
    - 0
    successors:
    - 16
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 16
      address: 9884
    - index: 1
      opcode: NOP
      size: 4
      address: 9888
    - index: 2
      opcode: NOP
      size: 4
      address: 9892
    address: 9884
  - name: 2
    mapsto: if.end
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9896
    - index: 1
      opcode: NOP
      size: 4
      address: 9900
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9904
    - index: 3
      opcode: NOP
      size: 4
      address: 9908
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9912
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9916
    - index: 6
      opcode: NOP
      size: 4
      address: 9920
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9924
    - index: 8
      opcode: NOP
      size: 4
      address: 9928
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9932
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9936
    - index: 11
      opcode: NOP
      size: 4
      address: 9940
    - index: 12
      opcode: CALL
      callees:
      - sample_buffer_get_valid
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 9944
    - index: 13
      opcode: NOP
      size: 4
      address: 9948
    - index: 14
      opcode: NOP
      size: 4
      address: 9952
    - index: 15
      opcode: NOP
      size: 4
      address: 9956
    - index: 16
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9960
    - index: 17
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9964
    address: 9896
  - name: 3
    mapsto: for.cond
    predecessors:
    - 2
    - 14
    successors:
    - 4
    - 15
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9968
    - index: 1
      opcode: NOP
      size: 4
      address: 9972
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9976
    - index: 3
      opcode: NOP
      size: 4
      address: 9980
    - index: 4
      opcode: CMPLE
      size: 4
      address: 9984
    - index: 5
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 15
      address: 9988
    - index: 6
      opcode: NOP
      size: 4
      address: 9992
    - index: 7
      opcode: NOP
      size: 4
      address: 9996
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 10000
    - index: 9
      opcode: NOP
      size: 4
      address: 10004
    - index: 10
      opcode: NOP
      size: 4
      address: 10008
    address: 9968
  - name: 4
    mapsto: for.body
    predecessors:
    - 3
    successors:
    - 13
    - 5
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10012
    - index: 1
      opcode: NOP
      size: 4
      address: 10016
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10020
    - index: 3
      opcode: NOP
      size: 4
      address: 10024
    - index: 4
      opcode: SHADDr
      size: 4
      address: 10028
    - index: 5
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 10032
    - index: 6
      opcode: NOP
      size: 4
      address: 10036
    - index: 7
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 10040
    - index: 8
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10044
    - index: 9
      opcode: NOP
      size: 4
      address: 10048
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10052
    - index: 11
      opcode: NOP
      size: 4
      address: 10056
    - index: 12
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 10060
    - index: 13
      opcode: NOP
      size: 4
      address: 10064
    - index: 14
      opcode: CALL
      callees:
      - sample_buffer_set
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 10068
    - index: 15
      opcode: NOP
      size: 4
      address: 10072
    - index: 16
      opcode: NOP
      size: 4
      address: 10076
    - index: 17
      opcode: NOP
      size: 4
      address: 10080
    - index: 18
      opcode: LIl
      size: 8
      address: 10084
    - index: 19
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 10092
    - index: 20
      opcode: NOP
      size: 4
      address: 10096
    - index: 21
      opcode: CMPEQ
      size: 4
      address: 10100
    - index: 22
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 13
      address: 10104
    - index: 23
      opcode: NOP
      size: 4
      address: 10108
    - index: 24
      opcode: NOP
      size: 4
      address: 10112
    - index: 25
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 5
      address: 10116
    - index: 26
      opcode: NOP
      size: 4
      address: 10120
    - index: 27
      opcode: NOP
      size: 4
      address: 10124
    address: 10012
  - name: 5
    mapsto: if.then5
    predecessors:
    - 4
    successors:
    - 6
    - 12
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10128
    - index: 1
      opcode: NOP
      size: 4
      address: 10132
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10136
    - index: 3
      opcode: NOP
      size: 4
      address: 10140
    - index: 4
      opcode: SUBr
      size: 4
      address: 10144
    - index: 5
      opcode: LIi
      size: 4
      address: 10148
    - index: 6
      opcode: SUBi
      size: 4
      address: 10152
    - index: 7
      opcode: CMPLT
      size: 4
      address: 10156
    - index: 8
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 12
      address: 10160
    - index: 9
      opcode: NOP
      size: 4
      address: 10164
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10168
    - index: 11
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 6
      address: 10172
    - index: 12
      opcode: NOP
      size: 4
      address: 10176
    - index: 13
      opcode: NOP
      size: 4
      address: 10180
    address: 10128
  - name: 6
    mapsto: land.lhs.true
    predecessors:
    - 5
    successors:
    - 7
    - 12
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10184
    - index: 1
      opcode: NOP
      size: 4
      address: 10188
    - index: 2
      opcode: LIi
      size: 4
      address: 10192
    - index: 3
      opcode: CMPLT
      size: 4
      address: 10196
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 12
      address: 10200
    - index: 5
      opcode: NOP
      size: 4
      address: 10204
    - index: 6
      opcode: NOP
      size: 4
      address: 10208
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 7
      address: 10212
    - index: 8
      opcode: NOP
      size: 4
      address: 10216
    - index: 9
      opcode: NOP
      size: 4
      address: 10220
    address: 10184
  - name: 7
    mapsto: if.then11
    predecessors:
    - 6
    successors:
    - 8
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10224
    - index: 1
      opcode: NOP
      size: 4
      address: 10228
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10232
    - index: 3
      opcode: NOP
      size: 4
      address: 10236
    - index: 4
      opcode: CALL
      callees:
      - sample_buffer_get
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 10240
    - index: 5
      opcode: NOP
      size: 4
      address: 10244
    - index: 6
      opcode: NOP
      size: 4
      address: 10248
    - index: 7
      opcode: NOP
      size: 4
      address: 10252
    - index: 8
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 10256
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10260
    - index: 10
      opcode: NOP
      size: 4
      address: 10264
    - index: 11
      opcode: SUBi
      size: 4
      address: 10268
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10272
    address: 10224
  - name: 8
    mapsto: for.cond14
    predecessors:
    - 7
    - 10
    successors:
    - 9
    - 11
    loops:
    - 8
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10276
    - index: 1
      opcode: NOP
      size: 4
      address: 10280
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10284
    - index: 3
      opcode: NOP
      size: 4
      address: 10288
    - index: 4
      opcode: CMPLE
      size: 4
      address: 10292
    - index: 5
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 11
      address: 10296
    - index: 6
      opcode: NOP
      size: 4
      address: 10300
    - index: 7
      opcode: NOP
      size: 4
      address: 10304
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 9
      address: 10308
    - index: 9
      opcode: NOP
      size: 4
      address: 10312
    - index: 10
      opcode: NOP
      size: 4
      address: 10316
    address: 10276
  - name: 9
    mapsto: for.body17
    predecessors:
    - 8
    successors:
    - 10
    loops:
    - 8
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10320
    - index: 1
      opcode: NOP
      size: 4
      address: 10324
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10328
    - index: 3
      opcode: NOP
      size: 4
      address: 10332
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10336
    - index: 5
      opcode: NOP
      size: 4
      address: 10340
    - index: 6
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 10344
    - index: 7
      opcode: NOP
      size: 4
      address: 10348
    - index: 8
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 10352
    - index: 9
      opcode: NOP
      size: 4
      address: 10356
    - index: 10
      opcode: CALL
      callees:
      - iinterpolate16
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 10360
    - index: 11
      opcode: NOP
      size: 4
      address: 10364
    - index: 12
      opcode: NOP
      size: 4
      address: 10368
    - index: 13
      opcode: NOP
      size: 4
      address: 10372
    - index: 14
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 10376
    - index: 15
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10380
    - index: 16
      opcode: NOP
      size: 4
      address: 10384
    - index: 17
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10388
    - index: 18
      opcode: NOP
      size: 4
      address: 10392
    - index: 19
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 10396
    - index: 20
      opcode: NOP
      size: 4
      address: 10400
    - index: 21
      opcode: CALL
      callees:
      - sample_buffer_set
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 10404
    - index: 22
      opcode: NOP
      size: 4
      address: 10408
    - index: 23
      opcode: NOP
      size: 4
      address: 10412
    - index: 24
      opcode: NOP
      size: 4
      address: 10416
    address: 10320
  - name: 10
    mapsto: for.inc
    predecessors:
    - 9
    successors:
    - 8
    loops:
    - 8
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10420
    - index: 1
      opcode: NOP
      size: 4
      address: 10424
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 8
      address: 10428
    - index: 3
      opcode: SUBi
      size: 4
      address: 10432
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10436
    address: 10420
  - name: 11
    mapsto: for.end
    predecessors:
    - 8
    successors:
    - 12
    loops:
    - 3
    address: 10440
  - name: 12
    mapsto: if.end19
    predecessors:
    - 5
    - 6
    - 11
    successors:
    - 13
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10440
    - index: 1
      opcode: NOP
      size: 4
      address: 10444
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10448
    address: 10440
  - name: 13
    mapsto: if.end20
    predecessors:
    - 4
    - 12
    successors:
    - 14
    loops:
    - 3
    address: 10452
  - name: 14
    mapsto: for.inc21
    predecessors:
    - 13
    successors:
    - 3
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10452
    - index: 1
      opcode: NOP
      size: 4
      address: 10456
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 10460
    - index: 3
      opcode: ADDi
      size: 4
      address: 10464
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10468
    address: 10452
  - name: 15
    mapsto: for.end22
    predecessors:
    - 3
    successors:
    - 16
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10472
    - index: 1
      opcode: NOP
      size: 4
      address: 10476
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10480
    - index: 3
      opcode: NOP
      size: 4
      address: 10484
    - index: 4
      opcode: CALL
      callees:
      - sample_buffer_set_valid
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 10488
    - index: 5
      opcode: NOP
      size: 4
      address: 10492
    - index: 6
      opcode: NOP
      size: 4
      address: 10496
    - index: 7
      opcode: NOP
      size: 4
      address: 10500
    - index: 8
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10504
    - index: 9
      opcode: NOP
      size: 4
      address: 10508
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10512
    - index: 11
      opcode: NOP
      size: 4
      address: 10516
    - index: 12
      opcode: CALL
      callees:
      - sample_buffer_incr_ptr
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 10520
    - index: 13
      opcode: NOP
      size: 4
      address: 10524
    - index: 14
      opcode: NOP
      size: 4
      address: 10528
    - index: 15
      opcode: NOP
      size: 4
      address: 10532
    address: 10472
  - name: 16
    mapsto: return
    predecessors:
    - 15
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 10536
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10540
    - index: 2
      opcode: NOP
      size: 4
      address: 10544
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10548
    - index: 4
      opcode: NOP
      size: 4
      address: 10552
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10556
    - index: 6
      opcode: NOP
      size: 4
      address: 10560
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10564
    - index: 8
      opcode: NOP
      size: 4
      address: 10568
    - index: 9
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 10572
    - index: 10
      opcode: NOP
      size: 4
      address: 10576
    - index: 11
      opcode: MTS
      size: 4
      address: 10580
    - index: 12
      opcode: ADDi
      size: 4
      address: 10584
    address: 10536
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
    - 7
    - 8
    - 9
    - 10
    - 11
    - 12
    - 13
    - 14
    - 15
    - 16
- name: 16
  level: machinecode
  mapsto: fft
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 10628
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10632
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10636
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10640
    - index: 4
      opcode: MFS
      size: 4
      address: 10644
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10648
    - index: 6
      opcode: LIl
      size: 8
      address: 10652
    - index: 7
      opcode: MOV
      size: 4
      address: 10660
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10664
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10668
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10672
    - index: 11
      opcode: LIin
      size: 4
      address: 10676
    - index: 12
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 10680
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10684
    - index: 14
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10688
    - index: 15
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10692
    - index: 16
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10696
    address: 10628
  - name: 1
    mapsto: for.cond
    predecessors:
    - 0
    - 5
    successors:
    - 2
    - 6
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10700
    - index: 1
      opcode: NOP
      size: 4
      address: 10704
    - index: 2
      opcode: LIin
      size: 4
      address: 10708
    - index: 3
      opcode: CMPLT
      size: 4
      address: 10712
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 6
      address: 10716
    - index: 5
      opcode: NOP
      size: 4
      address: 10720
    - index: 6
      opcode: NOP
      size: 4
      address: 10724
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 10728
    - index: 8
      opcode: NOP
      size: 4
      address: 10732
    - index: 9
      opcode: NOP
      size: 4
      address: 10736
    address: 10700
  - name: 2
    mapsto: for.body
    predecessors:
    - 1
    successors:
    - 4
    - 3
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10740
    - index: 1
      opcode: NOP
      size: 4
      address: 10744
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10748
    - index: 3
      opcode: NOP
      size: 4
      address: 10752
    - index: 4
      opcode: CALL
      callees:
      - sample_buffer_get
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 10756
    - index: 5
      opcode: NOP
      size: 4
      address: 10760
    - index: 6
      opcode: NOP
      size: 4
      address: 10764
    - index: 7
      opcode: NOP
      size: 4
      address: 10768
    - index: 8
      opcode: LIl
      size: 8
      address: 10772
    - index: 9
      opcode: CMPEQ
      size: 4
      address: 10780
    - index: 10
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 10784
    - index: 11
      opcode: NOP
      size: 4
      address: 10788
    - index: 12
      opcode: NOP
      size: 4
      address: 10792
    - index: 13
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 10796
    - index: 14
      opcode: NOP
      size: 4
      address: 10800
    - index: 15
      opcode: NOP
      size: 4
      address: 10804
    address: 10740
  - name: 3
    mapsto: if.then
    predecessors:
    - 2
    successors:
    - 6
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 6
      address: 10808
    - index: 1
      opcode: NOP
      size: 4
      address: 10812
    - index: 2
      opcode: NOP
      size: 4
      address: 10816
    address: 10808
  - name: 4
    mapsto: if.end
    predecessors:
    - 2
    successors:
    - 5
    loops:
    - 1
    address: 10820
  - name: 5
    mapsto: for.inc
    predecessors:
    - 4
    successors:
    - 1
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10820
    - index: 1
      opcode: NOP
      size: 4
      address: 10824
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 10828
    - index: 3
      opcode: SUBi
      size: 4
      address: 10832
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10836
    address: 10820
  - name: 6
    mapsto: for.end
    predecessors:
    - 1
    - 3
    successors:
    - 7
    - 8
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10840
    - index: 1
      opcode: NOP
      size: 4
      address: 10844
    - index: 2
      opcode: LIin
      size: 4
      address: 10848
    - index: 3
      opcode: CMPLT
      size: 4
      address: 10852
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 8
      address: 10856
    - index: 5
      opcode: NOP
      size: 4
      address: 10860
    - index: 6
      opcode: NOP
      size: 4
      address: 10864
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 7
      address: 10868
    - index: 8
      opcode: NOP
      size: 4
      address: 10872
    - index: 9
      opcode: NOP
      size: 4
      address: 10876
    address: 10840
  - name: 7
    mapsto: if.then5
    predecessors:
    - 6
    successors:
    - 30
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 30
      address: 10880
    - index: 1
      opcode: LIl
      size: 8
      address: 10884
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 10892
    address: 10880
  - name: 8
    mapsto: if.end6
    predecessors:
    - 6
    successors:
    - 9
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10896
    - index: 1
      opcode: NOP
      size: 4
      address: 10900
    - index: 2
      opcode: SUBi
      size: 4
      address: 10904
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10908
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 10912
    address: 10896
  - name: 9
    mapsto: for.cond7
    predecessors:
    - 8
    - 18
    successors:
    - 10
    - 19
    loops:
    - 9
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10916
    - index: 1
      opcode: NOP
      size: 4
      address: 10920
    - index: 2
      opcode: LIi
      size: 4
      address: 10924
    - index: 3
      opcode: CMPLT
      size: 4
      address: 10928
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 19
      address: 10932
    - index: 5
      opcode: NOP
      size: 4
      address: 10936
    - index: 6
      opcode: NOP
      size: 4
      address: 10940
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 10
      address: 10944
    - index: 8
      opcode: NOP
      size: 4
      address: 10948
    - index: 9
      opcode: NOP
      size: 4
      address: 10952
    address: 10916
  - name: 10
    mapsto: for.body10
    predecessors:
    - 9
    successors:
    - 11
    - 12
    loops:
    - 9
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10956
    - index: 1
      opcode: NOP
      size: 4
      address: 10960
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10964
    - index: 3
      opcode: NOP
      size: 4
      address: 10968
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 10972
    - index: 5
      opcode: NOP
      size: 4
      address: 10976
    - index: 6
      opcode: CALL
      callees:
      - sample_buffer_get
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 10980
    - index: 7
      opcode: NOP
      size: 4
      address: 10984
    - index: 8
      opcode: NOP
      size: 4
      address: 10988
    - index: 9
      opcode: ADDr
      size: 4
      address: 10992
    - index: 10
      opcode: LIl
      size: 8
      address: 10996
    - index: 11
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 11004
    - index: 12
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 11008
    - index: 13
      opcode: NOP
      size: 4
      address: 11012
    - index: 14
      opcode: CMPNEQ
      size: 4
      address: 11016
    - index: 15
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 12
      address: 11020
    - index: 16
      opcode: NOP
      size: 4
      address: 11024
    - index: 17
      opcode: NOP
      size: 4
      address: 11028
    - index: 18
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 11
      address: 11032
    - index: 19
      opcode: NOP
      size: 4
      address: 11036
    - index: 20
      opcode: NOP
      size: 4
      address: 11040
    address: 10956
  - name: 11
    mapsto: if.then15
    predecessors:
    - 10
    successors:
    - 30
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 30
      address: 11044
    - index: 1
      opcode: LIl
      size: 8
      address: 11048
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 11056
    address: 11044
  - name: 12
    mapsto: if.end16
    predecessors:
    - 10
    successors:
    - 13
    - 14
    loops:
    - 9
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 11060
    - index: 1
      opcode: NOP
      size: 4
      address: 11064
    - index: 2
      opcode: LIin
      size: 4
      address: 11068
    - index: 3
      opcode: CMPLT
      size: 4
      address: 11072
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 14
      address: 11076
    - index: 5
      opcode: NOP
      size: 4
      address: 11080
    - index: 6
      opcode: NOP
      size: 4
      address: 11084
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 13
      address: 11088
    - index: 8
      opcode: NOP
      size: 4
      address: 11092
    - index: 9
      opcode: NOP
      size: 4
      address: 11096
    address: 11060
  - name: 13
    mapsto: if.then20
    predecessors:
    - 12
    successors:
    - 17
    loops:
    - 9
    instructions:
    - index: 0
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 11100
    - index: 1
      opcode: NOP
      size: 4
      address: 11104
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 17
      address: 11108
    - index: 3
      opcode: NEG
      size: 4
      address: 11112
    - index: 4
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 11116
    address: 11100
  - name: 14
    mapsto: if.else
    predecessors:
    - 12
    successors:
    - 15
    - 16
    loops:
    - 9
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 11120
    - index: 1
      opcode: NOP
      size: 4
      address: 11124
    - index: 2
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 11128
    - index: 3
      opcode: NOP
      size: 4
      address: 11132
    - index: 4
      opcode: CMPLE
      size: 4
      address: 11136
    - index: 5
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 16
      address: 11140
    - index: 6
      opcode: NOP
      size: 4
      address: 11144
    - index: 7
      opcode: NOP
      size: 4
      address: 11148
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 15
      address: 11152
    - index: 9
      opcode: NOP
      size: 4
      address: 11156
    - index: 10
      opcode: NOP
      size: 4
      address: 11160
    address: 11120
  - name: 15
    mapsto: if.then28
    predecessors:
    - 14
    successors:
    - 16
    loops:
    - 9
    instructions:
    - index: 0
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 11164
    - index: 1
      opcode: NOP
      size: 4
      address: 11168
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 11172
    address: 11164
  - name: 16
    mapsto: if.end29
    predecessors:
    - 14
    - 15
    successors:
    - 17
    loops:
    - 9
    address: 11176
  - name: 17
    mapsto: if.end30
    predecessors:
    - 16
    - 13
    successors:
    - 18
    loops:
    - 9
    address: 11176
  - name: 18
    mapsto: for.inc31
    predecessors:
    - 17
    successors:
    - 9
    loops:
    - 9
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11176
    - index: 1
      opcode: NOP
      size: 4
      address: 11180
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 9
      address: 11184
    - index: 3
      opcode: ADDi
      size: 4
      address: 11188
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11192
    address: 11176
  - name: 19
    mapsto: for.end32
    predecessors:
    - 9
    successors:
    - 20
    - 25
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 11196
    - index: 1
      opcode: NOP
      size: 4
      address: 11200
    - index: 2
      opcode: CMPEQ
      size: 4
      address: 11204
    - index: 3
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 25
      address: 11208
    - index: 4
      opcode: NOP
      size: 4
      address: 11212
    - index: 5
      opcode: NOP
      size: 4
      address: 11216
    - index: 6
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 20
      address: 11220
    - index: 7
      opcode: NOP
      size: 4
      address: 11224
    - index: 8
      opcode: NOP
      size: 4
      address: 11228
    address: 11196
  - name: 20
    mapsto: if.then36
    predecessors:
    - 19
    successors:
    - 21
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 11232
    - index: 1
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 11240
    - index: 2
      opcode: NOP
      size: 4
      address: 11244
    - index: 3
      opcode: CALL
      callees:
      - __divsi3
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 11248
    - index: 4
      opcode: NOP
      size: 4
      address: 11252
    - index: 5
      opcode: NOP
      size: 4
      address: 11256
    - index: 6
      opcode: NOP
      size: 4
      address: 11260
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11264
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11268
    address: 11232
  - name: 21
    mapsto: for.cond38
    predecessors:
    - 20
    - 23
    successors:
    - 22
    - 24
    loops:
    - 21
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11272
    - index: 1
      opcode: NOP
      size: 4
      address: 11276
    - index: 2
      opcode: LIi
      size: 4
      address: 11280
    - index: 3
      opcode: CMPLT
      size: 4
      address: 11284
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 24
      address: 11288
    - index: 5
      opcode: NOP
      size: 4
      address: 11292
    - index: 6
      opcode: NOP
      size: 4
      address: 11296
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 22
      address: 11300
    - index: 8
      opcode: NOP
      size: 4
      address: 11304
    - index: 9
      opcode: NOP
      size: 4
      address: 11308
    address: 11272
  - name: 22
    mapsto: for.body41
    predecessors:
    - 21
    successors:
    - 23
    loops:
    - 21
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11312
    - index: 1
      opcode: NOP
      size: 4
      address: 11316
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11320
    - index: 3
      opcode: NOP
      size: 4
      address: 11324
    - index: 4
      opcode: CALL
      callees:
      - sample_buffer_get
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 11328
    - index: 5
      opcode: NOP
      size: 4
      address: 11332
    - index: 6
      opcode: NOP
      size: 4
      address: 11336
    - index: 7
      opcode: SUBi
      size: 4
      address: 11340
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11344
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11348
    - index: 10
      opcode: NOP
      size: 4
      address: 11352
    - index: 11
      opcode: MUL
      size: 4
      address: 11356
    - index: 12
      opcode: NOP
      size: 4
      address: 11360
    - index: 13
      opcode: MFS
      size: 4
      address: 11364
    - index: 14
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11368
    - index: 15
      opcode: NOP
      size: 4
      address: 11372
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11376
    - index: 17
      opcode: NOP
      size: 4
      address: 11380
    - index: 18
      opcode: SHADDr
      size: 4
      address: 11384
    - index: 19
      opcode: SRi
      size: 4
      address: 11388
    - index: 20
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 11392
    address: 11312
  - name: 23
    mapsto: for.inc46
    predecessors:
    - 22
    successors:
    - 21
    loops:
    - 21
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11396
    - index: 1
      opcode: NOP
      size: 4
      address: 11400
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 21
      address: 11404
    - index: 3
      opcode: ADDi
      size: 4
      address: 11408
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11412
    address: 11396
  - name: 24
    mapsto: for.end48
    predecessors:
    - 21
    successors:
    - 25
    address: 11416
  - name: 25
    mapsto: if.end49
    predecessors:
    - 19
    - 24
    successors:
    - 26
    instructions:
    - index: 0
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11416
    address: 11416
  - name: 26
    mapsto: for.cond50
    predecessors:
    - 25
    - 28
    successors:
    - 27
    - 29
    loops:
    - 26
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11420
    - index: 1
      opcode: NOP
      size: 4
      address: 11424
    - index: 2
      opcode: LIi
      size: 4
      address: 11428
    - index: 3
      opcode: CMPLT
      size: 4
      address: 11432
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 29
      address: 11436
    - index: 5
      opcode: NOP
      size: 4
      address: 11440
    - index: 6
      opcode: NOP
      size: 4
      address: 11444
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 27
      address: 11448
    - index: 8
      opcode: NOP
      size: 4
      address: 11452
    - index: 9
      opcode: NOP
      size: 4
      address: 11456
    address: 11420
  - name: 27
    mapsto: for.body53
    predecessors:
    - 26
    successors:
    - 28
    loops:
    - 26
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11460
    - index: 1
      opcode: NOP
      size: 4
      address: 11464
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11468
    - index: 3
      opcode: NOP
      size: 4
      address: 11472
    - index: 4
      opcode: SHADDr
      size: 4
      address: 11476
    - index: 5
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 11480
    address: 11460
  - name: 28
    mapsto: for.inc55
    predecessors:
    - 27
    successors:
    - 26
    loops:
    - 26
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11484
    - index: 1
      opcode: NOP
      size: 4
      address: 11488
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 26
      address: 11492
    - index: 3
      opcode: ADDi
      size: 4
      address: 11496
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11500
    address: 11484
  - name: 29
    mapsto: for.end57
    predecessors:
    - 26
    successors:
    - 30
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11504
    - index: 1
      opcode: NOP
      size: 4
      address: 11508
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11512
    - index: 3
      opcode: NOP
      size: 4
      address: 11516
    - index: 4
      opcode: LIl
      size: 8
      address: 11520
    - index: 5
      opcode: LIl
      size: 8
      address: 11528
    - index: 6
      opcode: LIl
      size: 8
      address: 11536
    - index: 7
      opcode: SUBi
      size: 4
      address: 11544
    - index: 8
      opcode: LIi
      size: 4
      address: 11548
    - index: 9
      opcode: CALL
      callees:
      - fp_radix2fft_withscaling
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 11552
    - index: 10
      opcode: MOV
      size: 4
      address: 11556
    - index: 11
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11560
    - index: 12
      opcode: LIi
      size: 4
      address: 11564
    - index: 13
      opcode: ADDi
      size: 4
      address: 11568
    - index: 14
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 11572
    address: 11504
  - name: 30
    mapsto: return
    predecessors:
    - 29
    - 11
    - 7
    successors: []
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 11576
    - index: 1
      opcode: NOP
      size: 4
      address: 11580
    - index: 2
      opcode: MOV
      size: 4
      address: 11584
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11588
    - index: 4
      opcode: NOP
      size: 4
      address: 11592
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11596
    - index: 6
      opcode: NOP
      size: 4
      address: 11600
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11604
    - index: 8
      opcode: NOP
      size: 4
      address: 11608
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11612
    - index: 10
      opcode: NOP
      size: 4
      address: 11616
    - index: 11
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 11620
    - index: 12
      opcode: NOP
      size: 4
      address: 11624
    - index: 13
      opcode: MTS
      size: 4
      address: 11628
    - index: 14
      opcode: ADDi
      size: 4
      address: 11632
    address: 11576
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
    - 7
    - 8
    - 9
    - 10
    - 11
    - 12
    - 13
    - 14
    - 15
    - 16
    - 17
    - 18
    - 19
    - 20
    - 21
    - 22
    - 23
    - 24
    - 25
    - 26
    - 27
    - 28
    - 29
    - 30
- name: 4
  level: machinecode
  mapsto: isqrt32u
  arguments:
  - name: ! '%val'
    index: 0
    registers:
    - r3
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 5828
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5832
    - index: 2
      opcode: MFS
      size: 4
      address: 5836
    - index: 3
      opcode: MOV
      size: 4
      address: 5840
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5844
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5848
    - index: 6
      opcode: LIl
      size: 8
      address: 5852
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5860
    - index: 8
      opcode: LIi
      size: 4
      address: 5864
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5868
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5872
    address: 5828
  - name: 1
    mapsto: do.body
    predecessors:
    - 0
    - 4
    successors:
    - 2
    - 3
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5876
    - index: 1
      opcode: NOP
      size: 4
      address: 5880
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5884
    - index: 3
      opcode: NOP
      size: 4
      address: 5888
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5892
    - index: 5
      opcode: NOP
      size: 4
      address: 5896
    - index: 6
      opcode: SHADDr
      size: 4
      address: 5900
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5904
    - index: 8
      opcode: NOP
      size: 4
      address: 5908
    - index: 9
      opcode: SUBi
      size: 4
      address: 5912
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5916
    - index: 11
      opcode: SLr
      size: 4
      address: 5920
    - index: 12
      opcode: CMPULT
      size: 4
      address: 5924
    - index: 13
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 5928
    - index: 14
      opcode: NOP
      size: 4
      address: 5932
    - index: 15
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5936
    - index: 16
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 5940
    - index: 17
      opcode: NOP
      size: 4
      address: 5944
    - index: 18
      opcode: NOP
      size: 4
      address: 5948
    address: 5876
  - name: 2
    mapsto: if.then
    predecessors:
    - 1
    successors:
    - 3
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5952
    - index: 1
      opcode: NOP
      size: 4
      address: 5956
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5960
    - index: 3
      opcode: NOP
      size: 4
      address: 5964
    - index: 4
      opcode: ADDr
      size: 4
      address: 5968
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5972
    - index: 6
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5976
    - index: 7
      opcode: NOP
      size: 4
      address: 5980
    - index: 8
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 5984
    - index: 9
      opcode: NOP
      size: 4
      address: 5988
    - index: 10
      opcode: SUBr
      size: 4
      address: 5992
    - index: 11
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 5996
    address: 5952
  - name: 3
    mapsto: if.end
    predecessors:
    - 1
    - 2
    successors:
    - 4
    loops:
    - 1
    address: 6000
  - name: 4
    mapsto: do.cond
    predecessors:
    - 3
    successors:
    - 1
    - 5
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6000
    - index: 1
      opcode: NOP
      size: 4
      address: 6004
    - index: 2
      opcode: SRAi
      size: 4
      address: 6008
    - index: 3
      opcode: MOVrp
      size: 4
      address: 6012
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 6016
    - index: 5
      opcode: NOP
      size: 4
      address: 6020
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6024
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 5
      address: 6028
    - index: 8
      opcode: NOP
      size: 4
      address: 6032
    - index: 9
      opcode: NOP
      size: 4
      address: 6036
    address: 6000
  - name: 5
    mapsto: do.end
    predecessors:
    - 4
    successors: []
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6040
    - index: 1
      opcode: NOP
      size: 4
      address: 6044
    - index: 2
      opcode: MOV
      size: 4
      address: 6048
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6052
    - index: 4
      opcode: NOP
      size: 4
      address: 6056
    - index: 5
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 6060
    - index: 6
      opcode: NOP
      size: 4
      address: 6064
    - index: 7
      opcode: MTS
      size: 4
      address: 6068
    - index: 8
      opcode: ADDi
      size: 4
      address: 6072
    address: 6040
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
- name: 17
  level: machinecode
  mapsto: init_state
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 11652
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11656
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11660
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11664
    - index: 4
      opcode: LIl
      size: 8
      address: 11668
    - index: 5
      opcode: MOV
      size: 4
      address: 11676
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11680
    - index: 7
      opcode: CALL
      callees:
      - init_sample_buffer
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 11684
    - index: 8
      opcode: ADDi
      size: 4
      address: 11688
    - index: 9
      opcode: LIi
      size: 4
      address: 11692
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11696
    - index: 11
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11700
    - index: 12
      opcode: NOP
      size: 4
      address: 11704
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11708
    - index: 14
      opcode: MOV
      size: 4
      address: 11712
    - index: 15
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11716
    - index: 16
      opcode: NOP
      size: 4
      address: 11720
    - index: 17
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11724
    - index: 18
      opcode: NOP
      size: 4
      address: 11728
    - index: 19
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11732
    - index: 20
      opcode: NOP
      size: 4
      address: 11736
    - index: 21
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 11740
    - index: 22
      opcode: NOP
      size: 4
      address: 11744
    - index: 23
      opcode: NOP
      size: 4
      address: 11748
    - index: 24
      opcode: ADDi
      size: 4
      address: 11752
    address: 11652
  subfunctions:
  - name: 0
    blocks:
    - 0
- name: 14
  level: machinecode
  mapsto: task
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    - 2
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 9412
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9416
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9420
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9424
    - index: 4
      opcode: MFS
      size: 4
      address: 9428
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9432
    - index: 6
      opcode: LIl
      size: 8
      address: 9436
    - index: 7
      opcode: MOV
      size: 4
      address: 9444
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9448
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9452
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9456
    - index: 11
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9460
    - index: 12
      opcode: NOP
      size: 4
      address: 9464
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9468
    - index: 14
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9472
    - index: 15
      opcode: NOP
      size: 4
      address: 9476
    - index: 16
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9480
    - index: 17
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9484
    - index: 18
      opcode: CALL
      callees:
      - merge_samples
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 9488
    - index: 19
      opcode: MOV
      size: 4
      address: 9492
    - index: 20
      opcode: MOV
      size: 4
      address: 9496
    - index: 21
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9500
    - index: 22
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9504
    - index: 23
      opcode: NOP
      size: 4
      address: 9508
    - index: 24
      opcode: LIl
      size: 8
      address: 9512
    - index: 25
      opcode: LIl
      size: 8
      address: 9520
    - index: 26
      opcode: CALL
      callees:
      - fft
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 9528
    - index: 27
      opcode: NOP
      size: 4
      address: 9532
    - index: 28
      opcode: NOP
      size: 4
      address: 9536
    - index: 29
      opcode: NOP
      size: 4
      address: 9540
    - index: 30
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 9544
    - index: 31
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 9548
    - index: 32
      opcode: NOP
      size: 4
      address: 9552
    - index: 33
      opcode: CMPEQ
      size: 4
      address: 9556
    - index: 34
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9560
    - index: 35
      opcode: NOP
      size: 4
      address: 9564
    - index: 36
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9568
    - index: 37
      opcode: NOP
      size: 4
      address: 9572
    - index: 38
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9576
    - index: 39
      opcode: NOP
      size: 4
      address: 9580
    - index: 40
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9584
    - index: 41
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9588
    - index: 42
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 9592
    - index: 43
      opcode: NOP
      size: 4
      address: 9596
    - index: 44
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9600
    - index: 45
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 9604
    - index: 46
      opcode: NOP
      size: 4
      address: 9608
    - index: 47
      opcode: NOP
      size: 4
      address: 9612
    address: 9412
  - name: 1
    mapsto: if.then
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 9616
    - index: 1
      opcode: NOP
      size: 4
      address: 9620
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 9624
    - index: 3
      opcode: NOP
      size: 4
      address: 9628
    - index: 4
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 9632
    address: 9616
  - name: 2
    mapsto: if.end
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9636
    - index: 1
      opcode: NOP
      size: 4
      address: 9640
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9644
    - index: 3
      opcode: NOP
      size: 4
      address: 9648
    - index: 4
      opcode: SHADD2l
      size: 8
      address: 9652
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9660
    - index: 6
      opcode: NOP
      size: 4
      address: 9664
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9668
    - index: 8
      opcode: NOP
      size: 4
      address: 9672
    - index: 9
      opcode: LIl
      size: 8
      address: 9676
    - index: 10
      opcode: LIl
      size: 8
      address: 9684
    - index: 11
      opcode: CALLR
      callees:
      - check_sin
      - check_square
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 9692
    - index: 12
      opcode: NOP
      size: 4
      address: 9696
    - index: 13
      opcode: NOP
      size: 4
      address: 9700
    - index: 14
      opcode: NOP
      size: 4
      address: 9704
    - index: 15
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 9708
    - index: 16
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 9712
    address: 9636
  - name: 3
    mapsto: return
    predecessors:
    - 2
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 9716
    - index: 1
      opcode: NOP
      size: 4
      address: 9720
    - index: 2
      opcode: MOV
      size: 4
      address: 9724
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9728
    - index: 4
      opcode: NOP
      size: 4
      address: 9732
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9736
    - index: 6
      opcode: NOP
      size: 4
      address: 9740
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9744
    - index: 8
      opcode: NOP
      size: 4
      address: 9748
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9752
    - index: 10
      opcode: NOP
      size: 4
      address: 9756
    - index: 11
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 9760
    - index: 12
      opcode: NOP
      size: 4
      address: 9764
    - index: 13
      opcode: MTS
      size: 4
      address: 9768
    - index: 14
      opcode: ADDi
      size: 4
      address: 9772
    address: 9716
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
- name: 115
  level: machinecode
  mapsto: __divsi3
  arguments:
  - name: ! '%a'
    index: 0
    registers:
    - r3
  - name: ! '%b'
    index: 1
    registers:
    - r4
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 78276
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 78280
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 78284
    - index: 3
      opcode: LIl
      size: 8
      address: 78288
    - index: 4
      opcode: SRAi
      size: 4
      address: 78296
    - index: 5
      opcode: SRAi
      size: 4
      address: 78300
    - index: 6
      opcode: XORr
      size: 4
      address: 78304
    - index: 7
      opcode: SUBr
      size: 4
      address: 78308
    - index: 8
      opcode: XORr
      size: 4
      address: 78312
    - index: 9
      opcode: SUBr
      size: 4
      address: 78316
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 78320
    - index: 11
      opcode: CALL
      callees:
      - __udivsi3
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 78324
    - index: 12
      opcode: MOV
      size: 4
      address: 78328
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 78332
    - index: 14
      opcode: MOV
      size: 4
      address: 78336
    - index: 15
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 78340
    - index: 16
      opcode: NOP
      size: 4
      address: 78344
    - index: 17
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 78348
    - index: 18
      opcode: NOP
      size: 4
      address: 78352
    - index: 19
      opcode: XORr
      size: 4
      address: 78356
    - index: 20
      opcode: SRAi
      size: 4
      address: 78360
    - index: 21
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 78364
    - index: 22
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 78368
    - index: 23
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 78372
    - index: 24
      opcode: NOP
      size: 4
      address: 78376
    - index: 25
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 78380
    - index: 26
      opcode: NOP
      size: 4
      address: 78384
    - index: 27
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 78388
    - index: 28
      opcode: XORr
      size: 4
      address: 78392
    - index: 29
      opcode: SUBr
      size: 4
      address: 78396
    - index: 30
      opcode: ADDi
      size: 4
      address: 78400
    address: 78276
  subfunctions:
  - name: 0
    blocks:
    - 0
- name: 12
  level: machinecode
  mapsto: sample_buffer_get_valid
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    - 2
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 8900
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8904
    - index: 2
      opcode: MFS
      size: 4
      address: 8908
    - index: 3
      opcode: MOV
      size: 4
      address: 8912
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8916
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8920
    - index: 6
      opcode: NOP
      size: 4
      address: 8924
    - index: 7
      opcode: LIl
      size: 8
      address: 8928
    - index: 8
      opcode: CMPNEQ
      size: 4
      address: 8936
    - index: 9
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 8940
    - index: 10
      opcode: NOP
      size: 4
      address: 8944
    - index: 11
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8948
    - index: 12
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 8952
    - index: 13
      opcode: NOP
      size: 4
      address: 8956
    - index: 14
      opcode: NOP
      size: 4
      address: 8960
    address: 8900
  - name: 1
    mapsto: if.then
    predecessors:
    - 0
    successors:
    - 9
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 9
      address: 8964
    - index: 1
      opcode: LIl
      size: 8
      address: 8968
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8976
    address: 8964
  - name: 2
    mapsto: if.end
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8980
    - index: 1
      opcode: NOP
      size: 4
      address: 8984
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8988
    - index: 3
      opcode: NOP
      size: 4
      address: 8992
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8996
    - index: 5
      opcode: NOP
      size: 4
      address: 9000
    - index: 6
      opcode: SUBr
      size: 4
      address: 9004
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9008
    address: 8980
  - name: 3
    mapsto: do.body
    predecessors:
    - 2
    successors:
    - 4
    address: 9012
  - name: 4
    mapsto: do.end
    predecessors:
    - 3
    successors:
    - 5
    - 6
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9012
    - index: 1
      opcode: NOP
      size: 4
      address: 9016
    - index: 2
      opcode: LIi
      size: 4
      address: 9020
    - index: 3
      opcode: CMPLT
      size: 4
      address: 9024
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 6
      address: 9028
    - index: 5
      opcode: NOP
      size: 4
      address: 9032
    - index: 6
      opcode: NOP
      size: 4
      address: 9036
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 5
      address: 9040
    - index: 8
      opcode: NOP
      size: 4
      address: 9044
    - index: 9
      opcode: NOP
      size: 4
      address: 9048
    address: 9012
  - name: 5
    mapsto: if.then3
    predecessors:
    - 4
    successors:
    - 6
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9052
    - index: 1
      opcode: NOP
      size: 4
      address: 9056
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9060
    - index: 3
      opcode: NOP
      size: 4
      address: 9064
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9068
    - index: 5
      opcode: NOP
      size: 4
      address: 9072
    - index: 6
      opcode: SUBr
      size: 4
      address: 9076
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9080
    address: 9052
  - name: 6
    mapsto: if.end5
    predecessors:
    - 4
    - 5
    successors:
    - 7
    address: 9084
  - name: 7
    mapsto: do.body6
    predecessors:
    - 6
    successors:
    - 8
    address: 9084
  - name: 8
    mapsto: do.end7
    predecessors:
    - 7
    successors:
    - 9
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9084
    - index: 1
      opcode: NOP
      size: 4
      address: 9088
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9092
    address: 9084
  - name: 9
    mapsto: return
    predecessors:
    - 8
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9096
    - index: 1
      opcode: NOP
      size: 4
      address: 9100
    - index: 2
      opcode: MOV
      size: 4
      address: 9104
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9108
    - index: 4
      opcode: NOP
      size: 4
      address: 9112
    - index: 5
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 9116
    - index: 6
      opcode: NOP
      size: 4
      address: 9120
    - index: 7
      opcode: MTS
      size: 4
      address: 9124
    - index: 8
      opcode: ADDi
      size: 4
      address: 9128
    address: 9096
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
    - 7
    - 8
    - 9
- name: 10
  level: machinecode
  mapsto: sample_buffer_set
  arguments:
  - name: ! '%offset'
    index: 1
    registers:
    - r4
  - name: ! '%value'
    index: 2
    registers:
    - r5
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    - 2
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 8388
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8392
    - index: 2
      opcode: MFS
      size: 4
      address: 8396
    - index: 3
      opcode: MOV
      size: 4
      address: 8400
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8404
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8408
    - index: 6
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 8412
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8416
    - index: 8
      opcode: NOP
      size: 4
      address: 8420
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8424
    - index: 10
      opcode: NOP
      size: 4
      address: 8428
    - index: 11
      opcode: LIin
      size: 4
      address: 8432
    - index: 12
      opcode: CMPLT
      size: 4
      address: 8436
    - index: 13
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 8440
    - index: 14
      opcode: NOP
      size: 4
      address: 8444
    - index: 15
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8448
    - index: 16
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8452
    - index: 17
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8456
    - index: 18
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 8460
    - index: 19
      opcode: NOP
      size: 4
      address: 8464
    - index: 20
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8468
    - index: 21
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 8472
    - index: 22
      opcode: NOP
      size: 4
      address: 8476
    - index: 23
      opcode: NOP
      size: 4
      address: 8480
    address: 8388
  - name: 1
    mapsto: cond.true
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8484
    - index: 1
      opcode: NOP
      size: 4
      address: 8488
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8492
    - index: 3
      opcode: NOP
      size: 4
      address: 8496
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8500
    - index: 5
      opcode: NOP
      size: 4
      address: 8504
    - index: 6
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 8508
    - index: 7
      opcode: ADDr
      size: 4
      address: 8512
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8516
    address: 8484
  - name: 2
    mapsto: cond.false
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8520
    - index: 1
      opcode: NOP
      size: 4
      address: 8524
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8528
    - index: 3
      opcode: NOP
      size: 4
      address: 8532
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8536
    address: 8520
  - name: 3
    mapsto: cond.end
    predecessors:
    - 2
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8540
    - index: 1
      opcode: NOP
      size: 4
      address: 8544
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8548
    - index: 3
      opcode: NOP
      size: 4
      address: 8552
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8556
    - index: 5
      opcode: NOP
      size: 4
      address: 8560
    - index: 6
      opcode: ADDr
      size: 4
      address: 8564
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8568
    - index: 8
      opcode: NOP
      size: 4
      address: 8572
    - index: 9
      opcode: ADDr
      size: 4
      address: 8576
    - index: 10
      opcode: SUBi
      size: 4
      address: 8580
    - index: 11
      opcode: ANDr
      size: 4
      address: 8584
    - index: 12
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8588
    - index: 13
      opcode: NOP
      size: 4
      address: 8592
    - index: 14
      opcode: SHADDr
      size: 4
      address: 8596
    - index: 15
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8600
    - index: 16
      opcode: NOP
      size: 4
      address: 8604
    - index: 17
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 8608
    - index: 18
      opcode: MOV
      size: 4
      address: 8612
    - index: 19
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8616
    - index: 20
      opcode: NOP
      size: 4
      address: 8620
    - index: 21
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 8624
    - index: 22
      opcode: NOP
      size: 4
      address: 8628
    - index: 23
      opcode: MTS
      size: 4
      address: 8632
    - index: 24
      opcode: ADDi
      size: 4
      address: 8636
    address: 8540
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
- name: 9
  level: machinecode
  mapsto: sample_buffer_get
  arguments:
  - name: ! '%offset'
    index: 1
    registers:
    - r4
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    - 2
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 8132
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8136
    - index: 2
      opcode: MFS
      size: 4
      address: 8140
    - index: 3
      opcode: MOV
      size: 4
      address: 8144
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8148
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8152
    - index: 6
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8156
    - index: 7
      opcode: NOP
      size: 4
      address: 8160
    - index: 8
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8164
    - index: 9
      opcode: NOP
      size: 4
      address: 8168
    - index: 10
      opcode: LIin
      size: 4
      address: 8172
    - index: 11
      opcode: CMPLT
      size: 4
      address: 8176
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8180
    - index: 13
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 8184
    - index: 14
      opcode: NOP
      size: 4
      address: 8188
    - index: 15
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8192
    - index: 16
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 8196
    - index: 17
      opcode: NOP
      size: 4
      address: 8200
    - index: 18
      opcode: NOP
      size: 4
      address: 8204
    address: 8132
  - name: 1
    mapsto: cond.true
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8208
    - index: 1
      opcode: NOP
      size: 4
      address: 8212
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8216
    - index: 3
      opcode: NOP
      size: 4
      address: 8220
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8224
    - index: 5
      opcode: NOP
      size: 4
      address: 8228
    - index: 6
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 8232
    - index: 7
      opcode: ADDr
      size: 4
      address: 8236
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8240
    address: 8208
  - name: 2
    mapsto: cond.false
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8244
    - index: 1
      opcode: NOP
      size: 4
      address: 8248
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8252
    - index: 3
      opcode: NOP
      size: 4
      address: 8256
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8260
    address: 8244
  - name: 3
    mapsto: cond.end
    predecessors:
    - 2
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8264
    - index: 1
      opcode: NOP
      size: 4
      address: 8268
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8272
    - index: 3
      opcode: NOP
      size: 4
      address: 8276
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8280
    - index: 5
      opcode: NOP
      size: 4
      address: 8284
    - index: 6
      opcode: ADDr
      size: 4
      address: 8288
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8292
    - index: 8
      opcode: NOP
      size: 4
      address: 8296
    - index: 9
      opcode: ADDr
      size: 4
      address: 8300
    - index: 10
      opcode: SUBi
      size: 4
      address: 8304
    - index: 11
      opcode: ANDr
      size: 4
      address: 8308
    - index: 12
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8312
    - index: 13
      opcode: NOP
      size: 4
      address: 8316
    - index: 14
      opcode: SHADDr
      size: 4
      address: 8320
    - index: 15
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 8324
    - index: 16
      opcode: NOP
      size: 4
      address: 8328
    - index: 17
      opcode: MOV
      size: 4
      address: 8332
    - index: 18
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8336
    - index: 19
      opcode: NOP
      size: 4
      address: 8340
    - index: 20
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 8344
    - index: 21
      opcode: NOP
      size: 4
      address: 8348
    - index: 22
      opcode: MTS
      size: 4
      address: 8352
    - index: 23
      opcode: ADDi
      size: 4
      address: 8356
    address: 8264
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
- name: 13
  level: machinecode
  mapsto: sample_buffer_set_valid
  arguments:
  - name: ! '%rindex'
    index: 1
    registers:
    - r4
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    - 2
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 9156
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9160
    - index: 2
      opcode: MFS
      size: 4
      address: 9164
    - index: 3
      opcode: MOV
      size: 4
      address: 9168
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9172
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9176
    - index: 6
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9180
    - index: 7
      opcode: NOP
      size: 4
      address: 9184
    - index: 8
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9188
    - index: 9
      opcode: NOP
      size: 4
      address: 9192
    - index: 10
      opcode: LIin
      size: 4
      address: 9196
    - index: 11
      opcode: CMPLT
      size: 4
      address: 9200
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9204
    - index: 13
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 9208
    - index: 14
      opcode: NOP
      size: 4
      address: 9212
    - index: 15
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9216
    - index: 16
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 9220
    - index: 17
      opcode: NOP
      size: 4
      address: 9224
    - index: 18
      opcode: NOP
      size: 4
      address: 9228
    address: 9156
  - name: 1
    mapsto: cond.true
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9232
    - index: 1
      opcode: NOP
      size: 4
      address: 9236
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9240
    - index: 3
      opcode: NOP
      size: 4
      address: 9244
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9248
    - index: 5
      opcode: NOP
      size: 4
      address: 9252
    - index: 6
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 9256
    - index: 7
      opcode: ADDr
      size: 4
      address: 9260
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9264
    address: 9232
  - name: 2
    mapsto: cond.false
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9268
    - index: 1
      opcode: NOP
      size: 4
      address: 9272
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9276
    - index: 3
      opcode: NOP
      size: 4
      address: 9280
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9284
    address: 9268
  - name: 3
    mapsto: cond.end
    predecessors:
    - 2
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9288
    - index: 1
      opcode: NOP
      size: 4
      address: 9292
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9296
    - index: 3
      opcode: NOP
      size: 4
      address: 9300
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9304
    - index: 5
      opcode: NOP
      size: 4
      address: 9308
    - index: 6
      opcode: ADDr
      size: 4
      address: 9312
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9316
    - index: 8
      opcode: NOP
      size: 4
      address: 9320
    - index: 9
      opcode: ADDr
      size: 4
      address: 9324
    - index: 10
      opcode: SUBi
      size: 4
      address: 9328
    - index: 11
      opcode: ANDr
      size: 4
      address: 9332
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 9336
    - index: 13
      opcode: MOV
      size: 4
      address: 9340
    - index: 14
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 9344
    - index: 15
      opcode: NOP
      size: 4
      address: 9348
    - index: 16
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 9352
    - index: 17
      opcode: NOP
      size: 4
      address: 9356
    - index: 18
      opcode: MTS
      size: 4
      address: 9360
    - index: 19
      opcode: ADDi
      size: 4
      address: 9364
    address: 9288
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
- name: 11
  level: machinecode
  mapsto: sample_buffer_incr_ptr
  arguments:
  - name: ! '%offset'
    index: 1
    registers:
    - r4
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    - 2
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 8644
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8648
    - index: 2
      opcode: MFS
      size: 4
      address: 8652
    - index: 3
      opcode: MOV
      size: 4
      address: 8656
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8660
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8664
    - index: 6
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8668
    - index: 7
      opcode: NOP
      size: 4
      address: 8672
    - index: 8
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8676
    - index: 9
      opcode: NOP
      size: 4
      address: 8680
    - index: 10
      opcode: LIin
      size: 4
      address: 8684
    - index: 11
      opcode: CMPLT
      size: 4
      address: 8688
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8692
    - index: 13
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 8696
    - index: 14
      opcode: NOP
      size: 4
      address: 8700
    - index: 15
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8704
    - index: 16
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 8708
    - index: 17
      opcode: NOP
      size: 4
      address: 8712
    - index: 18
      opcode: NOP
      size: 4
      address: 8716
    address: 8644
  - name: 1
    mapsto: cond.true
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8720
    - index: 1
      opcode: NOP
      size: 4
      address: 8724
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8728
    - index: 3
      opcode: NOP
      size: 4
      address: 8732
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8736
    - index: 5
      opcode: NOP
      size: 4
      address: 8740
    - index: 6
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 8744
    - index: 7
      opcode: ADDr
      size: 4
      address: 8748
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8752
    address: 8720
  - name: 2
    mapsto: cond.false
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8756
    - index: 1
      opcode: NOP
      size: 4
      address: 8760
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8764
    - index: 3
      opcode: NOP
      size: 4
      address: 8768
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8772
    address: 8756
  - name: 3
    mapsto: cond.end
    predecessors:
    - 2
    - 1
    successors:
    - 4
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8776
    - index: 1
      opcode: NOP
      size: 4
      address: 8780
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8784
    - index: 3
      opcode: NOP
      size: 4
      address: 8788
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8792
    - index: 5
      opcode: NOP
      size: 4
      address: 8796
    - index: 6
      opcode: ADDr
      size: 4
      address: 8800
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8804
    - index: 8
      opcode: NOP
      size: 4
      address: 8808
    - index: 9
      opcode: ADDr
      size: 4
      address: 8812
    - index: 10
      opcode: SUBi
      size: 4
      address: 8816
    - index: 11
      opcode: ANDr
      size: 4
      address: 8820
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 8824
    address: 8776
  - name: 4
    mapsto: do.body
    predecessors:
    - 3
    successors:
    - 5
    address: 8828
  - name: 5
    mapsto: do.end
    predecessors:
    - 4
    successors: []
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 8828
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 8832
    - index: 2
      opcode: NOP
      size: 4
      address: 8836
    - index: 3
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 8840
    - index: 4
      opcode: NOP
      size: 4
      address: 8844
    - index: 5
      opcode: MTS
      size: 4
      address: 8848
    - index: 6
      opcode: ADDi
      size: 4
      address: 8852
    address: 8828
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
- name: 5
  level: machinecode
  mapsto: fp_radix2fft_withscaling
  arguments:
  - name: ! '%n'
    index: 5
    registers:
    - r8
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 6084
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6088
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6092
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6096
    - index: 4
      opcode: MFS
      size: 4
      address: 6100
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6104
    - index: 6
      opcode: LIl
      size: 8
      address: 6108
    - index: 7
      opcode: MOV
      size: 4
      address: 6116
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6120
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6124
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6128
    - index: 11
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6132
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6136
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6140
    - index: 14
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6144
    - index: 15
      opcode: NOP
      size: 4
      address: 6148
    - index: 16
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6152
    - index: 17
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6156
    - index: 18
      opcode: NOP
      size: 4
      address: 6160
    - index: 19
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6164
    - index: 20
      opcode: NOP
      size: 4
      address: 6168
    - index: 21
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6172
    - index: 22
      opcode: NOP
      size: 4
      address: 6176
    - index: 23
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6180
    - index: 24
      opcode: MOV
      size: 4
      address: 6184
    - index: 25
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6188
    - index: 26
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6192
    - index: 27
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6196
    - index: 28
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6200
    - index: 29
      opcode: CALL
      callees:
      - bitreverse
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 6204
    - index: 30
      opcode: MOV
      size: 4
      address: 6208
    - index: 31
      opcode: MOV
      size: 4
      address: 6212
    - index: 32
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6216
    - index: 33
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6220
    - index: 34
      opcode: NOP
      size: 4
      address: 6224
    - index: 35
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6228
    - index: 36
      opcode: NOP
      size: 4
      address: 6232
    - index: 37
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6236
    - index: 38
      opcode: NOP
      size: 4
      address: 6240
    - index: 39
      opcode: CALL
      callees:
      - bitreverse
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 6244
    - index: 40
      opcode: NOP
      size: 4
      address: 6248
    - index: 41
      opcode: NOP
      size: 4
      address: 6252
    - index: 42
      opcode: NOP
      size: 4
      address: 6256
    - index: 43
      opcode: LIi
      size: 4
      address: 6260
    - index: 44
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6264
    - index: 45
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6268
    - index: 46
      opcode: NOP
      size: 4
      address: 6272
    - index: 47
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6276
    - index: 48
      opcode: NOP
      size: 4
      address: 6280
    - index: 49
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6284
    - index: 50
      opcode: NOP
      size: 4
      address: 6288
    - index: 51
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6292
    - index: 52
      opcode: NOP
      size: 4
      address: 6296
    - index: 53
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6300
    - index: 54
      opcode: NOP
      size: 4
      address: 6304
    - index: 55
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6308
    - index: 56
      opcode: NOP
      size: 4
      address: 6312
    - index: 57
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6316
    - index: 58
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6320
    - index: 59
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6324
    - index: 60
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6328
    - index: 61
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6332
    - index: 62
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6336
    address: 6084
  - name: 1
    mapsto: for.cond
    predecessors:
    - 0
    - 11
    successors:
    - 2
    - 12
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6340
    - index: 1
      opcode: NOP
      size: 4
      address: 6344
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6348
    - index: 3
      opcode: NOP
      size: 4
      address: 6352
    - index: 4
      opcode: CMPLT
      size: 4
      address: 6356
    - index: 5
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 12
      address: 6360
    - index: 6
      opcode: NOP
      size: 4
      address: 6364
    - index: 7
      opcode: NOP
      size: 4
      address: 6368
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 6372
    - index: 9
      opcode: NOP
      size: 4
      address: 6376
    - index: 10
      opcode: NOP
      size: 4
      address: 6380
    address: 6340
  - name: 2
    mapsto: for.body
    predecessors:
    - 1
    successors:
    - 3
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LIi
      size: 4
      address: 6384
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6388
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6392
    - index: 3
      opcode: NOP
      size: 4
      address: 6396
    - index: 4
      opcode: SLr
      size: 4
      address: 6400
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6404
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6408
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6412
    - index: 8
      opcode: NOP
      size: 4
      address: 6416
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6420
    - index: 10
      opcode: NOP
      size: 4
      address: 6424
    - index: 11
      opcode: SUBr
      size: 4
      address: 6428
    - index: 12
      opcode: SLr
      size: 4
      address: 6432
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6436
    - index: 14
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6440
    - index: 15
      opcode: NOP
      size: 4
      address: 6444
    - index: 16
      opcode: SRAi
      size: 4
      address: 6448
    - index: 17
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6452
    - index: 18
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6456
    - index: 19
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6460
    address: 6384
  - name: 3
    mapsto: for.cond2
    predecessors:
    - 2
    - 9
    successors:
    - 4
    - 10
    loops:
    - 3
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6464
    - index: 1
      opcode: NOP
      size: 4
      address: 6468
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6472
    - index: 3
      opcode: NOP
      size: 4
      address: 6476
    - index: 4
      opcode: CMPLE
      size: 4
      address: 6480
    - index: 5
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 10
      address: 6484
    - index: 6
      opcode: NOP
      size: 4
      address: 6488
    - index: 7
      opcode: NOP
      size: 4
      address: 6492
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 6496
    - index: 9
      opcode: NOP
      size: 4
      address: 6500
    - index: 10
      opcode: NOP
      size: 4
      address: 6504
    address: 6464
  - name: 4
    mapsto: for.body4
    predecessors:
    - 3
    successors:
    - 5
    loops:
    - 3
    - 1
    instructions:
    - index: 0
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6508
    address: 6508
  - name: 5
    mapsto: for.cond5
    predecessors:
    - 4
    - 7
    successors:
    - 6
    - 8
    loops:
    - 5
    - 3
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6512
    - index: 1
      opcode: NOP
      size: 4
      address: 6516
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6520
    - index: 3
      opcode: NOP
      size: 4
      address: 6524
    - index: 4
      opcode: CMPLE
      size: 4
      address: 6528
    - index: 5
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 8
      address: 6532
    - index: 6
      opcode: NOP
      size: 4
      address: 6536
    - index: 7
      opcode: NOP
      size: 4
      address: 6540
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 6
      address: 6544
    - index: 9
      opcode: NOP
      size: 4
      address: 6548
    - index: 10
      opcode: NOP
      size: 4
      address: 6552
    address: 6512
  - name: 6
    mapsto: for.body7
    predecessors:
    - 5
    successors:
    - 7
    loops:
    - 5
    - 3
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6556
    - index: 1
      opcode: NOP
      size: 4
      address: 6560
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6564
    - index: 3
      opcode: NOP
      size: 4
      address: 6568
    - index: 4
      opcode: ADDr
      size: 4
      address: 6572
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6576
    - index: 6
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6580
    - index: 7
      opcode: NOP
      size: 4
      address: 6584
    - index: 8
      opcode: ADDr
      size: 4
      address: 6588
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6592
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6596
    - index: 11
      opcode: NOP
      size: 4
      address: 6600
    - index: 12
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6604
    - index: 13
      opcode: NOP
      size: 4
      address: 6608
    - index: 14
      opcode: ADDr
      size: 4
      address: 6612
    - index: 15
      opcode: SUBi
      size: 4
      address: 6616
    - index: 16
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6620
    - index: 17
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6624
    - index: 18
      opcode: NOP
      size: 4
      address: 6628
    - index: 19
      opcode: SHADDr
      size: 4
      address: 6632
    - index: 20
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6636
    - index: 21
      opcode: NOP
      size: 4
      address: 6640
    - index: 22
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6644
    - index: 23
      opcode: NOP
      size: 4
      address: 6648
    - index: 24
      opcode: SHADDr
      size: 4
      address: 6652
    - index: 25
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 6656
    - index: 26
      opcode: NOP
      size: 4
      address: 6660
    - index: 27
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 6664
    - index: 28
      opcode: NOP
      size: 4
      address: 6668
    - index: 29
      opcode: MUL
      size: 4
      address: 6672
    - index: 30
      opcode: NOP
      size: 4
      address: 6676
    - index: 31
      opcode: MFS
      size: 4
      address: 6680
    - index: 32
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6684
    - index: 33
      opcode: NOP
      size: 4
      address: 6688
    - index: 34
      opcode: SHADDr
      size: 4
      address: 6692
    - index: 35
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6696
    - index: 36
      opcode: NOP
      size: 4
      address: 6700
    - index: 37
      opcode: SHADDr
      size: 4
      address: 6704
    - index: 38
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 6708
    - index: 39
      opcode: NOP
      size: 4
      address: 6712
    - index: 40
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 6716
    - index: 41
      opcode: NOP
      size: 4
      address: 6720
    - index: 42
      opcode: MUL
      size: 4
      address: 6724
    - index: 43
      opcode: NOP
      size: 4
      address: 6728
    - index: 44
      opcode: MFS
      size: 4
      address: 6732
    - index: 45
      opcode: SUBr
      size: 4
      address: 6736
    - index: 46
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6740
    - index: 47
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6744
    - index: 48
      opcode: NOP
      size: 4
      address: 6748
    - index: 49
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6752
    - index: 50
      opcode: NOP
      size: 4
      address: 6756
    - index: 51
      opcode: SHADDr
      size: 4
      address: 6760
    - index: 52
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6764
    - index: 53
      opcode: NOP
      size: 4
      address: 6768
    - index: 54
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6772
    - index: 55
      opcode: NOP
      size: 4
      address: 6776
    - index: 56
      opcode: SHADDr
      size: 4
      address: 6780
    - index: 57
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 6784
    - index: 58
      opcode: NOP
      size: 4
      address: 6788
    - index: 59
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 6792
    - index: 60
      opcode: NOP
      size: 4
      address: 6796
    - index: 61
      opcode: MUL
      size: 4
      address: 6800
    - index: 62
      opcode: NOP
      size: 4
      address: 6804
    - index: 63
      opcode: MFS
      size: 4
      address: 6808
    - index: 64
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6812
    - index: 65
      opcode: NOP
      size: 4
      address: 6816
    - index: 66
      opcode: SHADDr
      size: 4
      address: 6820
    - index: 67
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6824
    - index: 68
      opcode: NOP
      size: 4
      address: 6828
    - index: 69
      opcode: SHADDr
      size: 4
      address: 6832
    - index: 70
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 6836
    - index: 71
      opcode: NOP
      size: 4
      address: 6840
    - index: 72
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 6844
    - index: 73
      opcode: NOP
      size: 4
      address: 6848
    - index: 74
      opcode: MUL
      size: 4
      address: 6852
    - index: 75
      opcode: NOP
      size: 4
      address: 6856
    - index: 76
      opcode: MFS
      size: 4
      address: 6860
    - index: 77
      opcode: ADDr
      size: 4
      address: 6864
    - index: 78
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 6868
    - index: 79
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6872
    - index: 80
      opcode: NOP
      size: 4
      address: 6876
    - index: 81
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6880
    - index: 82
      opcode: NOP
      size: 4
      address: 6884
    - index: 83
      opcode: SHADDr
      size: 4
      address: 6888
    - index: 84
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 6892
    - index: 85
      opcode: NOP
      size: 4
      address: 6896
    - index: 86
      opcode: SLi
      size: 4
      address: 6900
    - index: 87
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6904
    - index: 88
      opcode: NOP
      size: 4
      address: 6908
    - index: 89
      opcode: SUBr
      size: 4
      address: 6912
    - index: 90
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6916
    - index: 91
      opcode: NOP
      size: 4
      address: 6920
    - index: 92
      opcode: SHADDr
      size: 4
      address: 6924
    - index: 93
      opcode: SRi
      size: 4
      address: 6928
    - index: 94
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 6932
    - index: 95
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6936
    - index: 96
      opcode: NOP
      size: 4
      address: 6940
    - index: 97
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6944
    - index: 98
      opcode: NOP
      size: 4
      address: 6948
    - index: 99
      opcode: SHADDr
      size: 4
      address: 6952
    - index: 100
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 6956
    - index: 101
      opcode: NOP
      size: 4
      address: 6960
    - index: 102
      opcode: SLi
      size: 4
      address: 6964
    - index: 103
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6968
    - index: 104
      opcode: NOP
      size: 4
      address: 6972
    - index: 105
      opcode: SUBr
      size: 4
      address: 6976
    - index: 106
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 6980
    - index: 107
      opcode: NOP
      size: 4
      address: 6984
    - index: 108
      opcode: SHADDr
      size: 4
      address: 6988
    - index: 109
      opcode: SRi
      size: 4
      address: 6992
    - index: 110
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 6996
    - index: 111
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7000
    - index: 112
      opcode: NOP
      size: 4
      address: 7004
    - index: 113
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7008
    - index: 114
      opcode: NOP
      size: 4
      address: 7012
    - index: 115
      opcode: SHADDr
      size: 4
      address: 7016
    - index: 116
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 7020
    - index: 117
      opcode: NOP
      size: 4
      address: 7024
    - index: 118
      opcode: SLi
      size: 4
      address: 7028
    - index: 119
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7032
    - index: 120
      opcode: NOP
      size: 4
      address: 7036
    - index: 121
      opcode: ADDr
      size: 4
      address: 7040
    - index: 122
      opcode: SRi
      size: 4
      address: 7044
    - index: 123
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 7048
    - index: 124
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7052
    - index: 125
      opcode: NOP
      size: 4
      address: 7056
    - index: 126
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7060
    - index: 127
      opcode: NOP
      size: 4
      address: 7064
    - index: 128
      opcode: SHADDr
      size: 4
      address: 7068
    - index: 129
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 7072
    - index: 130
      opcode: NOP
      size: 4
      address: 7076
    - index: 131
      opcode: SLi
      size: 4
      address: 7080
    - index: 132
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7084
    - index: 133
      opcode: NOP
      size: 4
      address: 7088
    - index: 134
      opcode: ADDr
      size: 4
      address: 7092
    - index: 135
      opcode: SRi
      size: 4
      address: 7096
    - index: 136
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 7100
    address: 6556
  - name: 7
    mapsto: for.inc
    predecessors:
    - 6
    successors:
    - 5
    loops:
    - 5
    - 3
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7104
    - index: 1
      opcode: NOP
      size: 4
      address: 7108
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 5
      address: 7112
    - index: 3
      opcode: ADDi
      size: 4
      address: 7116
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7120
    address: 7104
  - name: 8
    mapsto: for.end
    predecessors:
    - 5
    successors:
    - 9
    loops:
    - 3
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7124
    - index: 1
      opcode: NOP
      size: 4
      address: 7128
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7132
    - index: 3
      opcode: NOP
      size: 4
      address: 7136
    - index: 4
      opcode: ADDr
      size: 4
      address: 7140
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7144
    address: 7124
  - name: 9
    mapsto: for.inc59
    predecessors:
    - 8
    successors:
    - 3
    loops:
    - 3
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7148
    - index: 1
      opcode: NOP
      size: 4
      address: 7152
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 7156
    - index: 3
      opcode: ADDi
      size: 4
      address: 7160
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7164
    address: 7148
  - name: 10
    mapsto: for.end61
    predecessors:
    - 3
    successors:
    - 11
    loops:
    - 1
    address: 7168
  - name: 11
    mapsto: for.inc62
    predecessors:
    - 10
    successors:
    - 1
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7168
    - index: 1
      opcode: NOP
      size: 4
      address: 7172
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 7176
    - index: 3
      opcode: ADDi
      size: 4
      address: 7180
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7184
    address: 7168
  - name: 12
    mapsto: for.end64
    predecessors:
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 7188
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7192
    - index: 2
      opcode: NOP
      size: 4
      address: 7196
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7200
    - index: 4
      opcode: NOP
      size: 4
      address: 7204
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7208
    - index: 6
      opcode: NOP
      size: 4
      address: 7212
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7216
    - index: 8
      opcode: NOP
      size: 4
      address: 7220
    - index: 9
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 7224
    - index: 10
      opcode: NOP
      size: 4
      address: 7228
    - index: 11
      opcode: MTS
      size: 4
      address: 7232
    - index: 12
      opcode: ADDi
      size: 4
      address: 7236
    address: 7188
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
    - 7
    - 8
    - 9
    - 10
    - 11
    - 12
- name: 18
  level: machinecode
  mapsto: check_sin
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    - 2
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 11780
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11784
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11788
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11792
    - index: 4
      opcode: MFS
      size: 4
      address: 11796
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11800
    - index: 6
      opcode: LIl
      size: 8
      address: 11804
    - index: 7
      opcode: MOV
      size: 4
      address: 11812
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11816
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11820
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11824
    - index: 11
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11828
    - index: 12
      opcode: NOP
      size: 4
      address: 11832
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11836
    - index: 14
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11840
    - index: 15
      opcode: NOP
      size: 4
      address: 11844
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11848
    - index: 17
      opcode: NOP
      size: 4
      address: 11852
    - index: 18
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 11856
    - index: 19
      opcode: NOP
      size: 4
      address: 11860
    - index: 20
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 11864
    - index: 21
      opcode: NOP
      size: 4
      address: 11868
    - index: 22
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11872
    - index: 23
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11876
    - index: 24
      opcode: CALL
      callees:
      - abs_complex
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 11880
    - index: 25
      opcode: MOV
      size: 4
      address: 11884
    - index: 26
      opcode: MOV
      size: 4
      address: 11888
    - index: 27
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11892
    - index: 28
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 11896
    - index: 29
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11900
    - index: 30
      opcode: NOP
      size: 4
      address: 11904
    - index: 31
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 11908
    - index: 32
      opcode: NOP
      size: 4
      address: 11912
    - index: 33
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 11916
    - index: 34
      opcode: NOP
      size: 4
      address: 11920
    - index: 35
      opcode: CMPLE
      size: 4
      address: 11924
    - index: 36
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11928
    - index: 37
      opcode: NOP
      size: 4
      address: 11932
    - index: 38
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11936
    - index: 39
      opcode: NOP
      size: 4
      address: 11940
    - index: 40
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 11944
    - index: 41
      opcode: NOP
      size: 4
      address: 11948
    - index: 42
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11952
    - index: 43
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11956
    - index: 44
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 11960
    - index: 45
      opcode: NOP
      size: 4
      address: 11964
    - index: 46
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 11968
    - index: 47
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 11972
    - index: 48
      opcode: NOP
      size: 4
      address: 11976
    - index: 49
      opcode: NOP
      size: 4
      address: 11980
    address: 11780
  - name: 1
    mapsto: if.then
    predecessors:
    - 0
    successors:
    - 13
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 13
      address: 11984
    - index: 1
      opcode: LIl
      size: 8
      address: 11988
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 11996
    address: 11984
  - name: 2
    mapsto: if.end
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LIi
      size: 4
      address: 12000
    - index: 1
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 12004
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12008
    address: 12000
  - name: 3
    mapsto: for.cond
    predecessors:
    - 2
    - 9
    successors:
    - 4
    - 10
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12012
    - index: 1
      opcode: NOP
      size: 4
      address: 12016
    - index: 2
      opcode: LIi
      size: 4
      address: 12020
    - index: 3
      opcode: CMPLT
      size: 4
      address: 12024
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 10
      address: 12028
    - index: 5
      opcode: NOP
      size: 4
      address: 12032
    - index: 6
      opcode: NOP
      size: 4
      address: 12036
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 12040
    - index: 8
      opcode: NOP
      size: 4
      address: 12044
    - index: 9
      opcode: NOP
      size: 4
      address: 12048
    address: 12012
  - name: 4
    mapsto: for.body
    predecessors:
    - 3
    successors:
    - 5
    - 8
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12052
    - index: 1
      opcode: NOP
      size: 4
      address: 12056
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12060
    - index: 3
      opcode: NOP
      size: 4
      address: 12064
    - index: 4
      opcode: SHADDr
      size: 4
      address: 12068
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12072
    - index: 6
      opcode: NOP
      size: 4
      address: 12076
    - index: 7
      opcode: SHADDr
      size: 4
      address: 12080
    - index: 8
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12084
    - index: 9
      opcode: NOP
      size: 4
      address: 12088
    - index: 10
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12092
    - index: 11
      opcode: NOP
      size: 4
      address: 12096
    - index: 12
      opcode: CALL
      callees:
      - abs_complex
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 12100
    - index: 13
      opcode: NOP
      size: 4
      address: 12104
    - index: 14
      opcode: NOP
      size: 4
      address: 12108
    - index: 15
      opcode: NOP
      size: 4
      address: 12112
    - index: 16
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 12116
    - index: 17
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12120
    - index: 18
      opcode: NOP
      size: 4
      address: 12124
    - index: 19
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12128
    - index: 20
      opcode: NOP
      size: 4
      address: 12132
    - index: 21
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12136
    - index: 22
      opcode: NOP
      size: 4
      address: 12140
    - index: 23
      opcode: CMPLE
      size: 4
      address: 12144
    - index: 24
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 8
      address: 12148
    - index: 25
      opcode: NOP
      size: 4
      address: 12152
    - index: 26
      opcode: NOP
      size: 4
      address: 12156
    - index: 27
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 5
      address: 12160
    - index: 28
      opcode: NOP
      size: 4
      address: 12164
    - index: 29
      opcode: NOP
      size: 4
      address: 12168
    address: 12052
  - name: 5
    mapsto: if.then17
    predecessors:
    - 4
    successors:
    - 6
    - 7
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12172
    - index: 1
      opcode: NOP
      size: 4
      address: 12176
    - index: 2
      opcode: CMPEQ
      size: 4
      address: 12180
    - index: 3
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 7
      address: 12184
    - index: 4
      opcode: NOP
      size: 4
      address: 12188
    - index: 5
      opcode: NOP
      size: 4
      address: 12192
    - index: 6
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 6
      address: 12196
    - index: 7
      opcode: NOP
      size: 4
      address: 12200
    - index: 8
      opcode: NOP
      size: 4
      address: 12204
    address: 12172
  - name: 6
    mapsto: if.then21
    predecessors:
    - 5
    successors:
    - 13
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 13
      address: 12208
    - index: 1
      opcode: LIl
      size: 8
      address: 12212
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 12220
    address: 12208
  - name: 7
    mapsto: if.end22
    predecessors:
    - 5
    successors:
    - 8
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 12224
    - index: 1
      opcode: NOP
      size: 4
      address: 12228
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 12232
    address: 12224
  - name: 8
    mapsto: if.end23
    predecessors:
    - 4
    - 7
    successors:
    - 9
    loops:
    - 3
    address: 12236
  - name: 9
    mapsto: for.inc
    predecessors:
    - 8
    successors:
    - 3
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12236
    - index: 1
      opcode: NOP
      size: 4
      address: 12240
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 12244
    - index: 3
      opcode: ADDi
      size: 4
      address: 12248
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12252
    address: 12236
  - name: 10
    mapsto: for.end
    predecessors:
    - 3
    successors:
    - 11
    - 12
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12256
    - index: 1
      opcode: NOP
      size: 4
      address: 12260
    - index: 2
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12264
    - index: 3
      opcode: NOP
      size: 4
      address: 12268
    - index: 4
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12272
    - index: 5
      opcode: NOP
      size: 4
      address: 12276
    - index: 6
      opcode: CMPLE
      size: 4
      address: 12280
    - index: 7
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 12
      address: 12284
    - index: 8
      opcode: NOP
      size: 4
      address: 12288
    - index: 9
      opcode: NOP
      size: 4
      address: 12292
    - index: 10
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 11
      address: 12296
    - index: 11
      opcode: NOP
      size: 4
      address: 12300
    - index: 12
      opcode: NOP
      size: 4
      address: 12304
    address: 12256
  - name: 11
    mapsto: if.then28
    predecessors:
    - 10
    successors:
    - 13
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 13
      address: 12308
    - index: 1
      opcode: LIl
      size: 8
      address: 12312
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 12320
    address: 12308
  - name: 12
    mapsto: if.end29
    predecessors:
    - 10
    successors:
    - 13
    instructions:
    - index: 0
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 12324
    address: 12324
  - name: 13
    mapsto: return
    predecessors:
    - 12
    - 11
    - 6
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12328
    - index: 1
      opcode: NOP
      size: 4
      address: 12332
    - index: 2
      opcode: MOV
      size: 4
      address: 12336
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12340
    - index: 4
      opcode: NOP
      size: 4
      address: 12344
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12348
    - index: 6
      opcode: NOP
      size: 4
      address: 12352
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12356
    - index: 8
      opcode: NOP
      size: 4
      address: 12360
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12364
    - index: 10
      opcode: NOP
      size: 4
      address: 12368
    - index: 11
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 12372
    - index: 12
      opcode: NOP
      size: 4
      address: 12376
    - index: 13
      opcode: MTS
      size: 4
      address: 12380
    - index: 14
      opcode: ADDi
      size: 4
      address: 12384
    address: 12328
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
    - 7
    - 8
    - 9
    - 10
    - 11
    - 12
    - 13
- name: 20
  level: machinecode
  mapsto: check_square
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    - 2
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 12612
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12616
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12620
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12624
    - index: 4
      opcode: MFS
      size: 4
      address: 12628
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12632
    - index: 6
      opcode: LIl
      size: 8
      address: 12636
    - index: 7
      opcode: MOV
      size: 4
      address: 12644
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12648
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12652
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12656
    - index: 11
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12660
    - index: 12
      opcode: NOP
      size: 4
      address: 12664
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12668
    - index: 14
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12672
    - index: 15
      opcode: NOP
      size: 4
      address: 12676
    - index: 16
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12680
    - index: 17
      opcode: NOP
      size: 4
      address: 12684
    - index: 18
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12688
    - index: 19
      opcode: NOP
      size: 4
      address: 12692
    - index: 20
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12696
    - index: 21
      opcode: NOP
      size: 4
      address: 12700
    - index: 22
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12704
    - index: 23
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12708
    - index: 24
      opcode: CALL
      callees:
      - abs_complex
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 12712
    - index: 25
      opcode: MOV
      size: 4
      address: 12716
    - index: 26
      opcode: MOV
      size: 4
      address: 12720
    - index: 27
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12724
    - index: 28
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 12728
    - index: 29
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 12732
    - index: 30
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12736
    - index: 31
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12740
    - index: 32
      opcode: NOP
      size: 4
      address: 12744
    - index: 33
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12748
    - index: 34
      opcode: NOP
      size: 4
      address: 12752
    - index: 35
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 12756
    - index: 36
      opcode: NOP
      size: 4
      address: 12760
    - index: 37
      opcode: CMPLE
      size: 4
      address: 12764
    - index: 38
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12768
    - index: 39
      opcode: NOP
      size: 4
      address: 12772
    - index: 40
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12776
    - index: 41
      opcode: NOP
      size: 4
      address: 12780
    - index: 42
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12784
    - index: 43
      opcode: NOP
      size: 4
      address: 12788
    - index: 44
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12792
    - index: 45
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12796
    - index: 46
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 12800
    - index: 47
      opcode: NOP
      size: 4
      address: 12804
    - index: 48
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12808
    - index: 49
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 12812
    - index: 50
      opcode: NOP
      size: 4
      address: 12816
    - index: 51
      opcode: NOP
      size: 4
      address: 12820
    address: 12612
  - name: 1
    mapsto: if.then
    predecessors:
    - 0
    successors:
    - 17
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 17
      address: 12824
    - index: 1
      opcode: LIl
      size: 8
      address: 12828
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 12836
    address: 12824
  - name: 2
    mapsto: if.end
    predecessors:
    - 0
    successors:
    - 3
    instructions:
    - index: 0
      opcode: LIi
      size: 4
      address: 12840
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12844
    address: 12840
  - name: 3
    mapsto: for.cond
    predecessors:
    - 2
    - 13
    successors:
    - 4
    - 14
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12848
    - index: 1
      opcode: NOP
      size: 4
      address: 12852
    - index: 2
      opcode: LIi
      size: 4
      address: 12856
    - index: 3
      opcode: CMPLT
      size: 4
      address: 12860
    - index: 4
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 14
      address: 12864
    - index: 5
      opcode: NOP
      size: 4
      address: 12868
    - index: 6
      opcode: NOP
      size: 4
      address: 12872
    - index: 7
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 12876
    - index: 8
      opcode: NOP
      size: 4
      address: 12880
    - index: 9
      opcode: NOP
      size: 4
      address: 12884
    address: 12848
  - name: 4
    mapsto: for.body
    predecessors:
    - 3
    successors:
    - 5
    - 12
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12888
    - index: 1
      opcode: NOP
      size: 4
      address: 12892
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12896
    - index: 3
      opcode: NOP
      size: 4
      address: 12900
    - index: 4
      opcode: SHADDr
      size: 4
      address: 12904
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12908
    - index: 6
      opcode: NOP
      size: 4
      address: 12912
    - index: 7
      opcode: SHADDr
      size: 4
      address: 12916
    - index: 8
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12920
    - index: 9
      opcode: NOP
      size: 4
      address: 12924
    - index: 10
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12928
    - index: 11
      opcode: NOP
      size: 4
      address: 12932
    - index: 12
      opcode: CALL
      callees:
      - abs_complex
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 12936
    - index: 13
      opcode: NOP
      size: 4
      address: 12940
    - index: 14
      opcode: NOP
      size: 4
      address: 12944
    - index: 15
      opcode: NOP
      size: 4
      address: 12948
    - index: 16
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 12952
    - index: 17
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12956
    - index: 18
      opcode: NOP
      size: 4
      address: 12960
    - index: 19
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 12964
    - index: 20
      opcode: NOP
      size: 4
      address: 12968
    - index: 21
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 12972
    - index: 22
      opcode: NOP
      size: 4
      address: 12976
    - index: 23
      opcode: CMPLE
      size: 4
      address: 12980
    - index: 24
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 12
      address: 12984
    - index: 25
      opcode: NOP
      size: 4
      address: 12988
    - index: 26
      opcode: NOP
      size: 4
      address: 12992
    - index: 27
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 5
      address: 12996
    - index: 28
      opcode: NOP
      size: 4
      address: 13000
    - index: 29
      opcode: NOP
      size: 4
      address: 13004
    address: 12888
  - name: 5
    mapsto: if.then17
    predecessors:
    - 4
    successors:
    - 6
    - 7
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13008
    - index: 1
      opcode: NOP
      size: 4
      address: 13012
    - index: 2
      opcode: ADDi
      size: 4
      address: 13016
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13020
    - index: 4
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 13024
    - index: 5
      opcode: NOP
      size: 4
      address: 13028
    - index: 6
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 13032
    - index: 7
      opcode: NOP
      size: 4
      address: 13036
    - index: 8
      opcode: CMPLE
      size: 4
      address: 13040
    - index: 9
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 7
      address: 13044
    - index: 10
      opcode: NOP
      size: 4
      address: 13048
    - index: 11
      opcode: NOP
      size: 4
      address: 13052
    - index: 12
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 6
      address: 13056
    - index: 13
      opcode: NOP
      size: 4
      address: 13060
    - index: 14
      opcode: NOP
      size: 4
      address: 13064
    address: 13008
  - name: 6
    mapsto: if.then22
    predecessors:
    - 5
    successors:
    - 17
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 17
      address: 13068
    - index: 1
      opcode: LIl
      size: 8
      address: 13072
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 13080
    address: 13068
  - name: 7
    mapsto: if.end23
    predecessors:
    - 5
    successors:
    - 8
    - 11
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 13084
    - index: 1
      opcode: NOP
      size: 4
      address: 13088
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 13092
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13096
    - index: 4
      opcode: NOP
      size: 4
      address: 13100
    - index: 5
      opcode: LIi
      size: 4
      address: 13104
    - index: 6
      opcode: CMPNEQ
      size: 4
      address: 13108
    - index: 7
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 11
      address: 13112
    - index: 8
      opcode: NOP
      size: 4
      address: 13116
    - index: 9
      opcode: NOP
      size: 4
      address: 13120
    - index: 10
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 8
      address: 13124
    - index: 11
      opcode: NOP
      size: 4
      address: 13128
    - index: 12
      opcode: NOP
      size: 4
      address: 13132
    address: 13084
  - name: 8
    mapsto: if.then26
    predecessors:
    - 7
    successors:
    - 9
    - 10
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13136
    - index: 1
      opcode: NOP
      size: 4
      address: 13140
    - index: 2
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 13144
    - index: 3
      opcode: NOP
      size: 4
      address: 13148
    - index: 4
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 13152
    - index: 5
      opcode: NOP
      size: 4
      address: 13156
    - index: 6
      opcode: CMPLE
      size: 4
      address: 13160
    - index: 7
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 10
      address: 13164
    - index: 8
      opcode: NOP
      size: 4
      address: 13168
    - index: 9
      opcode: NOP
      size: 4
      address: 13172
    - index: 10
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 9
      address: 13176
    - index: 11
      opcode: NOP
      size: 4
      address: 13180
    - index: 12
      opcode: NOP
      size: 4
      address: 13184
    address: 13136
  - name: 9
    mapsto: if.then31
    predecessors:
    - 8
    successors:
    - 17
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 17
      address: 13188
    - index: 1
      opcode: LIl
      size: 8
      address: 13192
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 13200
    address: 13188
  - name: 10
    mapsto: if.end32
    predecessors:
    - 8
    successors:
    - 11
    loops:
    - 3
    address: 13204
  - name: 11
    mapsto: if.end33
    predecessors:
    - 7
    - 10
    successors:
    - 12
    loops:
    - 3
    address: 13204
  - name: 12
    mapsto: if.end34
    predecessors:
    - 4
    - 11
    successors:
    - 13
    loops:
    - 3
    address: 13204
  - name: 13
    mapsto: for.inc
    predecessors:
    - 12
    successors:
    - 3
    loops:
    - 3
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13204
    - index: 1
      opcode: NOP
      size: 4
      address: 13208
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 13212
    - index: 3
      opcode: ADDi
      size: 4
      address: 13216
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 13220
    address: 13204
  - name: 14
    mapsto: for.end
    predecessors:
    - 3
    successors:
    - 15
    - 16
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13224
    - index: 1
      opcode: NOP
      size: 4
      address: 13228
    - index: 2
      opcode: MOVrp
      size: 4
      address: 13232
    - index: 3
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 16
      address: 13236
    - index: 4
      opcode: NOP
      size: 4
      address: 13240
    - index: 5
      opcode: NOP
      size: 4
      address: 13244
    - index: 6
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 15
      address: 13248
    - index: 7
      opcode: NOP
      size: 4
      address: 13252
    - index: 8
      opcode: NOP
      size: 4
      address: 13256
    address: 13224
  - name: 15
    mapsto: if.then38
    predecessors:
    - 14
    successors:
    - 17
    instructions:
    - index: 0
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 17
      address: 13260
    - index: 1
      opcode: LIl
      size: 8
      address: 13264
    - index: 2
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 13272
    address: 13260
  - name: 16
    mapsto: if.end39
    predecessors:
    - 14
    successors:
    - 17
    instructions:
    - index: 0
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 13276
    address: 13276
  - name: 17
    mapsto: return
    predecessors:
    - 16
    - 15
    - 9
    - 6
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: LHC
      size: 4
      memmode: load
      memtype: cache
      address: 13280
    - index: 1
      opcode: NOP
      size: 4
      address: 13284
    - index: 2
      opcode: MOV
      size: 4
      address: 13288
    - index: 3
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13292
    - index: 4
      opcode: NOP
      size: 4
      address: 13296
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13300
    - index: 6
      opcode: NOP
      size: 4
      address: 13304
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13308
    - index: 8
      opcode: NOP
      size: 4
      address: 13312
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 13316
    - index: 10
      opcode: NOP
      size: 4
      address: 13320
    - index: 11
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 13324
    - index: 12
      opcode: NOP
      size: 4
      address: 13328
    - index: 13
      opcode: MTS
      size: 4
      address: 13332
    - index: 14
      opcode: ADDi
      size: 4
      address: 13336
    address: 13280
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
    - 7
    - 8
    - 9
    - 10
    - 11
    - 12
    - 13
    - 14
    - 15
    - 16
    - 17
- name: 123
  level: machinecode
  mapsto: __udivsi3
  arguments:
  - name: ! '%n'
    index: 0
    registers:
    - r3
  - name: ! '%d'
    index: 1
    registers:
    - r4
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 83524
    - index: 1
      opcode: MFS
      size: 4
      address: 83528
    - index: 2
      opcode: LIi
      size: 4
      address: 83532
    - index: 3
      opcode: MOV
      size: 4
      address: 83536
    - index: 4
      opcode: MOV
      size: 4
      address: 83540
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83544
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83548
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83552
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83556
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83560
    address: 83524
  - name: 1
    mapsto: for.body
    predecessors:
    - 0
    - 3
    successors:
    - 3
    - 2
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83564
    - index: 1
      opcode: NOP
      size: 4
      address: 83568
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83572
    - index: 3
      opcode: NOP
      size: 4
      address: 83576
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83580
    - index: 5
      opcode: NOP
      size: 4
      address: 83584
    - index: 6
      opcode: SLi
      size: 4
      address: 83588
    - index: 7
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83592
    - index: 8
      opcode: NOP
      size: 4
      address: 83596
    - index: 9
      opcode: SRr
      size: 4
      address: 83600
    - index: 10
      opcode: ANDi
      size: 4
      address: 83604
    - index: 11
      opcode: ORr
      size: 4
      address: 83608
    - index: 12
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83612
    - index: 13
      opcode: NOP
      size: 4
      address: 83616
    - index: 14
      opcode: CMPULT
      size: 4
      address: 83620
    - index: 15
      opcode: MOV
      size: 4
      address: 83624
    - index: 16
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83628
    - index: 17
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83632
    - index: 18
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83636
    - index: 19
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83640
    - index: 20
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 83644
    - index: 21
      opcode: MOV
      size: 4
      address: 83648
    - index: 22
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83652
    - index: 23
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 83656
    - index: 24
      opcode: NOP
      size: 4
      address: 83660
    - index: 25
      opcode: NOP
      size: 4
      address: 83664
    address: 83564
  - name: 2
    mapsto: if.then
    predecessors:
    - 1
    successors:
    - 3
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83668
    - index: 1
      opcode: NOP
      size: 4
      address: 83672
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83676
    - index: 3
      opcode: NOP
      size: 4
      address: 83680
    - index: 4
      opcode: SUBr
      size: 4
      address: 83684
    - index: 5
      opcode: LIi
      size: 4
      address: 83688
    - index: 6
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83692
    - index: 7
      opcode: NOP
      size: 4
      address: 83696
    - index: 8
      opcode: SLr
      size: 4
      address: 83700
    - index: 9
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83704
    - index: 10
      opcode: NOP
      size: 4
      address: 83708
    - index: 11
      opcode: ORr
      size: 4
      address: 83712
    - index: 12
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83716
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83720
    address: 83668
  - name: 3
    mapsto: for.inc
    predecessors:
    - 1
    - 2
    successors:
    - 1
    - 4
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83724
    - index: 1
      opcode: NOP
      size: 4
      address: 83728
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83732
    - index: 3
      opcode: NOP
      size: 4
      address: 83736
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83740
    - index: 5
      opcode: NOP
      size: 4
      address: 83744
    - index: 6
      opcode: CMPLT
      size: 4
      address: 83748
    - index: 7
      opcode: MOV
      size: 4
      address: 83752
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83756
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83760
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83764
    - index: 11
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 83768
    - index: 12
      opcode: SUBi
      size: 4
      address: 83772
    - index: 13
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 83776
    - index: 14
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 83780
    - index: 15
      opcode: NOP
      size: 4
      address: 83784
    - index: 16
      opcode: NOP
      size: 4
      address: 83788
    address: 83724
  - name: 4
    mapsto: for.end
    predecessors:
    - 3
    successors: []
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 83792
    - index: 1
      opcode: NOP
      size: 4
      address: 83796
    - index: 2
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 83800
    - index: 3
      opcode: NOP
      size: 4
      address: 83804
    - index: 4
      opcode: MTS
      size: 4
      address: 83808
    - index: 5
      opcode: ADDi
      size: 4
      address: 83812
    address: 83792
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
- name: 6
  level: machinecode
  mapsto: bitreverse
  arguments:
  - name: ! '%n'
    index: 2
    registers:
    - r5
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors:
    - 1
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 7300
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7304
    - index: 2
      opcode: MFS
      size: 4
      address: 7308
    - index: 3
      opcode: MOV
      size: 4
      address: 7312
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7316
    - index: 5
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7320
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7324
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7328
    - index: 8
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7332
    - index: 9
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7336
    - index: 10
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7340
    address: 7300
  - name: 1
    mapsto: for.cond
    predecessors:
    - 0
    - 5
    successors:
    - 2
    - 6
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7344
    - index: 1
      opcode: NOP
      size: 4
      address: 7348
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7352
    - index: 3
      opcode: NOP
      size: 4
      address: 7356
    - index: 4
      opcode: CMPLE
      size: 4
      address: 7360
    - index: 5
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 6
      address: 7364
    - index: 6
      opcode: NOP
      size: 4
      address: 7368
    - index: 7
      opcode: NOP
      size: 4
      address: 7372
    - index: 8
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 2
      address: 7376
    - index: 9
      opcode: NOP
      size: 4
      address: 7380
    - index: 10
      opcode: NOP
      size: 4
      address: 7384
    address: 7344
  - name: 2
    mapsto: for.body
    predecessors:
    - 1
    successors:
    - 3
    - 4
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7388
    - index: 1
      opcode: NOP
      size: 4
      address: 7392
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7396
    - index: 3
      opcode: NOP
      size: 4
      address: 7400
    - index: 4
      opcode: SHADD2r
      size: 4
      address: 7404
    - index: 5
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7408
    - index: 6
      opcode: NOP
      size: 4
      address: 7412
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7416
    - index: 8
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7420
    - index: 9
      opcode: NOP
      size: 4
      address: 7424
    - index: 10
      opcode: CMPLE
      size: 4
      address: 7428
    - index: 11
      opcode: BR
      size: 4
      branch-type: conditional
      branch-delay-slots: 2
      branch-targets:
      - 4
      address: 7432
    - index: 12
      opcode: NOP
      size: 4
      address: 7436
    - index: 13
      opcode: NOP
      size: 4
      address: 7440
    - index: 14
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 3
      address: 7444
    - index: 15
      opcode: NOP
      size: 4
      address: 7448
    - index: 16
      opcode: NOP
      size: 4
      address: 7452
    address: 7388
  - name: 3
    mapsto: if.then
    predecessors:
    - 2
    successors:
    - 4
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7456
    - index: 1
      opcode: NOP
      size: 4
      address: 7460
    - index: 2
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7464
    - index: 3
      opcode: NOP
      size: 4
      address: 7468
    - index: 4
      opcode: SHADDr
      size: 4
      address: 7472
    - index: 5
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 7476
    - index: 6
      opcode: NOP
      size: 4
      address: 7480
    - index: 7
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 7484
    - index: 8
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7488
    - index: 9
      opcode: NOP
      size: 4
      address: 7492
    - index: 10
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7496
    - index: 11
      opcode: NOP
      size: 4
      address: 7500
    - index: 12
      opcode: SHADDr
      size: 4
      address: 7504
    - index: 13
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 7508
    - index: 14
      opcode: NOP
      size: 4
      address: 7512
    - index: 15
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7516
    - index: 16
      opcode: NOP
      size: 4
      address: 7520
    - index: 17
      opcode: SHADDr
      size: 4
      address: 7524
    - index: 18
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 7528
    - index: 19
      opcode: LHUC
      size: 4
      memmode: load
      memtype: cache
      address: 7532
    - index: 20
      opcode: NOP
      size: 4
      address: 7536
    - index: 21
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7540
    - index: 22
      opcode: NOP
      size: 4
      address: 7544
    - index: 23
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7548
    - index: 24
      opcode: NOP
      size: 4
      address: 7552
    - index: 25
      opcode: SHADDr
      size: 4
      address: 7556
    - index: 26
      opcode: SHC
      size: 4
      memmode: store
      memtype: cache
      address: 7560
    address: 7456
  - name: 4
    mapsto: if.end
    predecessors:
    - 2
    - 3
    successors:
    - 5
    loops:
    - 1
    address: 7564
  - name: 5
    mapsto: for.inc
    predecessors:
    - 4
    successors:
    - 1
    loops:
    - 1
    instructions:
    - index: 0
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7564
    - index: 1
      opcode: NOP
      size: 4
      address: 7568
    - index: 2
      opcode: BRu
      size: 4
      branch-type: unconditional
      branch-delay-slots: 2
      branch-targets:
      - 1
      address: 7572
    - index: 3
      opcode: ADDi
      size: 4
      address: 7576
    - index: 4
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 7580
    address: 7564
  - name: 6
    mapsto: for.end
    predecessors:
    - 1
    successors: []
    instructions:
    - index: 0
      opcode: MOV
      size: 4
      address: 7584
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 7588
    - index: 2
      opcode: NOP
      size: 4
      address: 7592
    - index: 3
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 7596
    - index: 4
      opcode: NOP
      size: 4
      address: 7600
    - index: 5
      opcode: MTS
      size: 4
      address: 7604
    - index: 6
      opcode: ADDi
      size: 4
      address: 7608
    address: 7584
  subfunctions:
  - name: 0
    blocks:
    - 0
    - 1
    - 2
    - 3
    - 4
    - 5
    - 6
- name: 19
  level: machinecode
  mapsto: abs_complex
  arguments:
  - name: ! '%real'
    index: 0
    registers:
    - r3
  - name: ! '%imag'
    index: 1
    registers:
    - r4
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: SUBi
      size: 4
      address: 12420
    - index: 1
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12424
    - index: 2
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12428
    - index: 3
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12432
    - index: 4
      opcode: LIl
      size: 8
      address: 12436
    - index: 5
      opcode: MOV
      size: 4
      address: 12444
    - index: 6
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12448
    - index: 7
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12452
    - index: 8
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12456
    - index: 9
      opcode: NOP
      size: 4
      address: 12460
    - index: 10
      opcode: MUL
      size: 4
      address: 12464
    - index: 11
      opcode: NOP
      size: 4
      address: 12468
    - index: 12
      opcode: MFS
      size: 4
      address: 12472
    - index: 13
      opcode: SRAi
      size: 4
      address: 12476
    - index: 14
      opcode: MUL
      size: 4
      address: 12480
    - index: 15
      opcode: NOP
      size: 4
      address: 12484
    - index: 16
      opcode: MFS
      size: 4
      address: 12488
    - index: 17
      opcode: SRAi
      size: 4
      address: 12492
    - index: 18
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12496
    - index: 19
      opcode: CALL
      callees:
      - isqrt32u
      size: 4
      branch-type: call
      branch-delay-slots: 3
      address: 12500
    - index: 20
      opcode: ADDr
      size: 4
      address: 12504
    - index: 21
      opcode: MOV
      size: 4
      address: 12508
    - index: 22
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12512
    - index: 23
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12516
    - index: 24
      opcode: NOP
      size: 4
      address: 12520
    - index: 25
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12524
    - index: 26
      opcode: NOP
      size: 4
      address: 12528
    - index: 27
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12532
    - index: 28
      opcode: SWC
      size: 4
      memmode: store
      memtype: cache
      address: 12536
    - index: 29
      opcode: MOV
      size: 4
      address: 12540
    - index: 30
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12544
    - index: 31
      opcode: NOP
      size: 4
      address: 12548
    - index: 32
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12552
    - index: 33
      opcode: NOP
      size: 4
      address: 12556
    - index: 34
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 12560
    - index: 35
      opcode: NOP
      size: 4
      address: 12564
    - index: 36
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 12568
    - index: 37
      opcode: SLi
      size: 4
      address: 12572
    - index: 38
      opcode: ANDl
      size: 8
      address: 12576
    - index: 39
      opcode: ADDi
      size: 4
      address: 12584
    address: 12420
  subfunctions:
  - name: 0
    blocks:
    - 0
valuefacts:
- level: machinecode
  origin: llvm.mc
  variable: mem-address-read
  values:
  - symbol: spec
  program-point:
    function: 27
    block: 2
    instruction: 10
- level: machinecode
  origin: llvm.mc
  variable: mem-address-write
  values:
  - symbol: output
  program-point:
    function: 27
    block: 2
    instruction: 19
- level: machinecode
  origin: llvm.mc
  variable: mem-address-read
  values:
  - symbol: spec
  program-point:
    function: 27
    block: 8
    instruction: 10
- level: machinecode
  origin: llvm.mc
  variable: mem-address-write
  values:
  - symbol: output
  program-point:
    function: 27
    block: 8
    instruction: 19
- level: machinecode
  origin: llvm.mc
  variable: mem-address-read
  values:
  - symbol: spec
  program-point:
    function: 27
    block: 14
    instruction: 10
- level: machinecode
  origin: llvm.mc
  variable: mem-address-write
  values:
  - symbol: output
  program-point:
    function: 27
    block: 14
    instruction: 19
- level: machinecode
  origin: llvm.mc
  variable: mem-address-read
  values:
  - symbol: spec
  program-point:
    function: 27
    block: 20
    instruction: 10
- level: machinecode
  origin: llvm.mc
  variable: mem-address-write
  values:
  - symbol: output
  program-point:
    function: 27
    block: 20
    instruction: 19
- level: machinecode
  origin: llvm.mc
  variable: mem-address-write
  values:
  - symbol: inputbuf
  program-point:
    function: 27
    block: 26
    instruction: 3
- level: machinecode
  origin: llvm.mc
  variable: mem-address-read
  values:
  - symbol: spec
  program-point:
    function: 27
    block: 30
    instruction: 10
- level: machinecode
  origin: llvm.mc
  variable: mem-address-write
  values:
  - symbol: output
  program-point:
    function: 27
    block: 30
    instruction: 19
- level: machinecode
  origin: llvm.mc
  variable: mem-address-write
  values:
  - symbol: inputbuf
  program-point:
    function: 27
    block: 36
    instruction: 4
- level: machinecode
  origin: llvm.mc
  variable: mem-address-read
  values:
  - symbol: spec
  program-point:
    function: 27
    block: 40
    instruction: 10
- level: machinecode
  origin: llvm.mc
  variable: mem-address-write
  values:
  - symbol: output
  program-point:
    function: 27
    block: 40
    instruction: 19
- level: machinecode
  origin: llvm.mc
  variable: mem-address-read
  values:
  - symbol: spec
  program-point:
    function: 27
    block: 46
    instruction: 10
- level: machinecode
  origin: llvm.mc
  variable: mem-address-write
  values:
  - symbol: output
  program-point:
    function: 27
    block: 46
    instruction: 19
- level: machinecode
  origin: llvm.mc
  variable: mem-address-read
  values:
  - symbol: spec
  program-point:
    function: 27
    block: 52
    instruction: 10
- level: machinecode
  origin: llvm.mc
  variable: mem-address-write
  values:
  - symbol: output
  program-point:
    function: 27
    block: 52
    instruction: 19
- level: machinecode
  origin: llvm.mc
  variable: mem-address-read
  values:
  - symbol: spec
  program-point:
    function: 27
    block: 58
    instruction: 10
- level: machinecode
  origin: llvm.mc
  variable: mem-address-write
  values:
  - symbol: output
  program-point:
    function: 27
    block: 58
    instruction: 19
- level: machinecode
  origin: llvm.mc
  variable: mem-address-read
  values:
  - symbol: checks
  program-point:
    function: 14
    block: 2
    instruction: 5
bitcode-functions:
- name: main
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - do.body
    instructions:
    - index: 0
      opcode: retval
    - index: 1
      memmode: store
    - index: 2
      callees:
      - init_sample_buffer
    - index: 3
      callees:
      - test_interpolate
    - index: 4
      callees:
      - test_merge_samples
    - index: 5
      callees:
      - test_fft
    - index: 6
      callees:
      - test_task
    - index: 7
  - name: do.body
    predecessors:
    - entry
    successors:
    - do.end
    instructions:
    - index: 0
  - name: do.end
    predecessors:
    - do.body
    successors: []
    instructions:
    - index: 0
- name: init_sample_buffer
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: buf.addr
    - index: 1
      opcode: buf_storage.addr
    - index: 2
      opcode: buf_size.addr
    - index: 3
      memmode: store
    - index: 4
      callees:
      - llvm.dbg.declare
    - index: 5
      memmode: store
    - index: 6
      callees:
      - llvm.dbg.declare
    - index: 7
      memmode: store
    - index: 8
      callees:
      - llvm.dbg.declare
    - index: 9
      memmode: load
    - index: 10
      memmode: load
    - index: 11
      opcode: samples
    - index: 12
      memmode: store
    - index: 13
      memmode: load
    - index: 14
      memmode: load
    - index: 15
      opcode: buf_size1
    - index: 16
      memmode: store
    - index: 17
      memmode: load
    - index: 18
      callees:
      - clear_sample_buffer
    - index: 19
- name: test_interpolate
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - for.cond
    instructions:
    - index: 0
      opcode: indices
    - index: 1
      opcode: values
    - index: 2
      opcode: i
    - index: 3
      opcode: j
    - index: 4
      opcode: i1
    - index: 5
      opcode: i2
    - index: 6
      opcode: v1
    - index: 7
      opcode: v2
    - index: 8
      opcode: v
    - index: 9
      callees:
      - llvm.dbg.declare
    - index: 10
    - index: 11
      callees:
      - llvm.memcpy.p0i8.p0i8.i32
    - index: 12
      callees:
      - llvm.dbg.declare
    - index: 13
    - index: 14
      callees:
      - llvm.memcpy.p0i8.p0i8.i32
    - index: 15
      callees:
      - llvm.dbg.declare
    - index: 16
      callees:
      - llvm.dbg.declare
    - index: 17
      callees:
      - sep
    - index: 18
      memmode: store
    - index: 19
  - name: for.cond
    predecessors:
    - for.inc9
    - entry
    successors:
    - for.body
    - for.end11
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp
    - index: 2
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - for.cond3
    loops:
    - for.cond
    instructions:
    - index: 0
      callees:
      - llvm.dbg.declare
    - index: 1
      memmode: load
    - index: 2
      opcode: arrayidx
    - index: 3
      memmode: load
    - index: 4
      memmode: store
    - index: 5
      callees:
      - llvm.dbg.declare
    - index: 6
      memmode: load
    - index: 7
      opcode: add
    - index: 8
      opcode: arrayidx1
    - index: 9
      memmode: load
    - index: 10
      memmode: store
    - index: 11
      memmode: load
    - index: 12
      opcode: add2
    - index: 13
      memmode: store
    - index: 14
  - name: for.cond3
    predecessors:
    - for.inc
    - for.body
    successors:
    - for.body5
    - for.end
    loops:
    - for.cond3
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: cmp4
    - index: 3
  - name: for.body5
    predecessors:
    - for.cond3
    successors:
    - do.body
    loops:
    - for.cond3
    - for.cond
    instructions:
    - index: 0
      callees:
      - llvm.dbg.declare
    - index: 1
      memmode: load
    - index: 2
      opcode: arrayidx6
    - index: 3
      memmode: load
    - index: 4
      memmode: store
    - index: 5
      callees:
      - llvm.dbg.declare
    - index: 6
      memmode: load
    - index: 7
      opcode: add7
    - index: 8
      opcode: arrayidx8
    - index: 9
      memmode: load
    - index: 10
      memmode: store
    - index: 11
      callees:
      - llvm.dbg.declare
    - index: 12
      memmode: load
    - index: 13
      memmode: load
    - index: 14
      memmode: load
    - index: 15
      memmode: load
    - index: 16
      memmode: load
    - index: 17
      opcode: call
      callees:
      - iinterpolate16
    - index: 18
      memmode: store
    - index: 19
  - name: do.body
    predecessors:
    - for.body5
    successors:
    - do.end
    loops:
    - for.cond3
    - for.cond
    instructions:
    - index: 0
  - name: do.end
    predecessors:
    - do.body
    successors:
    - for.inc
    loops:
    - for.cond3
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: shl
    - index: 2
      memmode: load
    - index: 3
      opcode: conv
    - index: 4
      opcode: xor
    - index: 5
      memmode: store
    - index: 6
  - name: for.inc
    predecessors:
    - do.end
    successors:
    - for.cond3
    loops:
    - for.cond3
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc
    - index: 2
      memmode: store
    - index: 3
  - name: for.end
    predecessors:
    - for.cond3
    successors:
    - for.inc9
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: for.inc9
    predecessors:
    - for.end
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc10
    - index: 2
      memmode: store
    - index: 3
  - name: for.end11
    predecessors:
    - for.cond
    successors: []
    instructions:
    - index: 0
- name: test_merge_samples
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - do.body
    instructions:
    - index: 0
      opcode: sbuf.addr
    - index: 1
      opcode: i
    - index: 2
      opcode: j
    - index: 3
      opcode: cnt
    - index: 4
      opcode: input_buffer
    - index: 5
      opcode: input
    - index: 6
      memmode: store
    - index: 7
      callees:
      - llvm.dbg.declare
    - index: 8
      callees:
      - llvm.dbg.declare
    - index: 9
      callees:
      - llvm.dbg.declare
    - index: 10
      callees:
      - llvm.dbg.declare
    - index: 11
      memmode: store
    - index: 12
      callees:
      - llvm.dbg.declare
    - index: 13
      callees:
      - llvm.dbg.declare
    - index: 14
      opcode: arrayidx
    - index: 15
      opcode: input_samples
    - index: 16
      memmode: store
    - index: 17
      opcode: input_count
    - index: 18
      memmode: store
    - index: 19
      callees:
      - sep
    - index: 20
  - name: do.body
    predecessors:
    - entry
    successors:
    - do.end
    instructions:
    - index: 0
  - name: do.end
    predecessors:
    - do.body
    successors:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      callees:
      - clear_sample_buffer
    - index: 2
      memmode: load
    - index: 3
      callees:
      - print_sample_buffer
    - index: 4
      memmode: store
    - index: 5
  - name: for.cond
    predecessors:
    - for.inc11
    - do.end
    successors:
    - for.body
    - for.end13
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp
    - index: 2
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - do.body1
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: do.body1
    predecessors:
    - for.body
    successors:
    - do.end2
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: do.end2
    predecessors:
    - do.body1
    successors:
    - for.cond3
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: for.cond3
    predecessors:
    - for.inc
    - do.end2
    successors:
    - for.body6
    - for.end
    loops:
    - for.cond3
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: input_count4
    - index: 2
      memmode: load
    - index: 3
      opcode: cmp5
    - index: 4
  - name: for.body6
    predecessors:
    - for.cond3
    successors:
    - if.then
    - if.else
    loops:
    - for.cond3
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: rem
    - index: 2
      opcode: cmp7
    - index: 3
  - name: if.then
    predecessors:
    - for.body6
    successors:
    - if.end
    loops:
    - for.cond3
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: shl
    - index: 2
      opcode: conv
    - index: 3
      memmode: load
    - index: 4
      opcode: arrayidx8
    - index: 5
      memmode: store
    - index: 6
  - name: if.else
    predecessors:
    - for.body6
    successors:
    - if.end
    loops:
    - for.cond3
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx9
    - index: 2
      memmode: store
    - index: 3
  - name: if.end
    predecessors:
    - if.else
    - if.then
    successors:
    - for.inc
    loops:
    - for.cond3
    - for.cond
    instructions:
    - index: 0
  - name: for.inc
    predecessors:
    - if.end
    successors:
    - for.cond3
    loops:
    - for.cond3
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc
    - index: 2
      memmode: store
    - index: 3
      memmode: load
    - index: 4
      opcode: inc10
    - index: 5
      memmode: store
    - index: 6
  - name: for.end
    predecessors:
    - for.cond3
    successors:
    - for.inc11
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      callees:
      - merge_samples
    - index: 2
      memmode: load
    - index: 3
      callees:
      - print_sample_buffer
    - index: 4
  - name: for.inc11
    predecessors:
    - for.end
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc12
    - index: 2
      memmode: store
    - index: 3
  - name: for.end13
    predecessors:
    - for.cond
    successors:
    - for.cond14
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: for.cond14
    predecessors:
    - for.inc32
    - for.end13
    successors:
    - for.body17
    - for.end34
    loops:
    - for.cond14
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp15
    - index: 2
  - name: for.body17
    predecessors:
    - for.cond14
    successors:
    - do.body18
    loops:
    - for.cond14
    instructions:
    - index: 0
  - name: do.body18
    predecessors:
    - for.body17
    successors:
    - do.end19
    loops:
    - for.cond14
    instructions:
    - index: 0
  - name: do.end19
    predecessors:
    - do.body18
    successors:
    - for.cond20
    loops:
    - for.cond14
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: for.cond20
    predecessors:
    - for.inc28
    - do.end19
    successors:
    - for.body24
    - for.end31
    loops:
    - for.cond20
    - for.cond14
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: input_count21
    - index: 2
      memmode: load
    - index: 3
      opcode: cmp22
    - index: 4
  - name: for.body24
    predecessors:
    - for.cond20
    successors:
    - for.inc28
    loops:
    - for.cond20
    - for.cond14
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: shl25
    - index: 2
      opcode: conv26
    - index: 3
      memmode: load
    - index: 4
      opcode: arrayidx27
    - index: 5
      memmode: store
    - index: 6
  - name: for.inc28
    predecessors:
    - for.body24
    successors:
    - for.cond20
    loops:
    - for.cond20
    - for.cond14
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc29
    - index: 2
      memmode: store
    - index: 3
      memmode: load
    - index: 4
      opcode: inc30
    - index: 5
      memmode: store
    - index: 6
  - name: for.end31
    predecessors:
    - for.cond20
    successors:
    - for.inc32
    loops:
    - for.cond14
    instructions:
    - index: 0
      memmode: load
    - index: 1
      callees:
      - merge_samples
    - index: 2
      memmode: load
    - index: 3
      callees:
      - print_sample_buffer
    - index: 4
  - name: for.inc32
    predecessors:
    - for.end31
    successors:
    - for.cond14
    loops:
    - for.cond14
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc33
    - index: 2
      memmode: store
    - index: 3
  - name: for.end34
    predecessors:
    - for.cond14
    successors: []
    instructions:
    - index: 0
- name: test_fft
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - for.cond
    instructions:
    - index: 0
      opcode: sbuf.addr
    - index: 1
      opcode: fft_r
    - index: 2
      opcode: fft_i
    - index: 3
      opcode: fft_abs
    - index: 4
      opcode: i
    - index: 5
      opcode: input
    - index: 6
      opcode: real
    - index: 7
      opcode: imag
    - index: 8
      opcode: absval
    - index: 9
      memmode: store
    - index: 10
      callees:
      - llvm.dbg.declare
    - index: 11
      callees:
      - llvm.dbg.declare
    - index: 12
      callees:
      - llvm.dbg.declare
    - index: 13
      callees:
      - llvm.dbg.declare
    - index: 14
      callees:
      - llvm.dbg.declare
    - index: 15
      callees:
      - llvm.dbg.declare
    - index: 16
      opcode: input_count
    - index: 17
      memmode: store
    - index: 18
      opcode: input_samples
    - index: 19
      memmode: store
    - index: 20
      callees:
      - sep
    - index: 21
      memmode: load
    - index: 22
      callees:
      - clear_sample_buffer
    - index: 23
      memmode: load
    - index: 24
      callees:
      - merge_samples
    - index: 25
      memmode: load
    - index: 26
      callees:
      - merge_samples
    - index: 27
      memmode: load
    - index: 28
      callees:
      - print_sample_buffer
    - index: 29
      memmode: load
    - index: 30
      opcode: arrayidx
    - index: 31
      opcode: arrayidx1
    - index: 32
      opcode: call
      callees:
      - fft
    - index: 33
      memmode: store
    - index: 34
  - name: for.cond
    predecessors:
    - for.inc
    - entry
    successors:
    - for.body
    - for.end
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp
    - index: 2
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - if.then
    - if.end
    loops:
    - for.cond
    instructions:
    - index: 0
      callees:
      - llvm.dbg.declare
    - index: 1
      memmode: load
    - index: 2
      opcode: arrayidx2
    - index: 3
      memmode: load
    - index: 4
      opcode: conv
    - index: 5
      memmode: store
    - index: 6
      callees:
      - llvm.dbg.declare
    - index: 7
      memmode: load
    - index: 8
      opcode: arrayidx3
    - index: 9
      memmode: load
    - index: 10
      opcode: conv4
    - index: 11
      memmode: store
    - index: 12
      callees:
      - llvm.dbg.declare
    - index: 13
      memmode: load
    - index: 14
      memmode: load
    - index: 15
      opcode: mul
    - index: 16
      opcode: shr
    - index: 17
      memmode: load
    - index: 18
      memmode: load
    - index: 19
      opcode: mul5
    - index: 20
      opcode: shr6
    - index: 21
      opcode: add
    - index: 22
      opcode: call7
      callees:
      - isqrt32u
    - index: 23
      opcode: shl
    - index: 24
      memmode: store
    - index: 25
      memmode: load
    - index: 26
      opcode: cmp8
    - index: 27
  - name: if.then
    predecessors:
    - for.body
    successors:
    - if.end
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: if.end
    predecessors:
    - if.then
    - for.body
    successors:
    - do.body
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: do.body
    predecessors:
    - if.end
    successors:
    - do.end
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: do.end
    predecessors:
    - do.body
    successors:
    - for.inc
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: arrayidx10
    - index: 3
      memmode: store
    - index: 4
  - name: for.inc
    predecessors:
    - do.end
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc
    - index: 2
      memmode: store
    - index: 3
  - name: for.end
    predecessors:
    - for.cond
    successors: []
    instructions:
    - index: 0
- name: test_task
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - for.cond
    instructions:
    - index: 0
      opcode: i
    - index: 1
      callees:
      - llvm.dbg.declare
    - index: 2
      callees:
      - init_state
    - index: 3
      callees:
      - init_state
    - index: 4
      callees:
      - sep
    - index: 5
      memmode: store
    - index: 6
      memmode: store
    - index: 7
      memmode: store
    - index: 8
      memmode: store
    - index: 9
      memmode: store
    - index: 10
  - name: for.cond
    predecessors:
    - for.inc
    - entry
    successors:
    - for.body
    - for.end
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp
    - index: 2
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - do.body
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx1
    - index: 4
      memmode: load
    - index: 5
      opcode: arrayidx2
    - index: 6
      memmode: load
    - index: 7
      opcode: call
      callees:
      - task
    - index: 8
      memmode: load
    - index: 9
      opcode: arrayidx3
    - index: 10
      memmode: store
    - index: 11
  - name: do.body
    predecessors:
    - for.body
    successors:
    - do.end
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: do.end
    predecessors:
    - do.body
    successors:
    - for.inc
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: for.inc
    predecessors:
    - do.end
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc
    - index: 2
      memmode: store
    - index: 3
  - name: for.end
    predecessors:
    - for.cond
    successors:
    - for.cond4
    instructions:
    - index: 0
      callees:
      - sep
    - index: 1
      memmode: store
    - index: 2
      memmode: store
    - index: 3
      memmode: store
    - index: 4
      memmode: store
    - index: 5
      memmode: store
    - index: 6
  - name: for.cond4
    predecessors:
    - for.inc14
    - for.end
    successors:
    - for.body6
    - for.end16
    loops:
    - for.cond4
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp5
    - index: 2
  - name: for.body6
    predecessors:
    - for.cond4
    successors:
    - do.body12
    loops:
    - for.cond4
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx7
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx8
    - index: 4
      memmode: load
    - index: 5
      opcode: arrayidx9
    - index: 6
      memmode: load
    - index: 7
      opcode: call10
      callees:
      - task
    - index: 8
      memmode: load
    - index: 9
      opcode: arrayidx11
    - index: 10
      memmode: store
    - index: 11
  - name: do.body12
    predecessors:
    - for.body6
    successors:
    - do.end13
    loops:
    - for.cond4
    instructions:
    - index: 0
  - name: do.end13
    predecessors:
    - do.body12
    successors:
    - for.inc14
    loops:
    - for.cond4
    instructions:
    - index: 0
  - name: for.inc14
    predecessors:
    - do.end13
    successors:
    - for.cond4
    loops:
    - for.cond4
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc15
    - index: 2
      memmode: store
    - index: 3
  - name: for.end16
    predecessors:
    - for.cond4
    successors:
    - for.cond17
    instructions:
    - index: 0
      callees:
      - sep
    - index: 1
      memmode: store
    - index: 2
      memmode: store
    - index: 3
      memmode: store
    - index: 4
      memmode: store
    - index: 5
      memmode: store
    - index: 6
  - name: for.cond17
    predecessors:
    - for.inc27
    - for.end16
    successors:
    - for.body19
    - for.end29
    loops:
    - for.cond17
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp18
    - index: 2
  - name: for.body19
    predecessors:
    - for.cond17
    successors:
    - do.body25
    loops:
    - for.cond17
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx20
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx21
    - index: 4
      memmode: load
    - index: 5
      opcode: arrayidx22
    - index: 6
      memmode: load
    - index: 7
      opcode: call23
      callees:
      - task
    - index: 8
      memmode: load
    - index: 9
      opcode: arrayidx24
    - index: 10
      memmode: store
    - index: 11
  - name: do.body25
    predecessors:
    - for.body19
    successors:
    - do.end26
    loops:
    - for.cond17
    instructions:
    - index: 0
  - name: do.end26
    predecessors:
    - do.body25
    successors:
    - for.inc27
    loops:
    - for.cond17
    instructions:
    - index: 0
  - name: for.inc27
    predecessors:
    - do.end26
    successors:
    - for.cond17
    loops:
    - for.cond17
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc28
    - index: 2
      memmode: store
    - index: 3
  - name: for.end29
    predecessors:
    - for.cond17
    successors:
    - for.cond30
    instructions:
    - index: 0
      callees:
      - sep
    - index: 1
      memmode: store
    - index: 2
      memmode: store
    - index: 3
      memmode: store
    - index: 4
      memmode: store
    - index: 5
      memmode: store
    - index: 6
  - name: for.cond30
    predecessors:
    - for.inc40
    - for.end29
    successors:
    - for.body32
    - for.end42
    loops:
    - for.cond30
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp31
    - index: 2
  - name: for.body32
    predecessors:
    - for.cond30
    successors:
    - do.body38
    loops:
    - for.cond30
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx33
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx34
    - index: 4
      memmode: load
    - index: 5
      opcode: arrayidx35
    - index: 6
      memmode: load
    - index: 7
      opcode: call36
      callees:
      - task
    - index: 8
      memmode: load
    - index: 9
      opcode: arrayidx37
    - index: 10
      memmode: store
    - index: 11
  - name: do.body38
    predecessors:
    - for.body32
    successors:
    - do.end39
    loops:
    - for.cond30
    instructions:
    - index: 0
  - name: do.end39
    predecessors:
    - do.body38
    successors:
    - for.inc40
    loops:
    - for.cond30
    instructions:
    - index: 0
  - name: for.inc40
    predecessors:
    - do.end39
    successors:
    - for.cond30
    loops:
    - for.cond30
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc41
    - index: 2
      memmode: store
    - index: 3
  - name: for.end42
    predecessors:
    - for.cond30
    successors:
    - for.cond43
    instructions:
    - index: 0
      callees:
      - sep
    - index: 1
      memmode: store
    - index: 2
  - name: for.cond43
    predecessors:
    - for.inc47
    - for.end42
    successors:
    - for.body45
    - for.end49
    loops:
    - for.cond43
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp44
    - index: 2
  - name: for.body45
    predecessors:
    - for.cond43
    successors:
    - for.inc47
    loops:
    - for.cond43
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx46
    - index: 2
      memmode: store
    - index: 3
  - name: for.inc47
    predecessors:
    - for.body45
    successors:
    - for.cond43
    loops:
    - for.cond43
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc48
    - index: 2
      memmode: store
    - index: 3
  - name: for.end49
    predecessors:
    - for.cond43
    successors:
    - for.cond50
    instructions:
    - index: 0
      memmode: store
    - index: 1
      memmode: store
    - index: 2
      memmode: store
    - index: 3
      memmode: store
    - index: 4
      memmode: store
    - index: 5
  - name: for.cond50
    predecessors:
    - for.inc60
    - for.end49
    successors:
    - for.body52
    - for.end62
    loops:
    - for.cond50
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp51
    - index: 2
  - name: for.body52
    predecessors:
    - for.cond50
    successors:
    - do.body58
    loops:
    - for.cond50
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx53
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx54
    - index: 4
      memmode: load
    - index: 5
      opcode: arrayidx55
    - index: 6
      memmode: load
    - index: 7
      opcode: call56
      callees:
      - task
    - index: 8
      memmode: load
    - index: 9
      opcode: arrayidx57
    - index: 10
      memmode: store
    - index: 11
  - name: do.body58
    predecessors:
    - for.body52
    successors:
    - do.end59
    loops:
    - for.cond50
    instructions:
    - index: 0
  - name: do.end59
    predecessors:
    - do.body58
    successors:
    - for.inc60
    loops:
    - for.cond50
    instructions:
    - index: 0
  - name: for.inc60
    predecessors:
    - do.end59
    successors:
    - for.cond50
    loops:
    - for.cond50
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc61
    - index: 2
      memmode: store
    - index: 3
  - name: for.end62
    predecessors:
    - for.cond50
    successors:
    - for.cond63
    instructions:
    - index: 0
      callees:
      - sep
    - index: 1
      memmode: store
    - index: 2
  - name: for.cond63
    predecessors:
    - for.inc67
    - for.end62
    successors:
    - for.body65
    - for.end69
    loops:
    - for.cond63
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp64
    - index: 2
  - name: for.body65
    predecessors:
    - for.cond63
    successors:
    - for.inc67
    loops:
    - for.cond63
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx66
    - index: 2
      memmode: store
    - index: 3
  - name: for.inc67
    predecessors:
    - for.body65
    successors:
    - for.cond63
    loops:
    - for.cond63
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc68
    - index: 2
      memmode: store
    - index: 3
  - name: for.end69
    predecessors:
    - for.cond63
    successors:
    - for.cond70
    instructions:
    - index: 0
      memmode: store
    - index: 1
      memmode: store
    - index: 2
      memmode: store
    - index: 3
  - name: for.cond70
    predecessors:
    - for.inc80
    - for.end69
    successors:
    - for.body72
    - for.end82
    loops:
    - for.cond70
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp71
    - index: 2
  - name: for.body72
    predecessors:
    - for.cond70
    successors:
    - do.body78
    loops:
    - for.cond70
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx73
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx74
    - index: 4
      memmode: load
    - index: 5
      opcode: arrayidx75
    - index: 6
      memmode: load
    - index: 7
      opcode: call76
      callees:
      - task
    - index: 8
      memmode: load
    - index: 9
      opcode: arrayidx77
    - index: 10
      memmode: store
    - index: 11
  - name: do.body78
    predecessors:
    - for.body72
    successors:
    - do.end79
    loops:
    - for.cond70
    instructions:
    - index: 0
  - name: do.end79
    predecessors:
    - do.body78
    successors:
    - for.inc80
    loops:
    - for.cond70
    instructions:
    - index: 0
  - name: for.inc80
    predecessors:
    - do.end79
    successors:
    - for.cond70
    loops:
    - for.cond70
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc81
    - index: 2
      memmode: store
    - index: 3
  - name: for.end82
    predecessors:
    - for.cond70
    successors:
    - for.cond83
    instructions:
    - index: 0
      callees:
      - sep
    - index: 1
      memmode: store
    - index: 2
      memmode: store
    - index: 3
      memmode: store
    - index: 4
  - name: for.cond83
    predecessors:
    - for.inc93
    - for.end82
    successors:
    - for.body85
    - for.end95
    loops:
    - for.cond83
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp84
    - index: 2
  - name: for.body85
    predecessors:
    - for.cond83
    successors:
    - do.body91
    loops:
    - for.cond83
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx86
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx87
    - index: 4
      memmode: load
    - index: 5
      opcode: arrayidx88
    - index: 6
      memmode: load
    - index: 7
      opcode: call89
      callees:
      - task
    - index: 8
      memmode: load
    - index: 9
      opcode: arrayidx90
    - index: 10
      memmode: store
    - index: 11
  - name: do.body91
    predecessors:
    - for.body85
    successors:
    - do.end92
    loops:
    - for.cond83
    instructions:
    - index: 0
  - name: do.end92
    predecessors:
    - do.body91
    successors:
    - for.inc93
    loops:
    - for.cond83
    instructions:
    - index: 0
  - name: for.inc93
    predecessors:
    - do.end92
    successors:
    - for.cond83
    loops:
    - for.cond83
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc94
    - index: 2
      memmode: store
    - index: 3
  - name: for.end95
    predecessors:
    - for.cond83
    successors:
    - for.cond96
    instructions:
    - index: 0
      callees:
      - sep
    - index: 1
      memmode: store
    - index: 2
      memmode: store
    - index: 3
      memmode: store
    - index: 4
      memmode: store
    - index: 5
      memmode: store
    - index: 6
  - name: for.cond96
    predecessors:
    - for.inc106
    - for.end95
    successors:
    - for.body98
    - for.end108
    loops:
    - for.cond96
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp97
    - index: 2
  - name: for.body98
    predecessors:
    - for.cond96
    successors:
    - do.body104
    loops:
    - for.cond96
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx99
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx100
    - index: 4
      memmode: load
    - index: 5
      opcode: arrayidx101
    - index: 6
      memmode: load
    - index: 7
      opcode: call102
      callees:
      - task
    - index: 8
      memmode: load
    - index: 9
      opcode: arrayidx103
    - index: 10
      memmode: store
    - index: 11
  - name: do.body104
    predecessors:
    - for.body98
    successors:
    - do.end105
    loops:
    - for.cond96
    instructions:
    - index: 0
  - name: do.end105
    predecessors:
    - do.body104
    successors:
    - for.inc106
    loops:
    - for.cond96
    instructions:
    - index: 0
  - name: for.inc106
    predecessors:
    - do.end105
    successors:
    - for.cond96
    loops:
    - for.cond96
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc107
    - index: 2
      memmode: store
    - index: 3
  - name: for.end108
    predecessors:
    - for.cond96
    successors:
    - for.cond109
    instructions:
    - index: 0
      callees:
      - sep
    - index: 1
      memmode: store
    - index: 2
      memmode: store
    - index: 3
      memmode: store
    - index: 4
  - name: for.cond109
    predecessors:
    - for.inc119
    - for.end108
    successors:
    - for.body111
    - for.end121
    loops:
    - for.cond109
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp110
    - index: 2
  - name: for.body111
    predecessors:
    - for.cond109
    successors:
    - do.body117
    loops:
    - for.cond109
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx112
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx113
    - index: 4
      memmode: load
    - index: 5
      opcode: arrayidx114
    - index: 6
      memmode: load
    - index: 7
      opcode: call115
      callees:
      - task
    - index: 8
      memmode: load
    - index: 9
      opcode: arrayidx116
    - index: 10
      memmode: store
    - index: 11
  - name: do.body117
    predecessors:
    - for.body111
    successors:
    - do.end118
    loops:
    - for.cond109
    instructions:
    - index: 0
  - name: do.end118
    predecessors:
    - do.body117
    successors:
    - for.inc119
    loops:
    - for.cond109
    instructions:
    - index: 0
  - name: for.inc119
    predecessors:
    - do.end118
    successors:
    - for.cond109
    loops:
    - for.cond109
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc120
    - index: 2
      memmode: store
    - index: 3
  - name: for.end121
    predecessors:
    - for.cond109
    successors: []
    instructions:
    - index: 0
- name: clear_sample_buffer
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - for.cond
    instructions:
    - index: 0
      opcode: buf.addr
    - index: 1
      opcode: i
    - index: 2
      memmode: store
    - index: 3
      callees:
      - llvm.dbg.declare
    - index: 4
      callees:
      - llvm.dbg.declare
    - index: 5
      memmode: store
    - index: 6
  - name: for.cond
    predecessors:
    - for.inc
    - entry
    successors:
    - for.body
    - for.end
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: buf_size
    - index: 3
      memmode: load
    - index: 4
      opcode: cmp
    - index: 5
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - for.inc
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: samples
    - index: 3
      memmode: load
    - index: 4
      opcode: arrayidx
    - index: 5
      memmode: store
    - index: 6
  - name: for.inc
    predecessors:
    - for.body
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc
    - index: 2
      memmode: store
    - index: 3
  - name: for.end
    predecessors:
    - for.cond
    successors:
    - do.body
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: sample_ptr
    - index: 2
      memmode: store
    - index: 3
      memmode: load
    - index: 4
      opcode: valid_ptr
    - index: 5
      memmode: store
    - index: 6
  - name: do.body
    predecessors:
    - for.end
    successors:
    - do.end
    instructions:
    - index: 0
  - name: do.end
    predecessors:
    - do.body
    successors: []
    instructions:
    - index: 0
- name: sep
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: str.addr
    - index: 1
      memmode: store
    - index: 2
      callees:
      - llvm.dbg.declare
    - index: 3
- name: iinterpolate16
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - sw.default.i
    - sw.bb.i
    - sw.bb1.i
    - sw.bb4.i
    - sw.bb8.i
    - sw.bb12.i
    instructions:
    - index: 0
      opcode: retval.i13
    - index: 1
      opcode: num.addr.i14
    - index: 2
      opcode: denom.addr.i15
    - index: 3
      opcode: retval.i
    - index: 4
      opcode: num.addr.i
    - index: 5
      opcode: denom.addr.i
    - index: 6
      opcode: xi1.addr
    - index: 7
      opcode: xv1.addr
    - index: 8
      opcode: xi2.addr
    - index: 9
      opcode: xv2.addr
    - index: 10
      opcode: xi.addr
    - index: 11
      opcode: di_i1
    - index: 12
      opcode: di_21
    - index: 13
      memmode: store
    - index: 14
      callees:
      - llvm.dbg.declare
    - index: 15
      memmode: store
    - index: 16
      callees:
      - llvm.dbg.declare
    - index: 17
      memmode: store
    - index: 18
      callees:
      - llvm.dbg.declare
    - index: 19
      memmode: store
    - index: 20
      callees:
      - llvm.dbg.declare
    - index: 21
      memmode: store
    - index: 22
      callees:
      - llvm.dbg.declare
    - index: 23
      callees:
      - llvm.dbg.declare
    - index: 24
      memmode: load
    - index: 25
      memmode: load
    - index: 26
      opcode: sub
    - index: 27
      memmode: store
    - index: 28
      callees:
      - llvm.dbg.declare
    - index: 29
      memmode: load
    - index: 30
      memmode: load
    - index: 31
      opcode: sub1
    - index: 32
      memmode: store
    - index: 33
      memmode: load
    - index: 34
      memmode: load
    - index: 35
      opcode: conv
    - index: 36
      memmode: store
    - index: 37
      callees:
      - llvm.dbg.declare
    - index: 38
      memmode: store
    - index: 39
      callees:
      - llvm.dbg.declare
    - index: 40
      memmode: load
    - index: 41
      opcode: conv.i
    - index: 42
  - name: sw.bb.i
    predecessors:
    - entry
    successors:
    - small_div.exit
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: store
    - index: 2
  - name: sw.bb1.i
    predecessors:
    - entry
    successors:
    - small_div.exit
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv2.i
    - index: 2
      opcode: div.i
    - index: 3
      opcode: conv3.i
    - index: 4
      memmode: store
    - index: 5
  - name: sw.bb4.i
    predecessors:
    - entry
    successors:
    - small_div.exit
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv5.i
    - index: 2
      opcode: div6.i
    - index: 3
      opcode: conv7.i
    - index: 4
      memmode: store
    - index: 5
  - name: sw.bb8.i
    predecessors:
    - entry
    successors:
    - small_div.exit
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv9.i
    - index: 2
      opcode: div10.i
    - index: 3
      opcode: conv11.i
    - index: 4
      memmode: store
    - index: 5
  - name: sw.bb12.i
    predecessors:
    - entry
    successors:
    - small_div.exit
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv13.i
    - index: 2
      opcode: div14.i
    - index: 3
      opcode: conv15.i
    - index: 4
      memmode: store
    - index: 5
  - name: sw.default.i
    predecessors:
    - entry
    successors:
    - small_div.exit
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv16.i
    - index: 2
      memmode: load
    - index: 3
      opcode: conv17.i
    - index: 4
      opcode: div18.i
    - index: 5
      opcode: conv19.i
    - index: 6
      memmode: store
    - index: 7
  - name: small_div.exit
    predecessors:
    - sw.default.i
    - sw.bb12.i
    - sw.bb8.i
    - sw.bb4.i
    - sw.bb1.i
    - sw.bb.i
    successors:
    - sw.default.i38
    - sw.bb.i17
    - sw.bb1.i21
    - sw.bb4.i25
    - sw.bb8.i29
    - sw.bb12.i33
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: store
    - index: 2
      memmode: load
    - index: 3
      memmode: load
    - index: 4
      opcode: sub2
    - index: 5
      memmode: load
    - index: 6
      opcode: conv3
    - index: 7
      opcode: mul
    - index: 8
      opcode: conv4
    - index: 9
      memmode: store
    - index: 10
      memmode: load
    - index: 11
      memmode: load
    - index: 12
      opcode: conv5
    - index: 13
      memmode: store
    - index: 14
      callees:
      - llvm.dbg.declare
    - index: 15
      memmode: store
    - index: 16
      callees:
      - llvm.dbg.declare
    - index: 17
      memmode: load
    - index: 18
      opcode: conv.i16
    - index: 19
  - name: sw.bb.i17
    predecessors:
    - small_div.exit
    successors:
    - small_div.exit39
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: store
    - index: 2
  - name: sw.bb1.i21
    predecessors:
    - small_div.exit
    successors:
    - small_div.exit39
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv2.i18
    - index: 2
      opcode: div.i19
    - index: 3
      opcode: conv3.i20
    - index: 4
      memmode: store
    - index: 5
  - name: sw.bb4.i25
    predecessors:
    - small_div.exit
    successors:
    - small_div.exit39
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv5.i22
    - index: 2
      opcode: div6.i23
    - index: 3
      opcode: conv7.i24
    - index: 4
      memmode: store
    - index: 5
  - name: sw.bb8.i29
    predecessors:
    - small_div.exit
    successors:
    - small_div.exit39
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv9.i26
    - index: 2
      opcode: div10.i27
    - index: 3
      opcode: conv11.i28
    - index: 4
      memmode: store
    - index: 5
  - name: sw.bb12.i33
    predecessors:
    - small_div.exit
    successors:
    - small_div.exit39
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv13.i30
    - index: 2
      opcode: div14.i31
    - index: 3
      opcode: conv15.i32
    - index: 4
      memmode: store
    - index: 5
  - name: sw.default.i38
    predecessors:
    - small_div.exit
    successors:
    - small_div.exit39
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv16.i34
    - index: 2
      memmode: load
    - index: 3
      opcode: conv17.i35
    - index: 4
      opcode: div18.i36
    - index: 5
      opcode: conv19.i37
    - index: 6
      memmode: store
    - index: 7
  - name: small_div.exit39
    predecessors:
    - sw.default.i38
    - sw.bb12.i33
    - sw.bb8.i29
    - sw.bb4.i25
    - sw.bb1.i21
    - sw.bb.i17
    successors: []
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: store
    - index: 2
      memmode: load
    - index: 3
      memmode: load
    - index: 4
      opcode: conv7
    - index: 5
      opcode: mul8
    - index: 6
      opcode: conv9
    - index: 7
      memmode: store
    - index: 8
      memmode: load
    - index: 9
      opcode: conv10
    - index: 10
      memmode: load
    - index: 11
      opcode: conv11
    - index: 12
      opcode: add
    - index: 13
      opcode: conv12
    - index: 14
- name: print_sample_buffer
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - for.cond
    instructions:
    - index: 0
      opcode: header.addr
    - index: 1
      opcode: sbuf.addr
    - index: 2
      opcode: i
    - index: 3
      memmode: store
    - index: 4
      callees:
      - llvm.dbg.declare
    - index: 5
      memmode: store
    - index: 6
      callees:
      - llvm.dbg.declare
    - index: 7
      callees:
      - llvm.dbg.declare
    - index: 8
      memmode: store
    - index: 9
  - name: for.cond
    predecessors:
    - for.inc
    - entry
    successors:
    - for.body
    - for.end
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: buf_size
    - index: 3
      memmode: load
    - index: 4
      opcode: cmp
    - index: 5
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - for.inc
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: shl
    - index: 2
      memmode: load
    - index: 3
      memmode: load
    - index: 4
      opcode: samples
    - index: 5
      memmode: load
    - index: 6
      opcode: arrayidx
    - index: 7
      memmode: load
    - index: 8
      opcode: conv
    - index: 9
      opcode: xor
    - index: 10
      memmode: store
    - index: 11
  - name: for.inc
    predecessors:
    - for.body
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc
    - index: 2
      memmode: store
    - index: 3
  - name: for.end
    predecessors:
    - for.cond
    successors: []
    instructions:
    - index: 0
- name: merge_samples
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - if.then
    - if.end
    instructions:
    - index: 0
      opcode: in.addr
    - index: 1
      opcode: sbuf.addr
    - index: 2
      opcode: i
    - index: 3
      opcode: j
    - index: 4
      opcode: cnt
    - index: 5
      opcode: valid
    - index: 6
      opcode: x
    - index: 7
      opcode: xs
    - index: 8
      opcode: missing_samples
    - index: 9
      opcode: z
    - index: 10
      opcode: y
    - index: 11
      memmode: store
    - index: 12
      callees:
      - llvm.dbg.declare
    - index: 13
      memmode: store
    - index: 14
      callees:
      - llvm.dbg.declare
    - index: 15
      callees:
      - llvm.dbg.declare
    - index: 16
      callees:
      - llvm.dbg.declare
    - index: 17
      callees:
      - llvm.dbg.declare
    - index: 18
      callees:
      - llvm.dbg.declare
    - index: 19
      callees:
      - llvm.dbg.declare
    - index: 20
      callees:
      - llvm.dbg.declare
    - index: 21
      memmode: load
    - index: 22
      opcode: input_count
    - index: 23
      memmode: load
    - index: 24
      opcode: cmp
    - index: 25
  - name: if.then
    predecessors:
    - entry
    successors:
    - return
    instructions:
    - index: 0
  - name: if.end
    predecessors:
    - entry
    successors:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: input_count1
    - index: 2
      memmode: load
    - index: 3
      memmode: store
    - index: 4
      memmode: load
    - index: 5
      opcode: input_samples
    - index: 6
      memmode: load
    - index: 7
      memmode: store
    - index: 8
      memmode: load
    - index: 9
      opcode: call
      callees:
      - sample_buffer_get_valid
    - index: 10
      memmode: store
    - index: 11
      memmode: store
    - index: 12
  - name: for.cond
    predecessors:
    - for.inc21
    - if.end
    successors:
    - for.body
    - for.end22
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: cmp2
    - index: 3
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - if.end20
    - if.then5
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: arrayidx
    - index: 3
      memmode: load
    - index: 4
      memmode: store
    - index: 5
      memmode: load
    - index: 6
      memmode: load
    - index: 7
      memmode: load
    - index: 8
      callees:
      - sample_buffer_set
    - index: 9
      memmode: load
    - index: 10
      opcode: conv
    - index: 11
      opcode: cmp3
    - index: 12
  - name: if.then5
    predecessors:
    - for.body
    successors:
    - land.lhs.true
    - if.end19
    loops:
    - for.cond
    instructions:
    - index: 0
      callees:
      - llvm.dbg.declare
    - index: 1
      memmode: load
    - index: 2
      memmode: load
    - index: 3
      opcode: sub
    - index: 4
      opcode: sub6
    - index: 5
      memmode: store
    - index: 6
      memmode: load
    - index: 7
      opcode: cmp7
    - index: 8
  - name: land.lhs.true
    predecessors:
    - if.then5
    successors:
    - if.then11
    - if.end19
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp9
    - index: 2
  - name: if.then11
    predecessors:
    - land.lhs.true
    successors:
    - for.cond14
    loops:
    - for.cond
    instructions:
    - index: 0
      callees:
      - llvm.dbg.declare
    - index: 1
      memmode: load
    - index: 2
      memmode: load
    - index: 3
      opcode: call12
      callees:
      - sample_buffer_get
    - index: 4
      memmode: store
    - index: 5
      memmode: load
    - index: 6
      opcode: sub13
    - index: 7
      memmode: store
    - index: 8
  - name: for.cond14
    predecessors:
    - for.inc
    - if.then11
    successors:
    - for.body17
    - for.end
    loops:
    - for.cond14
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: cmp15
    - index: 3
  - name: for.body17
    predecessors:
    - for.cond14
    successors:
    - for.inc
    loops:
    - for.cond14
    - for.cond
    instructions:
    - index: 0
      callees:
      - llvm.dbg.declare
    - index: 1
      memmode: load
    - index: 2
      memmode: load
    - index: 3
      memmode: load
    - index: 4
      memmode: load
    - index: 5
      memmode: load
    - index: 6
      opcode: call18
      callees:
      - iinterpolate16
    - index: 7
      memmode: store
    - index: 8
      memmode: load
    - index: 9
      memmode: load
    - index: 10
      memmode: load
    - index: 11
      callees:
      - sample_buffer_set
    - index: 12
  - name: for.inc
    predecessors:
    - for.body17
    successors:
    - for.cond14
    loops:
    - for.cond14
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: dec
    - index: 2
      memmode: store
    - index: 3
  - name: for.end
    predecessors:
    - for.cond14
    successors:
    - if.end19
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: if.end19
    predecessors:
    - for.end
    - land.lhs.true
    - if.then5
    successors:
    - if.end20
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: store
    - index: 2
  - name: if.end20
    predecessors:
    - if.end19
    - for.body
    successors:
    - for.inc21
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: for.inc21
    predecessors:
    - if.end20
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc
    - index: 2
      memmode: store
    - index: 3
  - name: for.end22
    predecessors:
    - for.cond
    successors:
    - return
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      callees:
      - sample_buffer_set_valid
    - index: 3
      memmode: load
    - index: 4
      memmode: load
    - index: 5
      callees:
      - sample_buffer_incr_ptr
    - index: 6
  - name: return
    predecessors:
    - for.end22
    - if.then
    successors: []
    instructions:
    - index: 0
- name: fft
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - for.cond
    instructions:
    - index: 0
      opcode: retval
    - index: 1
      opcode: buf.addr
    - index: 2
      opcode: fft_r_out.addr
    - index: 3
      opcode: fft_i_out.addr
    - index: 4
      opcode: i
    - index: 5
      opcode: offs
    - index: 6
      opcode: max
    - index: 7
      opcode: multiplier
    - index: 8
      opcode: val
    - index: 9
      opcode: old_val
    - index: 10
      memmode: store
    - index: 11
      callees:
      - llvm.dbg.declare
    - index: 12
      memmode: store
    - index: 13
      callees:
      - llvm.dbg.declare
    - index: 14
      memmode: store
    - index: 15
      callees:
      - llvm.dbg.declare
    - index: 16
      callees:
      - llvm.dbg.declare
    - index: 17
      callees:
      - llvm.dbg.declare
    - index: 18
      callees:
      - llvm.dbg.declare
    - index: 19
      memmode: store
    - index: 20
      callees:
      - llvm.dbg.declare
    - index: 21
      memmode: store
    - index: 22
  - name: for.cond
    predecessors:
    - for.inc
    - entry
    successors:
    - for.body
    - for.end
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp
    - index: 2
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - if.end
    - if.then
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: call
      callees:
      - sample_buffer_get
    - index: 3
      opcode: conv
    - index: 4
      opcode: cmp1
    - index: 5
  - name: if.then
    predecessors:
    - for.body
    successors:
    - for.end
    instructions:
    - index: 0
  - name: if.end
    predecessors:
    - for.body
    successors:
    - for.inc
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: for.inc
    predecessors:
    - if.end
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: dec
    - index: 2
      memmode: store
    - index: 3
  - name: for.end
    predecessors:
    - if.then
    - for.cond
    successors:
    - if.then5
    - if.end6
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp3
    - index: 2
  - name: if.then5
    predecessors:
    - for.end
    successors:
    - return
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: if.end6
    predecessors:
    - for.end
    successors:
    - for.cond7
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: sub
    - index: 2
      memmode: store
    - index: 3
      memmode: store
    - index: 4
  - name: for.cond7
    predecessors:
    - for.inc31
    - if.end6
    successors:
    - for.body10
    - for.end32
    loops:
    - for.cond7
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp8
    - index: 2
  - name: for.body10
    predecessors:
    - for.cond7
    successors:
    - if.then15
    - if.end16
    loops:
    - for.cond7
    instructions:
    - index: 0
      callees:
      - llvm.dbg.declare
    - index: 1
      memmode: load
    - index: 2
      memmode: load
    - index: 3
      memmode: load
    - index: 4
      opcode: add
    - index: 5
      opcode: call11
      callees:
      - sample_buffer_get
    - index: 6
      memmode: store
    - index: 7
      memmode: load
    - index: 8
      opcode: conv12
    - index: 9
      opcode: cmp13
    - index: 10
  - name: if.then15
    predecessors:
    - for.body10
    successors:
    - return
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: if.end16
    predecessors:
    - for.body10
    successors:
    - if.then20
    - if.else
    loops:
    - for.cond7
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv17
    - index: 2
      opcode: cmp18
    - index: 3
  - name: if.then20
    predecessors:
    - if.end16
    successors:
    - if.end30
    loops:
    - for.cond7
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv21
    - index: 2
      opcode: sub22
    - index: 3
      opcode: conv23
    - index: 4
      memmode: store
    - index: 5
  - name: if.else
    predecessors:
    - if.end16
    successors:
    - if.then28
    - if.end29
    loops:
    - for.cond7
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv24
    - index: 2
      memmode: load
    - index: 3
      opcode: conv25
    - index: 4
      opcode: cmp26
    - index: 5
  - name: if.then28
    predecessors:
    - if.else
    successors:
    - if.end29
    loops:
    - for.cond7
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: store
    - index: 2
  - name: if.end29
    predecessors:
    - if.then28
    - if.else
    successors:
    - if.end30
    loops:
    - for.cond7
    instructions:
    - index: 0
  - name: if.end30
    predecessors:
    - if.end29
    - if.then20
    successors:
    - for.inc31
    loops:
    - for.cond7
    instructions:
    - index: 0
  - name: for.inc31
    predecessors:
    - if.end30
    successors:
    - for.cond7
    loops:
    - for.cond7
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc
    - index: 2
      memmode: store
    - index: 3
  - name: for.end32
    predecessors:
    - for.cond7
    successors:
    - if.then36
    - if.end49
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv33
    - index: 2
      opcode: cmp34
    - index: 3
  - name: if.then36
    predecessors:
    - for.end32
    successors:
    - for.cond38
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv37
    - index: 2
      opcode: div
    - index: 3
      memmode: store
    - index: 4
      memmode: store
    - index: 5
  - name: for.cond38
    predecessors:
    - for.inc46
    - if.then36
    successors:
    - for.body41
    - for.end48
    loops:
    - for.cond38
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp39
    - index: 2
  - name: for.body41
    predecessors:
    - for.cond38
    successors:
    - for.inc46
    loops:
    - for.cond38
    instructions:
    - index: 0
      callees:
      - llvm.dbg.declare
    - index: 1
      memmode: load
    - index: 2
      memmode: load
    - index: 3
      opcode: sub42
    - index: 4
      opcode: call43
      callees:
      - sample_buffer_get
    - index: 5
      opcode: conv44
    - index: 6
      memmode: store
    - index: 7
      memmode: load
    - index: 8
      memmode: load
    - index: 9
      opcode: mul
    - index: 10
      opcode: shr
    - index: 11
      opcode: conv45
    - index: 12
      memmode: load
    - index: 13
      memmode: load
    - index: 14
      opcode: arrayidx
    - index: 15
      memmode: store
    - index: 16
  - name: for.inc46
    predecessors:
    - for.body41
    successors:
    - for.cond38
    loops:
    - for.cond38
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc47
    - index: 2
      memmode: store
    - index: 3
  - name: for.end48
    predecessors:
    - for.cond38
    successors:
    - if.end49
    instructions:
    - index: 0
  - name: if.end49
    predecessors:
    - for.end48
    - for.end32
    successors:
    - for.cond50
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: for.cond50
    predecessors:
    - for.inc55
    - if.end49
    successors:
    - for.body53
    - for.end57
    loops:
    - for.cond50
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp51
    - index: 2
  - name: for.body53
    predecessors:
    - for.cond50
    successors:
    - for.inc55
    loops:
    - for.cond50
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: arrayidx54
    - index: 3
      memmode: store
    - index: 4
  - name: for.inc55
    predecessors:
    - for.body53
    successors:
    - for.cond50
    loops:
    - for.cond50
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc56
    - index: 2
      memmode: store
    - index: 3
  - name: for.end57
    predecessors:
    - for.cond50
    successors:
    - return
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: arrayidx58
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx59
    - index: 4
      callees:
      - fp_radix2fft_withscaling
    - index: 5
      memmode: store
    - index: 6
  - name: return
    predecessors:
    - for.end57
    - if.then15
    - if.then5
    successors: []
    instructions:
    - index: 0
      memmode: load
    - index: 1
- name: isqrt32u
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - do.body
    instructions:
    - index: 0
      opcode: val.addr
    - index: 1
      opcode: temp
    - index: 2
      opcode: g
    - index: 3
      opcode: b
    - index: 4
      opcode: bshft
    - index: 5
      memmode: store
    - index: 6
      callees:
      - llvm.dbg.declare
    - index: 7
      callees:
      - llvm.dbg.declare
    - index: 8
      callees:
      - llvm.dbg.declare
    - index: 9
      memmode: store
    - index: 10
      callees:
      - llvm.dbg.declare
    - index: 11
      memmode: store
    - index: 12
      callees:
      - llvm.dbg.declare
    - index: 13
      memmode: store
    - index: 14
  - name: do.body
    predecessors:
    - do.cond
    - entry
    successors:
    - if.then
    - if.end
    loops:
    - do.body
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: shl
    - index: 3
      memmode: load
    - index: 4
      opcode: add
    - index: 5
      memmode: load
    - index: 6
      opcode: dec
    - index: 7
      memmode: store
    - index: 8
      opcode: shl1
    - index: 9
      memmode: store
    - index: 10
      opcode: cmp
    - index: 11
  - name: if.then
    predecessors:
    - do.body
    successors:
    - if.end
    loops:
    - do.body
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: add2
    - index: 3
      memmode: store
    - index: 4
      memmode: load
    - index: 5
      memmode: load
    - index: 6
      opcode: sub
    - index: 7
      memmode: store
    - index: 8
  - name: if.end
    predecessors:
    - if.then
    - do.body
    successors:
    - do.cond
    loops:
    - do.body
    instructions:
    - index: 0
  - name: do.cond
    predecessors:
    - if.end
    successors:
    - do.body
    - do.end
    loops:
    - do.body
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: shr
    - index: 2
      memmode: store
    - index: 3
      opcode: tobool
    - index: 4
  - name: do.end
    predecessors:
    - do.cond
    successors: []
    instructions:
    - index: 0
      memmode: load
    - index: 1
- name: init_state
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: st.addr
    - index: 1
      memmode: store
    - index: 2
      callees:
      - llvm.dbg.declare
    - index: 3
      memmode: load
    - index: 4
      opcode: sample_buffer
    - index: 5
      memmode: load
    - index: 6
      opcode: sample_buffer_storage
    - index: 7
      opcode: arrayidx
    - index: 8
      callees:
      - init_sample_buffer
    - index: 9
- name: task
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - if.then
    - if.end
    instructions:
    - index: 0
      opcode: retval
    - index: 1
      opcode: input.addr
    - index: 2
      opcode: state.addr
    - index: 3
      opcode: signal_spec.addr
    - index: 4
      opcode: status
    - index: 5
      opcode: sbuf
    - index: 6
      memmode: store
    - index: 7
      callees:
      - llvm.dbg.declare
    - index: 8
      memmode: store
    - index: 9
      callees:
      - llvm.dbg.declare
    - index: 10
      memmode: store
    - index: 11
      callees:
      - llvm.dbg.declare
    - index: 12
      callees:
      - llvm.dbg.declare
    - index: 13
      callees:
      - llvm.dbg.declare
    - index: 14
      memmode: load
    - index: 15
      opcode: sample_buffer
    - index: 16
      memmode: store
    - index: 17
      memmode: load
    - index: 18
      memmode: load
    - index: 19
      callees:
      - merge_samples
    - index: 20
      memmode: load
    - index: 21
      opcode: call
      callees:
      - fft
    - index: 22
      memmode: store
    - index: 23
      memmode: load
    - index: 24
      opcode: conv
    - index: 25
      opcode: cmp
    - index: 26
  - name: if.then
    predecessors:
    - entry
    successors:
    - return
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: store
    - index: 2
  - name: if.end
    predecessors:
    - entry
    successors:
    - return
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: signal_type
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx
    - index: 4
      memmode: load
    - index: 5
      memmode: load
    - index: 6
      opcode: signal_params
    - index: 7
      memmode: load
    - index: 8
      opcode: call2
      callees:
      - __any__
    - index: 9
      memmode: store
    - index: 10
      memmode: load
    - index: 11
      memmode: store
    - index: 12
  - name: return
    predecessors:
    - if.end
    - if.then
    successors: []
    instructions:
    - index: 0
      memmode: load
    - index: 1
- name: __divsi3
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: shr
    - index: 1
      opcode: shr1
    - index: 2
      opcode: xor
    - index: 3
      opcode: sub
    - index: 4
      opcode: xor2
    - index: 5
      opcode: sub3
    - index: 6
      opcode: xor4
    - index: 7
      opcode: div
    - index: 8
      opcode: xor5
    - index: 9
      opcode: sub6
    - index: 10
- name: sample_buffer_get_valid
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - if.then
    - if.end
    instructions:
    - index: 0
      opcode: retval
    - index: 1
      opcode: buf.addr
    - index: 2
      opcode: rindex
    - index: 3
      memmode: store
    - index: 4
      callees:
      - llvm.dbg.declare
    - index: 5
      memmode: load
    - index: 6
      opcode: valid_ptr
    - index: 7
      memmode: load
    - index: 8
      opcode: cmp
    - index: 9
  - name: if.then
    predecessors:
    - entry
    successors:
    - return
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: if.end
    predecessors:
    - entry
    successors:
    - do.body
    instructions:
    - index: 0
      callees:
      - llvm.dbg.declare
    - index: 1
      memmode: load
    - index: 2
      opcode: valid_ptr1
    - index: 3
      memmode: load
    - index: 4
      memmode: load
    - index: 5
      opcode: sample_ptr
    - index: 6
      memmode: load
    - index: 7
      opcode: sub
    - index: 8
      memmode: store
    - index: 9
  - name: do.body
    predecessors:
    - if.end
    successors:
    - do.end
    instructions:
    - index: 0
  - name: do.end
    predecessors:
    - do.body
    successors:
    - if.then3
    - if.end5
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp2
    - index: 2
  - name: if.then3
    predecessors:
    - do.end
    successors:
    - if.end5
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: buf_size
    - index: 3
      memmode: load
    - index: 4
      opcode: sub4
    - index: 5
      memmode: store
    - index: 6
  - name: if.end5
    predecessors:
    - if.then3
    - do.end
    successors:
    - do.body6
    instructions:
    - index: 0
  - name: do.body6
    predecessors:
    - if.end5
    successors:
    - do.end7
    instructions:
    - index: 0
  - name: do.end7
    predecessors:
    - do.body6
    successors:
    - return
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: store
    - index: 2
  - name: return
    predecessors:
    - do.end7
    - if.then
    successors: []
    instructions:
    - index: 0
      memmode: load
    - index: 1
- name: sample_buffer_set
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - cond.true
    - cond.false
    instructions:
    - index: 0
      opcode: buf.addr
    - index: 1
      opcode: offset.addr
    - index: 2
      opcode: value.addr
    - index: 3
      memmode: store
    - index: 4
      callees:
      - llvm.dbg.declare
    - index: 5
      memmode: store
    - index: 6
      callees:
      - llvm.dbg.declare
    - index: 7
      memmode: store
    - index: 8
      callees:
      - llvm.dbg.declare
    - index: 9
      memmode: load
    - index: 10
      memmode: load
    - index: 11
      opcode: sample_ptr
    - index: 12
      memmode: load
    - index: 13
      opcode: cmp
    - index: 14
  - name: cond.true
    predecessors:
    - entry
    successors:
    - cond.end
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: buf_size
    - index: 2
      memmode: load
    - index: 3
      memmode: load
    - index: 4
      opcode: sample_ptr1
    - index: 5
      memmode: load
    - index: 6
      opcode: add
    - index: 7
  - name: cond.false
    predecessors:
    - entry
    successors:
    - cond.end
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: sample_ptr2
    - index: 2
      memmode: load
    - index: 3
  - name: cond.end
    predecessors:
    - cond.false
    - cond.true
    successors: []
    instructions:
    - index: 0
      opcode: cond
    - index: 1
      memmode: load
    - index: 2
      opcode: buf_size3
    - index: 3
      memmode: load
    - index: 4
      opcode: add4
    - index: 5
      memmode: load
    - index: 6
      opcode: add5
    - index: 7
      memmode: load
    - index: 8
      opcode: buf_size6
    - index: 9
      memmode: load
    - index: 10
      opcode: sub
    - index: 11
      opcode: and
    - index: 12
      memmode: load
    - index: 13
      opcode: samples
    - index: 14
      memmode: load
    - index: 15
      opcode: arrayidx
    - index: 16
      memmode: store
    - index: 17
- name: sample_buffer_get
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - cond.true
    - cond.false
    instructions:
    - index: 0
      opcode: buf.addr
    - index: 1
      opcode: offset.addr
    - index: 2
      memmode: store
    - index: 3
      callees:
      - llvm.dbg.declare
    - index: 4
      memmode: store
    - index: 5
      callees:
      - llvm.dbg.declare
    - index: 6
      memmode: load
    - index: 7
      opcode: sample_ptr
    - index: 8
      memmode: load
    - index: 9
      opcode: cmp
    - index: 10
  - name: cond.true
    predecessors:
    - entry
    successors:
    - cond.end
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: buf_size
    - index: 2
      memmode: load
    - index: 3
      memmode: load
    - index: 4
      opcode: sample_ptr1
    - index: 5
      memmode: load
    - index: 6
      opcode: add
    - index: 7
  - name: cond.false
    predecessors:
    - entry
    successors:
    - cond.end
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: sample_ptr2
    - index: 2
      memmode: load
    - index: 3
  - name: cond.end
    predecessors:
    - cond.false
    - cond.true
    successors: []
    instructions:
    - index: 0
      opcode: cond
    - index: 1
      memmode: load
    - index: 2
      opcode: buf_size3
    - index: 3
      memmode: load
    - index: 4
      opcode: add4
    - index: 5
      memmode: load
    - index: 6
      opcode: add5
    - index: 7
      memmode: load
    - index: 8
      opcode: buf_size6
    - index: 9
      memmode: load
    - index: 10
      opcode: sub
    - index: 11
      opcode: and
    - index: 12
      memmode: load
    - index: 13
      opcode: samples
    - index: 14
      memmode: load
    - index: 15
      opcode: arrayidx
    - index: 16
      memmode: load
    - index: 17
- name: sample_buffer_set_valid
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - cond.true
    - cond.false
    instructions:
    - index: 0
      opcode: buf.addr
    - index: 1
      opcode: rindex.addr
    - index: 2
      memmode: store
    - index: 3
      callees:
      - llvm.dbg.declare
    - index: 4
      memmode: store
    - index: 5
      callees:
      - llvm.dbg.declare
    - index: 6
      memmode: load
    - index: 7
      opcode: sample_ptr
    - index: 8
      memmode: load
    - index: 9
      opcode: cmp
    - index: 10
  - name: cond.true
    predecessors:
    - entry
    successors:
    - cond.end
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: buf_size
    - index: 2
      memmode: load
    - index: 3
      memmode: load
    - index: 4
      opcode: sample_ptr1
    - index: 5
      memmode: load
    - index: 6
      opcode: add
    - index: 7
  - name: cond.false
    predecessors:
    - entry
    successors:
    - cond.end
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: sample_ptr2
    - index: 2
      memmode: load
    - index: 3
  - name: cond.end
    predecessors:
    - cond.false
    - cond.true
    successors: []
    instructions:
    - index: 0
      opcode: cond
    - index: 1
      memmode: load
    - index: 2
      opcode: buf_size3
    - index: 3
      memmode: load
    - index: 4
      opcode: add4
    - index: 5
      memmode: load
    - index: 6
      opcode: add5
    - index: 7
      memmode: load
    - index: 8
      opcode: buf_size6
    - index: 9
      memmode: load
    - index: 10
      opcode: sub
    - index: 11
      opcode: and
    - index: 12
      memmode: load
    - index: 13
      opcode: valid_ptr
    - index: 14
      memmode: store
    - index: 15
- name: sample_buffer_incr_ptr
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - cond.true
    - cond.false
    instructions:
    - index: 0
      opcode: buf.addr
    - index: 1
      opcode: offset.addr
    - index: 2
      memmode: store
    - index: 3
      callees:
      - llvm.dbg.declare
    - index: 4
      memmode: store
    - index: 5
      callees:
      - llvm.dbg.declare
    - index: 6
      memmode: load
    - index: 7
      opcode: sample_ptr
    - index: 8
      memmode: load
    - index: 9
      opcode: cmp
    - index: 10
  - name: cond.true
    predecessors:
    - entry
    successors:
    - cond.end
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: buf_size
    - index: 2
      memmode: load
    - index: 3
      memmode: load
    - index: 4
      opcode: sample_ptr1
    - index: 5
      memmode: load
    - index: 6
      opcode: add
    - index: 7
  - name: cond.false
    predecessors:
    - entry
    successors:
    - cond.end
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: sample_ptr2
    - index: 2
      memmode: load
    - index: 3
  - name: cond.end
    predecessors:
    - cond.false
    - cond.true
    successors:
    - do.body
    instructions:
    - index: 0
      opcode: cond
    - index: 1
      memmode: load
    - index: 2
      opcode: buf_size3
    - index: 3
      memmode: load
    - index: 4
      opcode: add4
    - index: 5
      memmode: load
    - index: 6
      opcode: add5
    - index: 7
      memmode: load
    - index: 8
      opcode: buf_size6
    - index: 9
      memmode: load
    - index: 10
      opcode: sub
    - index: 11
      opcode: and
    - index: 12
      memmode: load
    - index: 13
      opcode: sample_ptr7
    - index: 14
      memmode: store
    - index: 15
  - name: do.body
    predecessors:
    - cond.end
    successors:
    - do.end
    instructions:
    - index: 0
  - name: do.end
    predecessors:
    - do.body
    successors: []
    instructions:
    - index: 0
- name: fp_radix2fft_withscaling
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - for.cond
    instructions:
    - index: 0
      opcode: xr.addr
    - index: 1
      opcode: xi.addr
    - index: 2
      opcode: bvr.addr
    - index: 3
      opcode: wr.addr
    - index: 4
      opcode: wi.addr
    - index: 5
      opcode: n.addr
    - index: 6
      opcode: t.addr
    - index: 7
      opcode: tempr
    - index: 8
      opcode: tempi
    - index: 9
      opcode: q
    - index: 10
      opcode: j
    - index: 11
      opcode: k
    - index: 12
      opcode: n1
    - index: 13
      opcode: n2
    - index: 14
      opcode: n3
    - index: 15
      opcode: L
    - index: 16
      opcode: kL
    - index: 17
      opcode: r
    - index: 18
      opcode: L2
    - index: 19
      memmode: store
    - index: 20
      callees:
      - llvm.dbg.declare
    - index: 21
      memmode: store
    - index: 22
      callees:
      - llvm.dbg.declare
    - index: 23
      memmode: store
    - index: 24
      callees:
      - llvm.dbg.declare
    - index: 25
      memmode: store
    - index: 26
      callees:
      - llvm.dbg.declare
    - index: 27
      memmode: store
    - index: 28
      callees:
      - llvm.dbg.declare
    - index: 29
      memmode: store
    - index: 30
      callees:
      - llvm.dbg.declare
    - index: 31
      memmode: store
    - index: 32
      callees:
      - llvm.dbg.declare
    - index: 33
      callees:
      - llvm.dbg.declare
    - index: 34
      callees:
      - llvm.dbg.declare
    - index: 35
      callees:
      - llvm.dbg.declare
    - index: 36
      callees:
      - llvm.dbg.declare
    - index: 37
      callees:
      - llvm.dbg.declare
    - index: 38
      callees:
      - llvm.dbg.declare
    - index: 39
      callees:
      - llvm.dbg.declare
    - index: 40
      callees:
      - llvm.dbg.declare
    - index: 41
      callees:
      - llvm.dbg.declare
    - index: 42
      callees:
      - llvm.dbg.declare
    - index: 43
      callees:
      - llvm.dbg.declare
    - index: 44
      callees:
      - llvm.dbg.declare
    - index: 45
      memmode: load
    - index: 46
      memmode: load
    - index: 47
      memmode: load
    - index: 48
      callees:
      - bitreverse
    - index: 49
      memmode: load
    - index: 50
      memmode: load
    - index: 51
      memmode: load
    - index: 52
      callees:
      - bitreverse
    - index: 53
      memmode: store
    - index: 54
  - name: for.cond
    predecessors:
    - for.inc62
    - entry
    successors:
    - for.body
    - for.end64
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: cmp
    - index: 3
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - for.cond2
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: store
    - index: 1
      memmode: load
    - index: 2
      memmode: load
    - index: 3
      opcode: shl
    - index: 4
      memmode: store
    - index: 5
      memmode: store
    - index: 6
      memmode: load
    - index: 7
      memmode: load
    - index: 8
      opcode: sub
    - index: 9
      memmode: load
    - index: 10
      opcode: shl1
    - index: 11
      memmode: store
    - index: 12
      memmode: load
    - index: 13
      opcode: shr
    - index: 14
      memmode: store
    - index: 15
      memmode: store
    - index: 16
      memmode: store
    - index: 17
  - name: for.cond2
    predecessors:
    - for.inc59
    - for.body
    successors:
    - for.body4
    - for.end61
    loops:
    - for.cond2
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: cmp3
    - index: 3
  - name: for.body4
    predecessors:
    - for.cond2
    successors:
    - for.cond5
    loops:
    - for.cond2
    - for.cond
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: for.cond5
    predecessors:
    - for.inc
    - for.body4
    successors:
    - for.body7
    - for.end
    loops:
    - for.cond5
    - for.cond2
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: cmp6
    - index: 3
  - name: for.body7
    predecessors:
    - for.cond5
    successors:
    - for.inc
    loops:
    - for.cond5
    - for.cond2
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: add
    - index: 3
      memmode: store
    - index: 4
      memmode: load
    - index: 5
      memmode: load
    - index: 6
      opcode: add8
    - index: 7
      memmode: store
    - index: 8
      memmode: load
    - index: 9
      opcode: sub9
    - index: 10
      memmode: load
    - index: 11
      opcode: add10
    - index: 12
      memmode: store
    - index: 13
      memmode: load
    - index: 14
      memmode: load
    - index: 15
      opcode: arrayidx
    - index: 16
      memmode: load
    - index: 17
      opcode: conv
    - index: 18
      memmode: load
    - index: 19
      memmode: load
    - index: 20
      opcode: arrayidx11
    - index: 21
      memmode: load
    - index: 22
      opcode: conv12
    - index: 23
      opcode: mul
    - index: 24
      memmode: load
    - index: 25
      memmode: load
    - index: 26
      opcode: arrayidx13
    - index: 27
      memmode: load
    - index: 28
      opcode: conv14
    - index: 29
      memmode: load
    - index: 30
      memmode: load
    - index: 31
      opcode: arrayidx15
    - index: 32
      memmode: load
    - index: 33
      opcode: conv16
    - index: 34
      opcode: mul17
    - index: 35
      opcode: sub18
    - index: 36
      memmode: store
    - index: 37
      memmode: load
    - index: 38
      memmode: load
    - index: 39
      opcode: arrayidx19
    - index: 40
      memmode: load
    - index: 41
      opcode: conv20
    - index: 42
      memmode: load
    - index: 43
      memmode: load
    - index: 44
      opcode: arrayidx21
    - index: 45
      memmode: load
    - index: 46
      opcode: conv22
    - index: 47
      opcode: mul23
    - index: 48
      memmode: load
    - index: 49
      memmode: load
    - index: 50
      opcode: arrayidx24
    - index: 51
      memmode: load
    - index: 52
      opcode: conv25
    - index: 53
      memmode: load
    - index: 54
      memmode: load
    - index: 55
      opcode: arrayidx26
    - index: 56
      memmode: load
    - index: 57
      opcode: conv27
    - index: 58
      opcode: mul28
    - index: 59
      opcode: add29
    - index: 60
      memmode: store
    - index: 61
      memmode: load
    - index: 62
      memmode: load
    - index: 63
      opcode: arrayidx30
    - index: 64
      memmode: load
    - index: 65
      opcode: conv31
    - index: 66
      opcode: shl32
    - index: 67
      memmode: load
    - index: 68
      opcode: sub33
    - index: 69
      opcode: shr34
    - index: 70
      opcode: conv35
    - index: 71
      memmode: load
    - index: 72
      memmode: load
    - index: 73
      opcode: arrayidx36
    - index: 74
      memmode: store
    - index: 75
      memmode: load
    - index: 76
      memmode: load
    - index: 77
      opcode: arrayidx37
    - index: 78
      memmode: load
    - index: 79
      opcode: conv38
    - index: 80
      opcode: shl39
    - index: 81
      memmode: load
    - index: 82
      opcode: sub40
    - index: 83
      opcode: shr41
    - index: 84
      opcode: conv42
    - index: 85
      memmode: load
    - index: 86
      memmode: load
    - index: 87
      opcode: arrayidx43
    - index: 88
      memmode: store
    - index: 89
      memmode: load
    - index: 90
      memmode: load
    - index: 91
      opcode: arrayidx44
    - index: 92
      memmode: load
    - index: 93
      opcode: conv45
    - index: 94
      opcode: shl46
    - index: 95
      memmode: load
    - index: 96
      opcode: add47
    - index: 97
      opcode: shr48
    - index: 98
      opcode: conv49
    - index: 99
      memmode: load
    - index: 100
      memmode: load
    - index: 101
      opcode: arrayidx50
    - index: 102
      memmode: store
    - index: 103
      memmode: load
    - index: 104
      memmode: load
    - index: 105
      opcode: arrayidx51
    - index: 106
      memmode: load
    - index: 107
      opcode: conv52
    - index: 108
      opcode: shl53
    - index: 109
      memmode: load
    - index: 110
      opcode: add54
    - index: 111
      opcode: shr55
    - index: 112
      opcode: conv56
    - index: 113
      memmode: load
    - index: 114
      memmode: load
    - index: 115
      opcode: arrayidx57
    - index: 116
      memmode: store
    - index: 117
  - name: for.inc
    predecessors:
    - for.body7
    successors:
    - for.cond5
    loops:
    - for.cond5
    - for.cond2
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc
    - index: 2
      memmode: store
    - index: 3
  - name: for.end
    predecessors:
    - for.cond5
    successors:
    - for.inc59
    loops:
    - for.cond2
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: add58
    - index: 3
      memmode: store
    - index: 4
  - name: for.inc59
    predecessors:
    - for.end
    successors:
    - for.cond2
    loops:
    - for.cond2
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc60
    - index: 2
      memmode: store
    - index: 3
  - name: for.end61
    predecessors:
    - for.cond2
    successors:
    - for.inc62
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: for.inc62
    predecessors:
    - for.end61
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc63
    - index: 2
      memmode: store
    - index: 3
  - name: for.end64
    predecessors:
    - for.cond
    successors: []
    instructions:
    - index: 0
- name: check_sin
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - if.then
    - if.end
    instructions:
    - index: 0
      opcode: retval
    - index: 1
      opcode: params.addr
    - index: 2
      opcode: fft_r.addr
    - index: 3
      opcode: fft_i.addr
    - index: 4
      opcode: i
    - index: 5
      opcode: ps
    - index: 6
      opcode: f0
    - index: 7
      opcode: fhi
    - index: 8
      opcode: f
    - index: 9
      memmode: store
    - index: 10
      callees:
      - llvm.dbg.declare
    - index: 11
      memmode: store
    - index: 12
      callees:
      - llvm.dbg.declare
    - index: 13
      memmode: store
    - index: 14
      callees:
      - llvm.dbg.declare
    - index: 15
      callees:
      - llvm.dbg.declare
    - index: 16
      callees:
      - llvm.dbg.declare
    - index: 17
      memmode: load
    - index: 18
    - index: 19
      memmode: store
    - index: 20
      callees:
      - llvm.dbg.declare
    - index: 21
      callees:
      - llvm.dbg.declare
    - index: 22
      callees:
      - llvm.dbg.declare
    - index: 23
      memmode: load
    - index: 24
      opcode: arrayidx
    - index: 25
      memmode: load
    - index: 26
      opcode: conv
    - index: 27
      memmode: load
    - index: 28
      opcode: arrayidx1
    - index: 29
      memmode: load
    - index: 30
      opcode: conv2
    - index: 31
      opcode: call
      callees:
      - abs_complex
    - index: 32
      memmode: store
    - index: 33
      memmode: load
    - index: 34
      opcode: conv3
    - index: 35
      memmode: load
    - index: 36
      opcode: base_threshold
    - index: 37
      memmode: load
    - index: 38
      opcode: conv4
    - index: 39
      opcode: cmp
    - index: 40
  - name: if.then
    predecessors:
    - entry
    successors:
    - return
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: if.end
    predecessors:
    - entry
    successors:
    - for.cond
    instructions:
    - index: 0
      memmode: store
    - index: 1
      memmode: store
    - index: 2
  - name: for.cond
    predecessors:
    - for.inc
    - if.end
    successors:
    - for.body
    - for.end
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp6
    - index: 2
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - if.then17
    - if.end23
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: arrayidx8
    - index: 3
      memmode: load
    - index: 4
      opcode: conv9
    - index: 5
      memmode: load
    - index: 6
      memmode: load
    - index: 7
      opcode: arrayidx10
    - index: 8
      memmode: load
    - index: 9
      opcode: conv11
    - index: 10
      opcode: call12
      callees:
      - abs_complex
    - index: 11
      memmode: store
    - index: 12
      memmode: load
    - index: 13
      opcode: conv13
    - index: 14
      memmode: load
    - index: 15
      opcode: noise_threshold
    - index: 16
      memmode: load
    - index: 17
      opcode: conv14
    - index: 18
      opcode: cmp15
    - index: 19
  - name: if.then17
    predecessors:
    - for.body
    successors:
    - if.then21
    - if.end22
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv18
    - index: 2
      opcode: cmp19
    - index: 3
  - name: if.then21
    predecessors:
    - if.then17
    successors:
    - return
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: if.end22
    predecessors:
    - if.then17
    successors:
    - if.end23
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: store
    - index: 2
  - name: if.end23
    predecessors:
    - if.end22
    - for.body
    successors:
    - for.inc
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: for.inc
    predecessors:
    - if.end23
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc
    - index: 2
      memmode: store
    - index: 3
  - name: for.end
    predecessors:
    - for.cond
    successors:
    - if.then28
    - if.end29
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv24
    - index: 2
      memmode: load
    - index: 3
      opcode: amplitude_minimum
    - index: 4
      memmode: load
    - index: 5
      opcode: conv25
    - index: 6
      opcode: cmp26
    - index: 7
  - name: if.then28
    predecessors:
    - for.end
    successors:
    - return
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: if.end29
    predecessors:
    - for.end
    successors:
    - return
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: return
    predecessors:
    - if.end29
    - if.then28
    - if.then21
    - if.then
    successors: []
    instructions:
    - index: 0
      memmode: load
    - index: 1
- name: check_square
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - if.then
    - if.end
    instructions:
    - index: 0
      opcode: retval
    - index: 1
      opcode: params.addr
    - index: 2
      opcode: fft_r.addr
    - index: 3
      opcode: fft_i.addr
    - index: 4
      opcode: i
    - index: 5
      opcode: ps
    - index: 6
      opcode: base
    - index: 7
      opcode: top
    - index: 8
      opcode: f
    - index: 9
      opcode: count
    - index: 10
      memmode: store
    - index: 11
      callees:
      - llvm.dbg.declare
    - index: 12
      memmode: store
    - index: 13
      callees:
      - llvm.dbg.declare
    - index: 14
      memmode: store
    - index: 15
      callees:
      - llvm.dbg.declare
    - index: 16
      callees:
      - llvm.dbg.declare
    - index: 17
      callees:
      - llvm.dbg.declare
    - index: 18
      memmode: load
    - index: 19
    - index: 20
      memmode: store
    - index: 21
      callees:
      - llvm.dbg.declare
    - index: 22
      memmode: load
    - index: 23
      opcode: arrayidx
    - index: 24
      memmode: load
    - index: 25
      opcode: conv
    - index: 26
      memmode: load
    - index: 27
      opcode: arrayidx1
    - index: 28
      memmode: load
    - index: 29
      opcode: conv2
    - index: 30
      opcode: call
      callees:
      - abs_complex
    - index: 31
      memmode: store
    - index: 32
      callees:
      - llvm.dbg.declare
    - index: 33
      memmode: load
    - index: 34
      memmode: store
    - index: 35
      callees:
      - llvm.dbg.declare
    - index: 36
      callees:
      - llvm.dbg.declare
    - index: 37
      memmode: store
    - index: 38
      memmode: load
    - index: 39
      opcode: conv3
    - index: 40
      memmode: load
    - index: 41
      opcode: base_minimum
    - index: 42
      memmode: load
    - index: 43
      opcode: conv4
    - index: 44
      opcode: cmp
    - index: 45
  - name: if.then
    predecessors:
    - entry
    successors:
    - return
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: if.end
    predecessors:
    - entry
    successors:
    - for.cond
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: for.cond
    predecessors:
    - for.inc
    - if.end
    successors:
    - for.body
    - for.end
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp6
    - index: 2
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - if.then17
    - if.end34
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: arrayidx8
    - index: 3
      memmode: load
    - index: 4
      opcode: conv9
    - index: 5
      memmode: load
    - index: 6
      memmode: load
    - index: 7
      opcode: arrayidx10
    - index: 8
      memmode: load
    - index: 9
      opcode: conv11
    - index: 10
      opcode: call12
      callees:
      - abs_complex
    - index: 11
      memmode: store
    - index: 12
      memmode: load
    - index: 13
      opcode: conv13
    - index: 14
      memmode: load
    - index: 15
      opcode: noise_threshold
    - index: 16
      memmode: load
    - index: 17
      opcode: conv14
    - index: 18
      opcode: cmp15
    - index: 19
  - name: if.then17
    predecessors:
    - for.body
    successors:
    - if.then22
    - if.end23
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc
    - index: 2
      memmode: store
    - index: 3
      memmode: load
    - index: 4
      opcode: conv18
    - index: 5
      memmode: load
    - index: 6
      opcode: conv19
    - index: 7
      opcode: cmp20
    - index: 8
  - name: if.then22
    predecessors:
    - if.then17
    successors:
    - return
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: if.end23
    predecessors:
    - if.then17
    successors:
    - if.then26
    - if.end33
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: store
    - index: 2
      memmode: load
    - index: 3
      opcode: cmp24
    - index: 4
  - name: if.then26
    predecessors:
    - if.end23
    successors:
    - if.then31
    - if.end32
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: conv27
    - index: 2
      memmode: load
    - index: 3
      opcode: f1_minimum
    - index: 4
      memmode: load
    - index: 5
      opcode: conv28
    - index: 6
      opcode: cmp29
    - index: 7
  - name: if.then31
    predecessors:
    - if.then26
    successors:
    - return
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: if.end32
    predecessors:
    - if.then26
    successors:
    - if.end33
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: if.end33
    predecessors:
    - if.end32
    - if.end23
    successors:
    - if.end34
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: if.end34
    predecessors:
    - if.end33
    - for.body
    successors:
    - for.inc
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: for.inc
    predecessors:
    - if.end34
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc35
    - index: 2
      memmode: store
    - index: 3
  - name: for.end
    predecessors:
    - for.cond
    successors:
    - if.then38
    - if.end39
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: cmp36
    - index: 2
  - name: if.then38
    predecessors:
    - for.end
    successors:
    - return
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: if.end39
    predecessors:
    - for.end
    successors:
    - return
    instructions:
    - index: 0
      memmode: store
    - index: 1
  - name: return
    predecessors:
    - if.end39
    - if.then38
    - if.then31
    - if.then22
    - if.then
    successors: []
    instructions:
    - index: 0
      memmode: load
    - index: 1
- name: __udivsi3
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - for.body
    instructions:
    - index: 0
  - name: for.body
    predecessors:
    - for.inc
    - entry
    successors:
    - for.inc
    - if.then
    loops:
    - for.body
    instructions:
    - index: 0
      opcode: i.014
    - index: 1
      opcode: q.013
    - index: 2
      opcode: r.012
    - index: 3
      opcode: shl
    - index: 4
      opcode: shr
    - index: 5
      opcode: and
    - index: 6
      opcode: or
    - index: 7
      opcode: cmp1
    - index: 8
  - name: if.then
    predecessors:
    - for.body
    successors:
    - for.inc
    loops:
    - for.body
    instructions:
    - index: 0
      opcode: sub
    - index: 1
      opcode: shl2
    - index: 2
      opcode: or3
    - index: 3
  - name: for.inc
    predecessors:
    - if.then
    - for.body
    successors:
    - for.body
    - for.end
    loops:
    - for.body
    instructions:
    - index: 0
      opcode: r.1
    - index: 1
      opcode: q.1
    - index: 2
      opcode: dec
    - index: 3
      opcode: cmp
    - index: 4
  - name: for.end
    predecessors:
    - for.inc
    successors: []
    instructions:
    - index: 0
- name: bitreverse
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - for.cond
    instructions:
    - index: 0
      opcode: vs.addr
    - index: 1
      opcode: brv.addr
    - index: 2
      opcode: n.addr
    - index: 3
      opcode: i
    - index: 4
      opcode: j
    - index: 5
      opcode: tmp
    - index: 6
      memmode: store
    - index: 7
      callees:
      - llvm.dbg.declare
    - index: 8
      memmode: store
    - index: 9
      callees:
      - llvm.dbg.declare
    - index: 10
      memmode: store
    - index: 11
      callees:
      - llvm.dbg.declare
    - index: 12
      callees:
      - llvm.dbg.declare
    - index: 13
      memmode: store
    - index: 14
  - name: for.cond
    predecessors:
    - for.inc
    - entry
    successors:
    - for.body
    - for.end
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      memmode: load
    - index: 2
      opcode: cmp
    - index: 3
  - name: for.body
    predecessors:
    - for.cond
    successors:
    - if.then
    - if.end
    loops:
    - for.cond
    instructions:
    - index: 0
      callees:
      - llvm.dbg.declare
    - index: 1
      memmode: load
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx
    - index: 4
      memmode: load
    - index: 5
      memmode: store
    - index: 6
      memmode: load
    - index: 7
      memmode: load
    - index: 8
      opcode: cmp1
    - index: 9
  - name: if.then
    predecessors:
    - for.body
    successors:
    - if.end
    loops:
    - for.cond
    instructions:
    - index: 0
      callees:
      - llvm.dbg.declare
    - index: 1
      memmode: load
    - index: 2
      memmode: load
    - index: 3
      opcode: arrayidx2
    - index: 4
      memmode: load
    - index: 5
      memmode: store
    - index: 6
      memmode: load
    - index: 7
      memmode: load
    - index: 8
      opcode: arrayidx3
    - index: 9
      memmode: load
    - index: 10
      memmode: load
    - index: 11
      memmode: load
    - index: 12
      opcode: arrayidx4
    - index: 13
      memmode: store
    - index: 14
      memmode: load
    - index: 15
      memmode: load
    - index: 16
      memmode: load
    - index: 17
      opcode: arrayidx5
    - index: 18
      memmode: store
    - index: 19
  - name: if.end
    predecessors:
    - if.then
    - for.body
    successors:
    - for.inc
    loops:
    - for.cond
    instructions:
    - index: 0
  - name: for.inc
    predecessors:
    - if.end
    successors:
    - for.cond
    loops:
    - for.cond
    instructions:
    - index: 0
      memmode: load
    - index: 1
      opcode: inc
    - index: 2
      memmode: store
    - index: 3
  - name: for.end
    predecessors:
    - for.cond
    successors: []
    instructions:
    - index: 0
- name: abs_complex
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: real.addr
    - index: 1
      opcode: imag.addr
    - index: 2
      memmode: store
    - index: 3
      callees:
      - llvm.dbg.declare
    - index: 4
      memmode: store
    - index: 5
      callees:
      - llvm.dbg.declare
    - index: 6
      memmode: load
    - index: 7
      memmode: load
    - index: 8
      opcode: mul
    - index: 9
      opcode: shr
    - index: 10
      memmode: load
    - index: 11
      memmode: load
    - index: 12
      opcode: mul1
    - index: 13
      opcode: shr2
    - index: 14
      opcode: add
    - index: 15
      opcode: call
      callees:
      - isqrt32u
    - index: 16
      opcode: shl
    - index: 17
      opcode: conv
    - index: 18
flowfacts:
- scope:
    function: __udivsi3
    loop: for.body
  lhs:
  - factor: 1
    program-point:
      function: __udivsi3
      block: for.body
  op: less-equal
  rhs: 32
  level: bitcode
  origin: llvm.bc
  classification: loop-global
- scope:
    function: __udivsi3
    loop: for.body
  lhs:
  - factor: 1
    program-point:
      function: __udivsi3
      block: for.body
  op: less-equal
  rhs: '32'
  level: bitcode
  origin: llvm.bc
  classification: loop-global
relation-graphs:
- src:
    function: main
    level: bitcode
  dst:
    function: 28
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: do.body
    dst-block: 1
    src-successors:
    - 3
    dst-successors:
    - 3
  - name: 3
    type: progress
    src-block: do.end
    dst-block: 2
    src-successors:
    - 1
    dst-successors:
    - 1
  status: valid
- src:
    function: init_sample_buffer
    level: bitcode
  dst:
    function: 7
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 1
    type: exit
  status: valid
- src:
    function: test_interpolate
    level: bitcode
  dst:
    function: 22
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: for.cond
    dst-block: 1
    src-successors:
    - 3
    - 4
    dst-successors:
    - 3
    - 4
  - name: 3
    type: progress
    src-block: for.body
    dst-block: 2
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 4
    type: progress
    src-block: for.end11
    dst-block: 10
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 5
    type: progress
    src-block: for.cond3
    dst-block: 3
    src-successors:
    - 6
    - 7
    dst-successors:
    - 6
    - 7
  - name: 6
    type: progress
    src-block: for.body5
    dst-block: 4
    src-successors:
    - 9
    dst-successors:
    - 9
  - name: 7
    type: progress
    src-block: for.end
    dst-block: 8
    src-successors:
    - 8
    dst-successors:
    - 8
  - name: 8
    type: progress
    src-block: for.inc9
    dst-block: 9
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 9
    type: progress
    src-block: do.body
    dst-block: 5
    src-successors:
    - 10
    dst-successors:
    - 10
  - name: 10
    type: progress
    src-block: do.end
    dst-block: 6
    src-successors:
    - 11
    dst-successors:
    - 11
  - name: 11
    type: progress
    src-block: for.inc
    dst-block: 7
    src-successors:
    - 5
    dst-successors:
    - 5
  status: valid
- src:
    function: test_merge_samples
    level: bitcode
  dst:
    function: 24
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: do.body
    dst-block: 1
    src-successors:
    - 3
    dst-successors:
    - 3
  - name: 3
    type: progress
    src-block: do.end
    dst-block: 2
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 4
    type: progress
    src-block: for.cond
    dst-block: 3
    src-successors:
    - 5
    - 6
    dst-successors:
    - 5
    - 6
  - name: 5
    type: progress
    src-block: for.body
    dst-block: 4
    src-successors:
    - 17
    dst-successors:
    - 17
  - name: 6
    type: progress
    src-block: for.end13
    dst-block: 15
    src-successors:
    - 7
    dst-successors:
    - 7
  - name: 7
    type: progress
    src-block: for.cond14
    dst-block: 16
    src-successors:
    - 8
    - 9
    dst-successors:
    - 8
    - 9
  - name: 8
    type: progress
    src-block: for.body17
    dst-block: 17
    src-successors:
    - 10
    dst-successors:
    - 10
  - name: 9
    type: progress
    src-block: for.end34
    dst-block: 25
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 10
    type: progress
    src-block: do.body18
    dst-block: 18
    src-successors:
    - 11
    dst-successors:
    - 11
  - name: 11
    type: progress
    src-block: do.end19
    dst-block: 19
    src-successors:
    - 12
    dst-successors:
    - 12
  - name: 12
    type: progress
    src-block: for.cond20
    dst-block: 20
    src-successors:
    - 13
    - 14
    dst-successors:
    - 13
    - 14
  - name: 13
    type: progress
    src-block: for.body24
    dst-block: 21
    src-successors:
    - 16
    dst-successors:
    - 16
  - name: 14
    type: progress
    src-block: for.end31
    dst-block: 23
    src-successors:
    - 15
    dst-successors:
    - 15
  - name: 15
    type: progress
    src-block: for.inc32
    dst-block: 24
    src-successors:
    - 7
    dst-successors:
    - 7
  - name: 16
    type: progress
    src-block: for.inc28
    dst-block: 22
    src-successors:
    - 12
    dst-successors:
    - 12
  - name: 17
    type: progress
    src-block: do.body1
    dst-block: 5
    src-successors:
    - 18
    dst-successors:
    - 18
  - name: 18
    type: progress
    src-block: do.end2
    dst-block: 6
    src-successors:
    - 19
    dst-successors:
    - 19
  - name: 19
    type: progress
    src-block: for.cond3
    dst-block: 7
    src-successors:
    - 20
    - 21
    dst-successors:
    - 20
    - 21
  - name: 20
    type: progress
    src-block: for.body6
    dst-block: 8
    src-successors:
    - 23
    - 24
    dst-successors:
    - 23
    - 24
  - name: 21
    type: progress
    src-block: for.end
    dst-block: 13
    src-successors:
    - 22
    dst-successors:
    - 22
  - name: 22
    type: progress
    src-block: for.inc11
    dst-block: 14
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 23
    type: progress
    src-block: if.else
    dst-block: 10
    src-successors:
    - 25
    dst-successors:
    - 25
  - name: 24
    type: progress
    src-block: if.then
    dst-block: 9
    src-successors:
    - 25
    dst-successors:
    - 25
  - name: 25
    type: progress
    src-block: if.end
    dst-block: 11
    src-successors:
    - 26
    dst-successors:
    - 26
  - name: 26
    type: progress
    src-block: for.inc
    dst-block: 12
    src-successors:
    - 19
    dst-successors:
    - 19
  status: valid
- src:
    function: test_fft
    level: bitcode
  dst:
    function: 26
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: for.cond
    dst-block: 1
    src-successors:
    - 3
    - 4
    dst-successors:
    - 3
    - 4
  - name: 3
    type: progress
    src-block: for.body
    dst-block: 2
    src-successors:
    - 5
    - 6
    dst-successors:
    - 5
    - 6
  - name: 4
    type: progress
    src-block: for.end
    dst-block: 8
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 5
    type: progress
    src-block: if.end
    dst-block: 4
    src-successors:
    - 7
    dst-successors:
    - 7
  - name: 6
    type: progress
    src-block: if.then
    dst-block: 3
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 7
    type: progress
    src-block: do.body
    dst-block: 5
    src-successors:
    - 8
    dst-successors:
    - 8
  - name: 8
    type: progress
    src-block: do.end
    dst-block: 6
    src-successors:
    - 9
    dst-successors:
    - 9
  - name: 9
    type: progress
    src-block: for.inc
    dst-block: 7
    src-successors:
    - 2
    dst-successors:
    - 2
  status: valid
- src:
    function: test_task
    level: bitcode
  dst:
    function: 27
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: for.cond
    dst-block: 1
    src-successors:
    - 3
    - 4
    dst-successors:
    - 3
    - 4
  - name: 3
    type: progress
    src-block: for.body
    dst-block: 2
    src-successors:
    - 61
    dst-successors:
    - 61
  - name: 4
    type: progress
    src-block: for.end
    dst-block: 6
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 5
    type: progress
    src-block: for.cond4
    dst-block: 7
    src-successors:
    - 6
    - 7
    dst-successors:
    - 6
    - 7
  - name: 6
    type: progress
    src-block: for.body6
    dst-block: 8
    src-successors:
    - 58
    dst-successors:
    - 58
  - name: 7
    type: progress
    src-block: for.end16
    dst-block: 12
    src-successors:
    - 8
    dst-successors:
    - 8
  - name: 8
    type: progress
    src-block: for.cond17
    dst-block: 13
    src-successors:
    - 9
    - 10
    dst-successors:
    - 9
    - 10
  - name: 9
    type: progress
    src-block: for.body19
    dst-block: 14
    src-successors:
    - 55
    dst-successors:
    - 55
  - name: 10
    type: progress
    src-block: for.end29
    dst-block: 18
    src-successors:
    - 11
    dst-successors:
    - 11
  - name: 11
    type: progress
    src-block: for.cond30
    dst-block: 19
    src-successors:
    - 12
    - 13
    dst-successors:
    - 12
    - 13
  - name: 12
    type: progress
    src-block: for.body32
    dst-block: 20
    src-successors:
    - 52
    dst-successors:
    - 52
  - name: 13
    type: progress
    src-block: for.end42
    dst-block: 24
    src-successors:
    - 14
    dst-successors:
    - 14
  - name: 14
    type: progress
    src-block: for.cond43
    dst-block: 25
    src-successors:
    - 15
    - 16
    dst-successors:
    - 15
    - 16
  - name: 15
    type: progress
    src-block: for.body45
    dst-block: 26
    src-successors:
    - 51
    dst-successors:
    - 51
  - name: 16
    type: progress
    src-block: for.end49
    dst-block: 28
    src-successors:
    - 17
    dst-successors:
    - 17
  - name: 17
    type: progress
    src-block: for.cond50
    dst-block: 29
    src-successors:
    - 18
    - 19
    dst-successors:
    - 18
    - 19
  - name: 18
    type: progress
    src-block: for.body52
    dst-block: 30
    src-successors:
    - 48
    dst-successors:
    - 48
  - name: 19
    type: progress
    src-block: for.end62
    dst-block: 34
    src-successors:
    - 20
    dst-successors:
    - 20
  - name: 20
    type: progress
    src-block: for.cond63
    dst-block: 35
    src-successors:
    - 21
    - 22
    dst-successors:
    - 21
    - 22
  - name: 21
    type: progress
    src-block: for.body65
    dst-block: 36
    src-successors:
    - 47
    dst-successors:
    - 47
  - name: 22
    type: progress
    src-block: for.end69
    dst-block: 38
    src-successors:
    - 23
    dst-successors:
    - 23
  - name: 23
    type: progress
    src-block: for.cond70
    dst-block: 39
    src-successors:
    - 24
    - 25
    dst-successors:
    - 24
    - 25
  - name: 24
    type: progress
    src-block: for.body72
    dst-block: 40
    src-successors:
    - 44
    dst-successors:
    - 44
  - name: 25
    type: progress
    src-block: for.end82
    dst-block: 44
    src-successors:
    - 26
    dst-successors:
    - 26
  - name: 26
    type: progress
    src-block: for.cond83
    dst-block: 45
    src-successors:
    - 27
    - 28
    dst-successors:
    - 27
    - 28
  - name: 27
    type: progress
    src-block: for.body85
    dst-block: 46
    src-successors:
    - 41
    dst-successors:
    - 41
  - name: 28
    type: progress
    src-block: for.end95
    dst-block: 50
    src-successors:
    - 29
    dst-successors:
    - 29
  - name: 29
    type: progress
    src-block: for.cond96
    dst-block: 51
    src-successors:
    - 30
    - 31
    dst-successors:
    - 30
    - 31
  - name: 30
    type: progress
    src-block: for.body98
    dst-block: 52
    src-successors:
    - 38
    dst-successors:
    - 38
  - name: 31
    type: progress
    src-block: for.end108
    dst-block: 56
    src-successors:
    - 32
    dst-successors:
    - 32
  - name: 32
    type: progress
    src-block: for.cond109
    dst-block: 57
    src-successors:
    - 33
    - 34
    dst-successors:
    - 33
    - 34
  - name: 33
    type: progress
    src-block: for.body111
    dst-block: 58
    src-successors:
    - 35
    dst-successors:
    - 35
  - name: 34
    type: progress
    src-block: for.end121
    dst-block: 62
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 35
    type: progress
    src-block: do.body117
    dst-block: 59
    src-successors:
    - 36
    dst-successors:
    - 36
  - name: 36
    type: progress
    src-block: do.end118
    dst-block: 60
    src-successors:
    - 37
    dst-successors:
    - 37
  - name: 37
    type: progress
    src-block: for.inc119
    dst-block: 61
    src-successors:
    - 32
    dst-successors:
    - 32
  - name: 38
    type: progress
    src-block: do.body104
    dst-block: 53
    src-successors:
    - 39
    dst-successors:
    - 39
  - name: 39
    type: progress
    src-block: do.end105
    dst-block: 54
    src-successors:
    - 40
    dst-successors:
    - 40
  - name: 40
    type: progress
    src-block: for.inc106
    dst-block: 55
    src-successors:
    - 29
    dst-successors:
    - 29
  - name: 41
    type: progress
    src-block: do.body91
    dst-block: 47
    src-successors:
    - 42
    dst-successors:
    - 42
  - name: 42
    type: progress
    src-block: do.end92
    dst-block: 48
    src-successors:
    - 43
    dst-successors:
    - 43
  - name: 43
    type: progress
    src-block: for.inc93
    dst-block: 49
    src-successors:
    - 26
    dst-successors:
    - 26
  - name: 44
    type: progress
    src-block: do.body78
    dst-block: 41
    src-successors:
    - 45
    dst-successors:
    - 45
  - name: 45
    type: progress
    src-block: do.end79
    dst-block: 42
    src-successors:
    - 46
    dst-successors:
    - 46
  - name: 46
    type: progress
    src-block: for.inc80
    dst-block: 43
    src-successors:
    - 23
    dst-successors:
    - 23
  - name: 47
    type: progress
    src-block: for.inc67
    dst-block: 37
    src-successors:
    - 20
    dst-successors:
    - 20
  - name: 48
    type: progress
    src-block: do.body58
    dst-block: 31
    src-successors:
    - 49
    dst-successors:
    - 49
  - name: 49
    type: progress
    src-block: do.end59
    dst-block: 32
    src-successors:
    - 50
    dst-successors:
    - 50
  - name: 50
    type: progress
    src-block: for.inc60
    dst-block: 33
    src-successors:
    - 17
    dst-successors:
    - 17
  - name: 51
    type: progress
    src-block: for.inc47
    dst-block: 27
    src-successors:
    - 14
    dst-successors:
    - 14
  - name: 52
    type: progress
    src-block: do.body38
    dst-block: 21
    src-successors:
    - 53
    dst-successors:
    - 53
  - name: 53
    type: progress
    src-block: do.end39
    dst-block: 22
    src-successors:
    - 54
    dst-successors:
    - 54
  - name: 54
    type: progress
    src-block: for.inc40
    dst-block: 23
    src-successors:
    - 11
    dst-successors:
    - 11
  - name: 55
    type: progress
    src-block: do.body25
    dst-block: 15
    src-successors:
    - 56
    dst-successors:
    - 56
  - name: 56
    type: progress
    src-block: do.end26
    dst-block: 16
    src-successors:
    - 57
    dst-successors:
    - 57
  - name: 57
    type: progress
    src-block: for.inc27
    dst-block: 17
    src-successors:
    - 8
    dst-successors:
    - 8
  - name: 58
    type: progress
    src-block: do.body12
    dst-block: 9
    src-successors:
    - 59
    dst-successors:
    - 59
  - name: 59
    type: progress
    src-block: do.end13
    dst-block: 10
    src-successors:
    - 60
    dst-successors:
    - 60
  - name: 60
    type: progress
    src-block: for.inc14
    dst-block: 11
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 61
    type: progress
    src-block: do.body
    dst-block: 3
    src-successors:
    - 62
    dst-successors:
    - 62
  - name: 62
    type: progress
    src-block: do.end
    dst-block: 4
    src-successors:
    - 63
    dst-successors:
    - 63
  - name: 63
    type: progress
    src-block: for.inc
    dst-block: 5
    src-successors:
    - 2
    dst-successors:
    - 2
  status: valid
- src:
    function: clear_sample_buffer
    level: bitcode
  dst:
    function: 8
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: for.cond
    dst-block: 1
    src-successors:
    - 3
    - 4
    dst-successors:
    - 3
    - 4
  - name: 3
    type: progress
    src-block: for.body
    dst-block: 2
    src-successors:
    - 7
    dst-successors:
    - 7
  - name: 4
    type: progress
    src-block: for.end
    dst-block: 4
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 5
    type: progress
    src-block: do.body
    dst-block: 5
    src-successors:
    - 6
    dst-successors:
    - 6
  - name: 6
    type: progress
    src-block: do.end
    dst-block: 6
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 7
    type: progress
    src-block: for.inc
    dst-block: 3
    src-successors:
    - 2
    dst-successors:
    - 2
  status: valid
- src:
    function: sep
    level: bitcode
  dst:
    function: 23
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 1
    type: exit
  status: valid
- src:
    function: iinterpolate16
    level: bitcode
  dst:
    function: 3
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 3
    - 4
    - 5
    - 6
    - 7
    - 8
    dst-successors:
    - 2
    - 8
  - name: 1
    type: exit
  - name: 2
    type: dst
    dst-block: 15
    dst-successors:
    - 3
    - 4
    - 5
    - 6
    - 7
  - name: 3
    type: progress
    src-block: sw.bb.i
    dst-block: 1
    src-successors:
    - 9
    dst-successors:
    - 9
  - name: 4
    type: progress
    src-block: sw.bb1.i
    dst-block: 2
    src-successors:
    - 9
    dst-successors:
    - 9
  - name: 5
    type: progress
    src-block: sw.bb12.i
    dst-block: 5
    src-successors:
    - 9
    dst-successors:
    - 9
  - name: 6
    type: progress
    src-block: sw.bb4.i
    dst-block: 3
    src-successors:
    - 9
    dst-successors:
    - 9
  - name: 7
    type: progress
    src-block: sw.bb8.i
    dst-block: 4
    src-successors:
    - 9
    dst-successors:
    - 9
  - name: 8
    type: progress
    src-block: sw.default.i
    dst-block: 6
    src-successors:
    - 9
    dst-successors:
    - 9
  - name: 9
    type: progress
    src-block: small_div.exit
    dst-block: 7
    src-successors:
    - 11
    - 12
    - 13
    - 14
    - 15
    - 16
    dst-successors:
    - 10
    - 16
  - name: 10
    type: dst
    dst-block: 16
    dst-successors:
    - 11
    - 12
    - 13
    - 14
    - 15
  - name: 11
    type: progress
    src-block: sw.bb.i17
    dst-block: 8
    src-successors:
    - 17
    dst-successors:
    - 17
  - name: 12
    type: progress
    src-block: sw.bb1.i21
    dst-block: 9
    src-successors:
    - 17
    dst-successors:
    - 17
  - name: 13
    type: progress
    src-block: sw.bb12.i33
    dst-block: 12
    src-successors:
    - 17
    dst-successors:
    - 17
  - name: 14
    type: progress
    src-block: sw.bb4.i25
    dst-block: 10
    src-successors:
    - 17
    dst-successors:
    - 17
  - name: 15
    type: progress
    src-block: sw.bb8.i29
    dst-block: 11
    src-successors:
    - 17
    dst-successors:
    - 17
  - name: 16
    type: progress
    src-block: sw.default.i38
    dst-block: 13
    src-successors:
    - 17
    dst-successors:
    - 17
  - name: 17
    type: progress
    src-block: small_div.exit39
    dst-block: 14
    src-successors:
    - 1
    dst-successors:
    - 1
  status: valid
- src:
    function: print_sample_buffer
    level: bitcode
  dst:
    function: 25
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: for.cond
    dst-block: 1
    src-successors:
    - 3
    - 4
    dst-successors:
    - 3
    - 4
  - name: 3
    type: progress
    src-block: for.body
    dst-block: 2
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 4
    type: progress
    src-block: for.end
    dst-block: 4
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 5
    type: progress
    src-block: for.inc
    dst-block: 3
    src-successors:
    - 2
    dst-successors:
    - 2
  status: valid
- src:
    function: merge_samples
    level: bitcode
  dst:
    function: 15
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: if.end
    dst-block: 2
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 3
    type: progress
    src-block: if.then
    dst-block: 1
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 4
    type: progress
    src-block: return
    dst-block: 16
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 5
    type: progress
    src-block: for.cond
    dst-block: 3
    src-successors:
    - 6
    - 7
    dst-successors:
    - 6
    - 7
  - name: 6
    type: progress
    src-block: for.body
    dst-block: 4
    src-successors:
    - 8
    - 9
    dst-successors:
    - 8
    - 9
  - name: 7
    type: progress
    src-block: for.end22
    dst-block: 15
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 8
    type: progress
    src-block: if.end20
    dst-block: 13
    src-successors:
    - 17
    dst-successors:
    - 17
  - name: 9
    type: progress
    src-block: if.then5
    dst-block: 5
    src-successors:
    - 10
    - 11
    dst-successors:
    - 10
    - 11
  - name: 10
    type: progress
    src-block: if.end19
    dst-block: 12
    src-successors:
    - 8
    dst-successors:
    - 8
  - name: 11
    type: progress
    src-block: land.lhs.true
    dst-block: 6
    src-successors:
    - 10
    - 12
    dst-successors:
    - 10
    - 12
  - name: 12
    type: progress
    src-block: if.then11
    dst-block: 7
    src-successors:
    - 13
    dst-successors:
    - 13
  - name: 13
    type: progress
    src-block: for.cond14
    dst-block: 8
    src-successors:
    - 14
    - 15
    dst-successors:
    - 14
    - 15
  - name: 14
    type: progress
    src-block: for.body17
    dst-block: 9
    src-successors:
    - 16
    dst-successors:
    - 16
  - name: 15
    type: progress
    src-block: for.end
    dst-block: 11
    src-successors:
    - 10
    dst-successors:
    - 10
  - name: 16
    type: progress
    src-block: for.inc
    dst-block: 10
    src-successors:
    - 13
    dst-successors:
    - 13
  - name: 17
    type: progress
    src-block: for.inc21
    dst-block: 14
    src-successors:
    - 5
    dst-successors:
    - 5
  status: valid
- src:
    function: fft
    level: bitcode
  dst:
    function: 16
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: for.cond
    dst-block: 1
    src-successors:
    - 3
    - 4
    dst-successors:
    - 3
    - 4
  - name: 3
    type: progress
    src-block: for.body
    dst-block: 2
    src-successors:
    - 29
    - 30
    dst-successors:
    - 29
    - 30
  - name: 4
    type: progress
    src-block: for.end
    dst-block: 6
    src-successors:
    - 5
    - 6
    dst-successors:
    - 5
    - 6
  - name: 5
    type: progress
    src-block: if.end6
    dst-block: 8
    src-successors:
    - 8
    dst-successors:
    - 8
  - name: 6
    type: progress
    src-block: if.then5
    dst-block: 7
    src-successors:
    - 7
    dst-successors:
    - 7
  - name: 7
    type: progress
    src-block: return
    dst-block: 30
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 8
    type: progress
    src-block: for.cond7
    dst-block: 9
    src-successors:
    - 9
    - 10
    dst-successors:
    - 9
    - 10
  - name: 9
    type: progress
    src-block: for.body10
    dst-block: 10
    src-successors:
    - 21
    - 22
    dst-successors:
    - 21
    - 22
  - name: 10
    type: progress
    src-block: for.end32
    dst-block: 19
    src-successors:
    - 11
    - 12
    dst-successors:
    - 11
    - 12
  - name: 11
    type: progress
    src-block: if.end49
    dst-block: 25
    src-successors:
    - 17
    dst-successors:
    - 17
  - name: 12
    type: progress
    src-block: if.then36
    dst-block: 20
    src-successors:
    - 13
    dst-successors:
    - 13
  - name: 13
    type: progress
    src-block: for.cond38
    dst-block: 21
    src-successors:
    - 14
    - 15
    dst-successors:
    - 14
    - 15
  - name: 14
    type: progress
    src-block: for.body41
    dst-block: 22
    src-successors:
    - 16
    dst-successors:
    - 16
  - name: 15
    type: progress
    src-block: for.end48
    dst-block: 24
    src-successors:
    - 11
    dst-successors:
    - 11
  - name: 16
    type: progress
    src-block: for.inc46
    dst-block: 23
    src-successors:
    - 13
    dst-successors:
    - 13
  - name: 17
    type: progress
    src-block: for.cond50
    dst-block: 26
    src-successors:
    - 18
    - 19
    dst-successors:
    - 18
    - 19
  - name: 18
    type: progress
    src-block: for.body53
    dst-block: 27
    src-successors:
    - 20
    dst-successors:
    - 20
  - name: 19
    type: progress
    src-block: for.end57
    dst-block: 29
    src-successors:
    - 7
    dst-successors:
    - 7
  - name: 20
    type: progress
    src-block: for.inc55
    dst-block: 28
    src-successors:
    - 17
    dst-successors:
    - 17
  - name: 21
    type: progress
    src-block: if.end16
    dst-block: 12
    src-successors:
    - 23
    - 24
    dst-successors:
    - 23
    - 24
  - name: 22
    type: progress
    src-block: if.then15
    dst-block: 11
    src-successors:
    - 7
    dst-successors:
    - 7
  - name: 23
    type: progress
    src-block: if.else
    dst-block: 14
    src-successors:
    - 27
    - 28
    dst-successors:
    - 27
    - 28
  - name: 24
    type: progress
    src-block: if.then20
    dst-block: 13
    src-successors:
    - 25
    dst-successors:
    - 25
  - name: 25
    type: progress
    src-block: if.end30
    dst-block: 17
    src-successors:
    - 26
    dst-successors:
    - 26
  - name: 26
    type: progress
    src-block: for.inc31
    dst-block: 18
    src-successors:
    - 8
    dst-successors:
    - 8
  - name: 27
    type: progress
    src-block: if.end29
    dst-block: 16
    src-successors:
    - 25
    dst-successors:
    - 25
  - name: 28
    type: progress
    src-block: if.then28
    dst-block: 15
    src-successors:
    - 27
    dst-successors:
    - 27
  - name: 29
    type: progress
    src-block: if.end
    dst-block: 4
    src-successors:
    - 31
    dst-successors:
    - 31
  - name: 30
    type: progress
    src-block: if.then
    dst-block: 3
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 31
    type: progress
    src-block: for.inc
    dst-block: 5
    src-successors:
    - 2
    dst-successors:
    - 2
  status: valid
- src:
    function: isqrt32u
    level: bitcode
  dst:
    function: 4
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: do.body
    dst-block: 1
    src-successors:
    - 3
    - 4
    dst-successors:
    - 3
    - 4
  - name: 3
    type: progress
    src-block: if.end
    dst-block: 3
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 4
    type: progress
    src-block: if.then
    dst-block: 2
    src-successors:
    - 3
    dst-successors:
    - 3
  - name: 5
    type: progress
    src-block: do.cond
    dst-block: 4
    src-successors:
    - 2
    - 6
    dst-successors:
    - 2
    - 6
  - name: 6
    type: progress
    src-block: do.end
    dst-block: 5
    src-successors:
    - 1
    dst-successors:
    - 1
  status: valid
- src:
    function: init_state
    level: bitcode
  dst:
    function: 17
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 1
    type: exit
  status: valid
- src:
    function: task
    level: bitcode
  dst:
    function: 14
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: if.end
    dst-block: 2
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 3
    type: progress
    src-block: if.then
    dst-block: 1
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 4
    type: progress
    src-block: return
    dst-block: 3
    src-successors:
    - 1
    dst-successors:
    - 1
  status: valid
- src:
    function: __divsi3
    level: bitcode
  dst:
    function: 115
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 1
    type: exit
  status: valid
- src:
    function: sample_buffer_get_valid
    level: bitcode
  dst:
    function: 12
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: if.end
    dst-block: 2
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 3
    type: progress
    src-block: if.then
    dst-block: 1
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 4
    type: progress
    src-block: return
    dst-block: 9
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 5
    type: progress
    src-block: do.body
    dst-block: 3
    src-successors:
    - 6
    dst-successors:
    - 6
  - name: 6
    type: progress
    src-block: do.end
    dst-block: 4
    src-successors:
    - 7
    - 8
    dst-successors:
    - 7
    - 8
  - name: 7
    type: progress
    src-block: if.end5
    dst-block: 6
    src-successors:
    - 9
    dst-successors:
    - 9
  - name: 8
    type: progress
    src-block: if.then3
    dst-block: 5
    src-successors:
    - 7
    dst-successors:
    - 7
  - name: 9
    type: progress
    src-block: do.body6
    dst-block: 7
    src-successors:
    - 10
    dst-successors:
    - 10
  - name: 10
    type: progress
    src-block: do.end7
    dst-block: 8
    src-successors:
    - 4
    dst-successors:
    - 4
  status: valid
- src:
    function: sample_buffer_set
    level: bitcode
  dst:
    function: 10
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: cond.false
    dst-block: 2
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 3
    type: progress
    src-block: cond.true
    dst-block: 1
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 4
    type: progress
    src-block: cond.end
    dst-block: 3
    src-successors:
    - 1
    dst-successors:
    - 1
  status: valid
- src:
    function: sample_buffer_get
    level: bitcode
  dst:
    function: 9
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: cond.false
    dst-block: 2
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 3
    type: progress
    src-block: cond.true
    dst-block: 1
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 4
    type: progress
    src-block: cond.end
    dst-block: 3
    src-successors:
    - 1
    dst-successors:
    - 1
  status: valid
- src:
    function: sample_buffer_set_valid
    level: bitcode
  dst:
    function: 13
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: cond.false
    dst-block: 2
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 3
    type: progress
    src-block: cond.true
    dst-block: 1
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 4
    type: progress
    src-block: cond.end
    dst-block: 3
    src-successors:
    - 1
    dst-successors:
    - 1
  status: valid
- src:
    function: sample_buffer_incr_ptr
    level: bitcode
  dst:
    function: 11
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: cond.false
    dst-block: 2
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 3
    type: progress
    src-block: cond.true
    dst-block: 1
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 4
    type: progress
    src-block: cond.end
    dst-block: 3
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 5
    type: progress
    src-block: do.body
    dst-block: 4
    src-successors:
    - 6
    dst-successors:
    - 6
  - name: 6
    type: progress
    src-block: do.end
    dst-block: 5
    src-successors:
    - 1
    dst-successors:
    - 1
  status: valid
- src:
    function: fp_radix2fft_withscaling
    level: bitcode
  dst:
    function: 5
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: for.cond
    dst-block: 1
    src-successors:
    - 3
    - 4
    dst-successors:
    - 3
    - 4
  - name: 3
    type: progress
    src-block: for.body
    dst-block: 2
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 4
    type: progress
    src-block: for.end64
    dst-block: 12
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 5
    type: progress
    src-block: for.cond2
    dst-block: 3
    src-successors:
    - 6
    - 7
    dst-successors:
    - 6
    - 7
  - name: 6
    type: progress
    src-block: for.body4
    dst-block: 4
    src-successors:
    - 9
    dst-successors:
    - 9
  - name: 7
    type: progress
    src-block: for.end61
    dst-block: 10
    src-successors:
    - 8
    dst-successors:
    - 8
  - name: 8
    type: progress
    src-block: for.inc62
    dst-block: 11
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 9
    type: progress
    src-block: for.cond5
    dst-block: 5
    src-successors:
    - 10
    - 11
    dst-successors:
    - 10
    - 11
  - name: 10
    type: progress
    src-block: for.body7
    dst-block: 6
    src-successors:
    - 13
    dst-successors:
    - 13
  - name: 11
    type: progress
    src-block: for.end
    dst-block: 8
    src-successors:
    - 12
    dst-successors:
    - 12
  - name: 12
    type: progress
    src-block: for.inc59
    dst-block: 9
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 13
    type: progress
    src-block: for.inc
    dst-block: 7
    src-successors:
    - 9
    dst-successors:
    - 9
  status: valid
- src:
    function: check_sin
    level: bitcode
  dst:
    function: 18
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: if.end
    dst-block: 2
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 3
    type: progress
    src-block: if.then
    dst-block: 1
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 4
    type: progress
    src-block: return
    dst-block: 13
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 5
    type: progress
    src-block: for.cond
    dst-block: 3
    src-successors:
    - 6
    - 7
    dst-successors:
    - 6
    - 7
  - name: 6
    type: progress
    src-block: for.body
    dst-block: 4
    src-successors:
    - 10
    - 11
    dst-successors:
    - 10
    - 11
  - name: 7
    type: progress
    src-block: for.end
    dst-block: 10
    src-successors:
    - 8
    - 9
    dst-successors:
    - 8
    - 9
  - name: 8
    type: progress
    src-block: if.end29
    dst-block: 12
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 9
    type: progress
    src-block: if.then28
    dst-block: 11
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 10
    type: progress
    src-block: if.end23
    dst-block: 8
    src-successors:
    - 14
    dst-successors:
    - 14
  - name: 11
    type: progress
    src-block: if.then17
    dst-block: 5
    src-successors:
    - 12
    - 13
    dst-successors:
    - 12
    - 13
  - name: 12
    type: progress
    src-block: if.end22
    dst-block: 7
    src-successors:
    - 10
    dst-successors:
    - 10
  - name: 13
    type: progress
    src-block: if.then21
    dst-block: 6
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 14
    type: progress
    src-block: for.inc
    dst-block: 9
    src-successors:
    - 5
    dst-successors:
    - 5
  status: valid
- src:
    function: check_square
    level: bitcode
  dst:
    function: 20
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 2
    - 3
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: if.end
    dst-block: 2
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 3
    type: progress
    src-block: if.then
    dst-block: 1
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 4
    type: progress
    src-block: return
    dst-block: 17
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 5
    type: progress
    src-block: for.cond
    dst-block: 3
    src-successors:
    - 6
    - 7
    dst-successors:
    - 6
    - 7
  - name: 6
    type: progress
    src-block: for.body
    dst-block: 4
    src-successors:
    - 10
    - 11
    dst-successors:
    - 10
    - 11
  - name: 7
    type: progress
    src-block: for.end
    dst-block: 14
    src-successors:
    - 8
    - 9
    dst-successors:
    - 8
    - 9
  - name: 8
    type: progress
    src-block: if.end39
    dst-block: 16
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 9
    type: progress
    src-block: if.then38
    dst-block: 15
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 10
    type: progress
    src-block: if.end34
    dst-block: 12
    src-successors:
    - 18
    dst-successors:
    - 18
  - name: 11
    type: progress
    src-block: if.then17
    dst-block: 5
    src-successors:
    - 12
    - 13
    dst-successors:
    - 12
    - 13
  - name: 12
    type: progress
    src-block: if.end23
    dst-block: 7
    src-successors:
    - 14
    - 15
    dst-successors:
    - 14
    - 15
  - name: 13
    type: progress
    src-block: if.then22
    dst-block: 6
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 14
    type: progress
    src-block: if.end33
    dst-block: 11
    src-successors:
    - 10
    dst-successors:
    - 10
  - name: 15
    type: progress
    src-block: if.then26
    dst-block: 8
    src-successors:
    - 16
    - 17
    dst-successors:
    - 16
    - 17
  - name: 16
    type: progress
    src-block: if.end32
    dst-block: 10
    src-successors:
    - 14
    dst-successors:
    - 14
  - name: 17
    type: progress
    src-block: if.then31
    dst-block: 9
    src-successors:
    - 4
    dst-successors:
    - 4
  - name: 18
    type: progress
    src-block: for.inc
    dst-block: 13
    src-successors:
    - 5
    dst-successors:
    - 5
  status: valid
- src:
    function: __udivsi3
    level: bitcode
  dst:
    function: 123
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: for.body
    dst-block: 1
    src-successors:
    - 3
    - 4
    dst-successors:
    - 3
    - 4
  - name: 3
    type: progress
    src-block: for.inc
    dst-block: 3
    src-successors:
    - 2
    - 5
    dst-successors:
    - 2
    - 5
  - name: 4
    type: progress
    src-block: if.then
    dst-block: 2
    src-successors:
    - 3
    dst-successors:
    - 3
  - name: 5
    type: progress
    src-block: for.end
    dst-block: 4
    src-successors:
    - 1
    dst-successors:
    - 1
  status: valid
- src:
    function: bitreverse
    level: bitcode
  dst:
    function: 6
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    dst-successors:
    - 2
  - name: 1
    type: exit
  - name: 2
    type: progress
    src-block: for.cond
    dst-block: 1
    src-successors:
    - 3
    - 4
    dst-successors:
    - 3
    - 4
  - name: 3
    type: progress
    src-block: for.body
    dst-block: 2
    src-successors:
    - 5
    - 6
    dst-successors:
    - 5
    - 6
  - name: 4
    type: progress
    src-block: for.end
    dst-block: 6
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 5
    type: progress
    src-block: if.end
    dst-block: 4
    src-successors:
    - 7
    dst-successors:
    - 7
  - name: 6
    type: progress
    src-block: if.then
    dst-block: 3
    src-successors:
    - 5
    dst-successors:
    - 5
  - name: 7
    type: progress
    src-block: for.inc
    dst-block: 5
    src-successors:
    - 2
    dst-successors:
    - 2
  status: valid
- src:
    function: abs_complex
    level: bitcode
  dst:
    function: 19
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 1
    type: exit
  status: valid
