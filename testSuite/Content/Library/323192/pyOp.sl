namespace: '323192'
operation:
  name: pyOp
  python_action:
    useJython: false
    script: "# removing, renaming or overwriting the 'execute' method will  result in compilation failure.\n# any parameters declared in the execute's method signature should be present in the 'Inputs' tab. \n\ndef createSubprocess():\n    from subprocess import Popen, PIPE\n\n    process = Popen(['ls', '-l'], stdout=PIPE, stderr=PIPE)\n    stdout, stderr = process.communicate()\n    return stdout\n    \ndef execute():\n    # code goes here\n    result = str(createSubprocess())\n    return locals()\n# you can add additional helper methods below."
  outputs:
    - result
  results:
    - SUCCESS
