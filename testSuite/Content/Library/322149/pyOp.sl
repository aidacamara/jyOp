namespace: '322149'
operation:
  name: pyOp
  python_action:
    useJython: false
    script: "# removing, renaming or overwriting the 'execute' method will  result in compilation failure.\n# any parameters declared in the execute's method signature should be present in the 'Inputs' tab. \ndef execute():\n    try:\n        a = 10/0\n        \n    except ZeroDivisionError:\n        a = str(999)\n    except:\n        a = 'hmm'\n            \n    return locals()\n# you can add additional helper methods below."
  outputs:
    - a
  results:
    - SUCCESS
