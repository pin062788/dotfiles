export JAVA_OPTS=`echo $JAVA_OPTS | sed -e "s/-Xrunjdwp:transport=dt_socket,address=8787,server=y,suspend=n//g"`
