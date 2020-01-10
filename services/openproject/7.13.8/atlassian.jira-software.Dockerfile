FROM atlassian/jira-software:7.13.8 AS base

# Set Timezone
USER root

ARG TZ=UTC
ENV TZ ${TZ}

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# End Timezone


FROM base AS runtime
