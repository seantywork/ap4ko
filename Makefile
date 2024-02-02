

all: src/app.cc

	g++ -Wall -pthread -L${USR_LOCAL_LIB_SOLIMOD}/mod -Wl,-rpath=${USR_LOCAL_LIB_SOLIMOD}/mod -o src/soliapp src/app.cc -lsolimod -lsqlite3 -lssl -lcrypto


dep-install:

	cp -R include/httplib ${USR_LOCAL_INCLUDE_PREFIX}/
	cp -R include/jsonlib ${USR_LOCAL_INCLUDE_PREFIX}/
	cp -R include/websocketpp ${USR_LOCAL_INCLUDE_PREFIX}/


	chmod -R 655 ${USR_LOCAL_INCLUDE_PREFIX}/httplib
	chmod -R 655 ${USR_LOCAL_INCLUDE_PREFIX}/jsonlib
	chmod -R 655 ${USR_LOCAL_INCLUDE_PREFIX}/websocketpp