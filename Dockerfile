FROM openjdk:8

COPY ./csim_waybill_print_service_V1.1.0.jar /tmp
COPY ./simhei.ttf /tmp
RUN apt-get update -y
RUN apt-get install -y xfonts-utils
RUN mkdir -p /usr/share/fonts/my_fonts
RUN mv /tmp/simhei.ttf /usr/share/fonts/my_fonts
RUN cd /usr/share/fonts/my_fonts && mkfontscale && mkfontdir
RUN echo "Asia/Shanghai" > /etc/timezone
RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y tzdata

ENV TZ Asia/Shanghai

ENTRYPOINT ["java", "-jar", "/tmp/csim_waybill_print_service_V1.1.0.jar"]
