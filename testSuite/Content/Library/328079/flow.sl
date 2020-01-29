namespace: '328079'
flow:
  name: flow
  workflow:
    - pyOp:
        do:
          328079.pyOp: []
        navigate:
          - SUCCESS:
              next_step: jyOp
              ROI: '4'
    - jyOp:
        do:
          328079.jyOp: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyOp:
        x: 269
        'y': 112
      jyOp:
        x: 479
        'y': 118
        navigate:
          aeb39ace-02be-c186-36fa-b5a660939762:
            targetId: cb8ffbea-cd43-26dd-1162-23df5a53c9cd
            port: SUCCESS
    results:
      SUCCESS:
        cb8ffbea-cd43-26dd-1162-23df5a53c9cd:
          x: 667
          'y': 109
