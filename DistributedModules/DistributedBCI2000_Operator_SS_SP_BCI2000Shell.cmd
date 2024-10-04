#! ../prog/BCI2000Shell
@cls & ..\prog\BCI2000Shell %0 %* #! && exit /b 0 || exit /b 1\n

Change directory $BCI2000LAUNCHDIR
Show window; Set title ${Extract file base $0}
Reset system
Startup system 192.168.42.128

start executable SignalGenerator       192.168.42.128 --LogKeyboard=1 
start executable DummySignalProcessing 192.168.42.128

Wait for Connected
