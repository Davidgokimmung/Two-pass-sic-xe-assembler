# Two-pass-sic-xe-assembler

Commands to run assembler:<br/>
**javac Assembler/Main.java<br/>
java Assembler.Main InputTests/filename.asm<br/>
Eg. java Assembler.Main InputTests/bsrch.asm**<br/>

After running the assembler in terminal you’ll get the intermediate file, symtab (of pass1 and pass2), littab(of pass1 and pass2) and the object program.<br/>
Following files are also created in the src folder along side the .asm file :<br/>
    • .int file (intermediate file)<br/>
    • .o file (object program)<br/>
    • .txt (intermediate along with object code)
