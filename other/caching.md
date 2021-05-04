1. Run Program
2. Check file signature, check catch for cached bytecode matching sig. 
    - **Matching Signature**
    : run cached bytecode 
    - **Non-matching signature**: compile and cache bytecode, run bytecode

**Notes**:
- cached bytecode files are named `<signature>.gpc`
- the signature is a hash based off the contents of the file