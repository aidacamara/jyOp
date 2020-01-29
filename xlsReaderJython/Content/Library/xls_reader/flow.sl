namespace: xls_reader
flow:
  name: flow
  workflow:
    - jyOp:
        do:
          xls_reader.jyOp: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      jyOp:
        x: 290
        'y': 135
        navigate:
          c4990755-0e30-9598-08b1-ff15c929ebcf:
            targetId: 163db4cd-0f6d-f1aa-3fd8-a0b4b9f652d2
            port: SUCCESS
    results:
      SUCCESS:
        163db4cd-0f6d-f1aa-3fd8-a0b4b9f652d2:
          x: 526
          'y': 133
