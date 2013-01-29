export DEV_TOOLS_HOME=/Users/twer/Work/tools
export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home

export JBOSS_HOME=//Users/twer/Work/tools/jboss-soa-p.4.3.0/jboss-as
export JBOSS_HOME=//Users/twer/Work/tools/jboss-soa-test/jboss-soa-p.4.3.0/jboss-as

export CATALINA_HOME=$DEV_TOOLS_HOME/apache-tomcat-6.0.35
export PATH=$PATH:$HOME/.rvm/bin:$CATALINA_HOME/bin

export GRADLE_HOME=$DEV_TOOLS_HOME/gradle-1.0-rc-3
export GRADLE_OPTS='-Xmx512M -XX:MaxPermSize=256M'
export PLAY_HOME=/Users/twer/Work/tools/play-2.0.3
export PATH=${GRADLE_HOME}/bin:${PLAY_HOME}:${PATH}


export GROOVY_HOME=$DEV_TOOLS_HOME/groovy-1.8.6/
export PATH=${GROOVY_HOME}/bin:${PATH}

export GRAILS_HOME=$DEV_TOOLS_HOME/grails-2.1.0/
#export GRAILS_HOME=$DEV_TOOLS_HOME/grails-2.0.4/
export PATH=${GRAILS_HOME}/bin:${PATH}


export GRIFFON_HOME=$DEV_TOOLS_HOME/griffon-1.1.0
export PATH=${GRIFFON_HOME}/bin:${PATH}
export CXF_HOME=$DEV_TOOLS_HOME/apache-cxf-2.6.0/
export PATH=${CXF_HOME}/bin:${PATH}

export FEEDER_HOME=/Users/twer/feeder-casa-150.165
export PATH=${FEEDER_HOME}/bin:${PATH}

alias tc='cd ${CATALINA_HOME}'
alias tcc='rm -rf ${CATALINA_HOME}/webapps/*DS*'
alias tcl='cd ${CATALINA_HOME}/logs'
alias tcs='rm -rf $CATALINA_HOME/work && $CATALINA_HOME/bin/startup.sh'
alias tcx='$CATALINA_HOME/bin/shutdown.sh'
alias tct='tail -f ${CATALINA_HOME}/logs/catalina.out'
alias tcw='cd ${CATALINA_HOME}/webapps'

alias tjwlog="tail -f $JBOSS_HOME/server/default/log/server.log"
alias jwlog="cd $JBOSS_HOME/server/default/log/"
alias jbstart="rm -rf /var/tmp/jetwire/email_alert_index/rea/write.lock;rm -rf /var/tmp/jetwire/email_alert_index/rca/write.lock;$JBOSS_HOME/bin/run.sh -c jetwire"
alias jbstop="$JBOSS_HOME/bin/shutdown.sh --shutdown"
alias ws="cd /Users/twer/Work/rea/jetwire-dir/mock-web-service"
alias jw='cd //Users/twer/Work/tools/jboss-soa-test/jboss-soa-p.4.3.0/jboss-as/server/jetwire/deploy/jetwire'

alias cld='cd ~/work/rea/casa-cloud'
alias hd='heroku create --stack cedar'
alias findMatchFile='find . -name "*.log" -exec grep -n -H ".*jetwire.*" {} \;'
alias iphone='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications'
alias gitserver='git daemon --export-all --base-path=.'
alias fast='cd /Users/twer/VirtualBox\ VMs/fast'
alias sea='cd ~/Project/script/groovy/email-alert'
alias fast='cd /Users/twer/VirtualBox\ VMs/fast'
alias em='cd /Users/twer/Project/script/groovy/email-alert'
alias jws='cd /Users/twer/Work/rea/casa-jetwire-test-script'
alias blog='cd /Users/twer/Project/blog/octopress'
