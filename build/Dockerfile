FROM jetbrains/teamcity-server
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y gnupg
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" \
    | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && curl -# https://packages.cloud.google.com/apt/doc/apt-key.gpg \
    | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - \
    && apt-get update -y
RUN apt-get install google-cloud-sdk -y
COPY ./build/postgresql-42.2.12.jar /usr/local/lib/postgresql-42.2.12.jar
COPY ./build/copy-jdbc-lib.sh /services/copy-jdbc-lib.sh