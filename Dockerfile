
1
ADD file ... in /
29.97 MB
2
CMD ["bash"]
0 B
3
LABEL maintainer=psiinon@gmail.com
0 B
4
ARG DEBIAN_FRONTEND=noninteractive
0 B
5
RUN |1 DEBIAN_FRONTEND=noninteractive /bin/sh -c
524.87 MB
6
RUN |1 DEBIAN_FRONTEND=noninteractive /bin/sh -c
20.45 MB
7
RUN |1 DEBIAN_FRONTEND=noninteractive /bin/sh -c
4.22 KB
8
RUN |1 DEBIAN_FRONTEND=noninteractive /bin/sh -c
364 B
9
RUN |1 DEBIAN_FRONTEND=noninteractive /bin/sh -c
96 B
10
WORKDIR /zap
32 B
11
USER zap
0 B
12
RUN |1 DEBIAN_FRONTEND=noninteractive /bin/sh -c
139 B
13
COPY --chown=1000:1000 /zap . #
371.43 MB
14
COPY --chown=1000:1000 /zap/webswing /zap/webswing #
58.17 MB
15
ARG TARGETARCH=amd64
0 B
16
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
0 B
17
ENV PATH=/usr/lib/jvm/java-11-openjdk-amd64/bin:/zap/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
0 B
18
ENV ZAP_PATH=/zap/zap.sh
0 B
19
ENV ZAP_PORT=8080
0 B
20
ENV IS_CONTAINERIZED=true
0 B
21
ENV HOME=/home/zap/
0 B
22
ENV LC_ALL=C.UTF-8
0 B
23
ENV LANG=C.UTF-8
0 B
24
COPY --chown=1000:1000 zap* CHANGELOG.md /zap/
20.61 KB
25
COPY --chown=1000:1000 webswing.config /zap/webswing/ #
861 B
26
COPY --chown=1000:1000 webswing.properties /zap/webswing/ #
186 B
27
COPY --chown=1000:1000 policies /home/zap/.ZAP/policies/ #
1.08 KB
28
COPY --chown=1000:1000 policies /root/.ZAP/policies/ #
1.06 KB
29
COPY --chown=1000:1000 scripts /home/zap/.ZAP_D/scripts/ #
2.12 KB
30
COPY --chown=1000:1000 .xinitrc /home/zap/ #
194 B
31
COPY --chown=1000:1000 firefox /home/zap/.mozilla/firefox/ #
396 B
32
RUN |2 DEBIAN_FRONTEND=noninteractive TARGETARCH=amd64 /bin/sh
250 B
33
HEALTHCHECK &{["CMD-SHELL" "curl --silent --output
0 B
34
LABEL run.crashoverride.origin-uri=https://github.com/zaproxy/zaproxy
0 B
35
LABEL run.crashoverride.commit-id=0a7b3f81555c24cd346ee23fcf1daf0877dc9713
0 B
36
LABEL run.crashoverride.branch=main
0 B
37
LABEL run.crashoverride.author=Skyper <skyper@skyplabs.net> 1721722902 +0200
0 B
38
LABEL run.crashoverride.date-authored=Tue Jul 23 08:21:42
0 B
39
LABEL run.crashoverride.committer=GitHub <noreply@github.com> 1721722902 +0100
0 B
40
LABEL run.crashoverride.date-committed=Tue Jul 23 08:21:42
0 B
41
ARG TARGETPLATFORM=linux/amd64
0 B
42
COPY /linux/amd64 /chalk.json # buildkit
431 B
