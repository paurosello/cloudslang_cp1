########################################################################################################################
#!!
#! @description: This flow accepts two numbers and returns the sum
#!
#! @input number1: Number 1 for the sum
#! @input number2: Number 2 for the sum
#!
#! @output flow_output_0: Result of the sum
#!!#
########################################################################################################################
namespace: math
flow:
  name: sum
  inputs:
    - number1: "${get_sp('number1')}"
    - number2: "${get_sp('number2')}"
  workflow:
    - add_numbers:
        do:
          io.cloudslang.base.math.add_numbers:
            - value1: '${number1}'
            - value2: '${number2}'
        publish:
          - sum: '${result}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  outputs:
    - flow_output_0: '${sum}'
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      add_numbers:
        x: 492
        y: 267
        navigate:
          ded58e1b-9e3e-aa1f-aaa8-edadd6e6badf:
            targetId: 74cb2ab3-a637-a30c-c0b3-7458908fd461
            port: SUCCESS
    results:
      SUCCESS:
        74cb2ab3-a637-a30c-c0b3-7458908fd461:
          x: 677
          y: 269
