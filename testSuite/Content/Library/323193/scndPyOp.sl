namespace: '323193'
operation:
  name: scndPyOp
  python_action:
    useJython: false
    script: "# removing, renaming or overwriting the 'execute' method will  result in compilation failure.\n# any parameters declared in the execute's method signature should be present in the 'Inputs' tab. \ndef execute():\n    # code goes here\n    a = \"string\"\n    return locals()\n# you can add additional helper methods below."
  outputs:
    - a
  results:
    - SUCCESS
