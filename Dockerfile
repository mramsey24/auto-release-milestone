FROM mcr.microsoft.com/dotnet/core/sdk:3.1

LABEL "com.github.actions.name"="Auto Release Milestone"
LABEL "com.github.actions.description"="Drafts a GitHub release based on a newly created milestone"

LABEL version="0.1.0"
LABEL repository="https://github.com/mramsey24"
LABEL maintainer="Mark Ramsey"

COPY entrypoint.sh /
RUN chmod +x entrypoint.sh

#CMD ["/bin/ls", "-al"]
ENTRYPOINT [ "/entrypoint.sh" ]
