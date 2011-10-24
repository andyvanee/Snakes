removesocks(){
	rm ${1}
	trap - INT TERM EXIT
	exit 0
}
makesock(){
  if [ ! -p ${1} ]; then mkfifo ${1}; fi
  trap "removesocks ${1}" INT TERM EXIT
}
