export JAVA_6_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home

export JAVA_HOME=$JAVA_11_HOME
export M2_HOME=/usr/local/Cellar/maven/3.6.0/libexec
export PATH=$PATH:$M2_HOME/bin
export M2=$M2_HOME/bin

alias java11='export JAVA_HOME=$JAVA_11_HOME'
