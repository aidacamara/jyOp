namespace: read_from_xls
flow:
  name: flow
  inputs:
    - pathToFile
    - sheetName
    - hasHeader
  workflow:
    - read_xls_operation:
        do:
          read_from_xls.read_xls_operation:
            - pathToFile: '${pathToFile}'
            - sheetName: '${sheetName}'
            - hasHeader: '${hasHeader}'
        publish:
          - result
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      read_xls_operation:
        x: 275
        'y': 215
        navigate:
          71ae5a1e-db55-8062-6772-4e08f166300b:
            targetId: 84be3c99-06a4-3c43-1cf6-3ef24d968ff1
            port: SUCCESS
    results:
      SUCCESS:
        84be3c99-06a4-3c43-1cf6-3ef24d968ff1:
          x: 484
          'y': 210
