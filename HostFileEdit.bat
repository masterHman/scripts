SET sourceDevPc=

SET bcomp="C:\Program Files (x86)\Beyond Compare 3\BComp.exe"

call %bcomp% \\%sourceDevPc%\C$\Windows\System32\drivers\etc\hosts %Windir%\System32\drivers\etc\hosts

ipconfig /flushdns