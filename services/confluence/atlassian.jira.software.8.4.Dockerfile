FROM atlassian/jira-software:8.4

###########################################################################
# Set Timezone
###########################################################################

# USER root

# ARG TZ=UTC
# ENV TZ ${TZ}

# # RUN apk add --no-cache tzdata
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#
#--------------------------------------------------------------------------
# Final Touch
#--------------------------------------------------------------------------
#

# ENTRYPOINT ["docker-entrypoint.sh"]