FROM jitsi/web:latest

RUN perl -0777 -pi -e \
     "s/TOOLBAR_BUTTONS: \[[^\]]+\]/TOOLBAR_BUTTONS: ['microphone','camera','fullscreen','chat','tileview']/g" \
      /config/interface_config.js