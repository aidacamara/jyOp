namespace: '323181'
flow:
  name: flow
  workflow:
    - pyOp:
        do:
          323181.pyOp: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyOp:
        x: 300
        'y': 162
        navigate:
          afdf711a-e15d-0cea-4dfb-ad5a0577eae0:
            targetId: e5796a3b-f340-472c-6cdc-b3afd5d6946e
            port: SUCCESS
    results:
      SUCCESS:
        e5796a3b-f340-472c-6cdc-b3afd5d6946e:
          x: 481
          'y': 159
