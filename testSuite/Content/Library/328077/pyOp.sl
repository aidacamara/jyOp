namespace: '328077'
operation:
  name: pyOp
  python_action:
    useJython: false
    script: "# removing, renaming or overwriting the 'execute' method will  result in compilation failure.\n# any parameters declared in the execute's method signature should be present in the 'Inputs' tab. \ndef execute():\n    # code goes here\n    a = str(func())\n    return locals()\n# you can add additional helper methods below.\n\ndef func():\n    my_list = [12, 65, 54, 39, 102, 339, 221, 50, 70, ]\n    return list(filter(lambda x: (x % 13 == 0), my_list))"
  outputs:
    - a
  results:
    - SUCCESS
