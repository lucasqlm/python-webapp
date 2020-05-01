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
    *)
        echo "Choose a webapp"
        exit 1;
    ;;             
esac 

export PROJECT_PATH=$(pwd)
mkdir -p ${ID}
envsubst < webapp-template.desktop > ${ID}/${ID}.webapp.desktop

ln -s ${PROJECT_PATH}/${ID}/${ID}.webapp.desktop ${HOME}/.local/share/applications