namespace: math
flow:
  name: multiply
  inputs:
    - number1: "${get_sp('number1')}"
    - number2: "${get_sp('number2')}"
  workflow:
    - multiply_numbers:
        do:
          io.cloudslang.base.math.multiply_numbers:
            - value1: '${number1}'
            - value2: '${number2}'
        publish:
          - result
        navigate:
          - SUCCESS: SUCCESS
  outputs:
    - result: '${result}'
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      multiply_numbers:
        x: 493
        y: 271
        navigate:
          9ddf7dad-b935-af6e-0214-b4e55a265e78:
            targetId: 81b8618d-7387-a267-8a46-e1c02bea9488
            port: SUCCESS
    results:
      SUCCESS:
        81b8618d-7387-a267-8a46-e1c02bea9488:
          x: 672
          y: 272
