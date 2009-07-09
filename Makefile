# Makefile for the APQ_Provider
#
# @author Marcelo Coraça de Freitas <marcelo@kow.com.br> 


projectFile="apq_provider-ct_lib.gpr"


libs:
	gnatmake -P ${projectFile}

all: libs


clean:
	gnatclean -P ${projectFile}
	@echo "All clean"

docs:
	@-./gendoc.sh
	@echo "The documentation is generated by a bash script. Then it might fail in other platforms"