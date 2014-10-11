set JV "java-7-oracle"

if set -q argv[1]
	set JV $argv[1]
end

echo $JV

set JAVA_HOME /usr/lib/jvm/{$JV}

set J2SDKDIR {$JAVA_HOME}
set J2REDIR {$JAVA_HOME}/jre
set DERBY_HOME {$JAVA_HOME}/db

set JAVA_XOPTS "-Duser.timezone=GMT -Djava.security.policy=~/.java.policy"

set JAVA_OPTS "-XX:MaxPermSize=400m -Xms256m -Xmx512m -XX:PermSize=128m -server $JAVA_XOPTS"

set MVN_HOME "/opt/java/maven"
set GRADLE_HOME "/opt/apps/gradle"

set MAVEN_OPTS "-XX:MaxPermSize=400m -Xmx512m"
set GRADLE_OPTS "$MAVEN_OPTS"

set MAVEN_OPTS_DEBUG "$MAVEN_OPTS -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8008"
set GRADLE_OPTS_DEBUG "-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8005"

set -U fish_user_paths $fish_user_paths $JAVA_HOME/bin $DERBY_HOME/bin $J2REDIR/bin $MVN_HOME/bin $GRADLE_HOME/bin

touch /tmp/.jdk_fish
