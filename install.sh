#/bin/bash

case  $1  in
    notion)       
        export ID=notion
        export NAME=Notion
        export URL=https://www.notion.so
        ;;
    whatsapp)
        export ID=whatsapp
        export NAME=Whatsapp
        export URL=https://web.whatsapp.com
        ;;            
    slack)
        export ID=slack
        export NAME=Slack
        export URL=https://inlocoglobal.slack.com
        ;;            
    google-calendar)
        export ID=calendar.google
        export NAME=Calendar
        export URL=https://calendar.google.com
        ;;            
    *)
        echo "Choose a webapp"
        exit 1;
    ;;             
esac 

export PROJECT_PATH=$(pwd)
mkdir -p ${ID}
envsubst < webapp-template.desktop > ${ID}/${ID}.webapp.desktop

ln -s ${PROJECT_PATH}/${ID}/${ID}.webapp.desktop ${HOME}/.local/share/applications
