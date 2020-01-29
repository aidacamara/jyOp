namespace: '328078'
operation:
  name: pyOp
  python_action:
    useJython: false
    script: "# removing, renaming or overwriting the 'execute' method will  result in compilation failure.\r\n# any parameters declared in the execute's method signature should be present in the 'Inputs' tab.\r\n\r\ndef func(*args):\r\n    result = ','.join(args)\r\n    return result\r\n    \r\ndef func2(**kwargs):\r\n    keys = '&'.join(kwargs)\r\n    return keys\r\n    \r\ndef func3(**kwargs):\r\n    return '#'.join(kwargs.values())\r\n    \r\n\r\ndef execute():\r\n    # code goes here\r\n    result1 = func('aida', 'uhuu')\r\n    result2 = func2(unu = '1', doi = '2')\r\n    result3 = func3(a = '7', b = '5')\r\n    return locals()\r\n# you can add additional helper methods below."
  outputs:
    - result3
    - result1
    - result2
  results:
    - SUCCESS
