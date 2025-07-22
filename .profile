# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# http://maketecheasier.com/8-useful-and-interesting-bash-prompts/2009/09/04
PS1="\n\[\e[34;1m\](\D{%F.%T})-(\w)\n\[\e[3\`if [[ \$? = 0 ]]; then echo 2; else echo 1; fi\`;1m\](!\!)-> \[\e[0m\]"

WS=/Developer/workspace; export WS
#DBPW=******; export DBPW
VISUAL=vi ; export VISUAL
ALTERNATE_EDITOR= ; export ALTERNATE_EDITOR
EDITOR="$EDITOR" ; export EDITOR

export XDG_CONFIG_HOME="$HOME/.config"

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_UPGRADE=1
export HOMEBREW_NO_INSTALL_CLEANUP=1
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1

#export NODE_OPTIONS=--openssl-legacy-provider

#export MYSQL_ROOT_PASSWORD=******

export ANTQ_DEFAULT_TIMEOUT=30000

export CLOJARS_USERNAME=seancorfield
#export CLOJARS_PASSWORD=CLOJARS_******
# clojure-example-library:
#export CEL_TOKEN=CLOJARS_******

#export ZULIP_AUTH='sean@corfield.org:******'
alias zulip_events='clojure -Sdeps '"'"'{:deps {clojurians-zulip/feeds {:git/url "https://gitlab.com/clojurians-zulip/feeds.git" :sha "7f6dfa52631639faedb8993d8c3de666ccdb22bd"}} :aliases {:cli/events {:main-opts ["-m" "inclined.main" "--ns" "clojurians-zulip.events" "--"]}}}'"'"' -M:cli/events'

#export GOOGLE_APPLICATION_CREDENTIALS=/var/www/worldsingles/build/config/******.json

#export AWS_ACCESS_KEY_ID=******
#export AWS_SECRET_ACCESS_KEY=******
export AWS_DEFAULT_REGION=us-east-1

export LOG4J_CONFIGURATION_FILE=/var/www/worldsingles/development/resources/log4j2-test.properties

export FORCE_POLLING_ONLY=true

export NR_JAR=/var/www/worldsingles/build/lib/newrelic-agent.jar
export NR_CFG=/var/www/worldsingles/build/config/newrelic.yml
export NR_ENV=development
export NR_AGENT="-javaagent:$NR_JAR -Dnewrelic.environment=$NR_ENV -Dnewrelic.config.file=$NR_CFG"

export LUCEE_HEAP=1G

export OPENJDK8_HOME=/Developer/jdk8u332-b09
export OPENJDK18_HOME=/Developer/jdk-18.0.2+9
export OPENJDK19_HOME=/Developer/jdk-19.0.2+7
export OPENJDK20_HOME=/Developer/jdk-20.0.1+9
export OPENJDK21_HOME=/Developer/jdk-21.0.1+12
export OPENJDK23_HOME=/Developer/jdk-23
export OPENJDK24_HOME=/Developer/jdk-24.0.1+9

export JAVA_HOME=$OPENJDK24_HOME
export JAVA_CMD=$JAVA_HOME/bin/java

export IRCNICK=seancorfield
export IRCSERVER=irc.libera.chat

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
