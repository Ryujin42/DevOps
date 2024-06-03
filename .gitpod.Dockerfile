FROM gitpod/workspace-python

USER ROOT

RUN service cron start
