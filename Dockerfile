FROM jitsi/web:latest

ARG TOOLBAR
ARG APP_NAME
ARG WATERMARK_URL

RUN perl -0777 -pi -e \
     "s/TOOLBAR_BUTTONS: \[[^\]]+\]/TOOLBAR_BUTTONS: ${TOOLBAR}/g" \
      /defaults/interface_config.js

RUN sed -i "s/APP_NAME: '.*'/APP_NAME: '${APP_NAME}'/g" \ 
     /defaults/interface_config.js

RUN sed -i "s/NATIVE_APP_NAME: '.*'/NATIVE_APP_NAME: '${APP_NAME}'/g" \ 
     /defaults/interface_config.js

RUN sed -i "s|JITSI_WATERMARK_LINK: '.*'|JITSI_WATERMARK_LINK: '${WATERMARK_URL}'|g" \ 
     /defaults/interface_config.js

