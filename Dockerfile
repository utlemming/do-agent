FROM alpine:latest

RUN mkdir -p /agent
COPY build/do-agent_linux_amd64 /agent

ENV DO_AGENT_REPO_PATH   /agent/updates
ENV DO_AGENT_PROCFS_ROOT /agent/proc

CMD /agent/do-agent_linux_amd64
