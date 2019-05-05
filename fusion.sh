#!/bin/bash
#xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/'
date
if [ -d "/usr/lib/kega-fusion" ];
then
echo "Directory /usr/lib/kega-fusion exists " ;

    if [ -d "/usr/lib/kega-fusion/logs" ];
    then 
        >> /usr/lib/kega-fusion/logs/log.sh && echo "logging successful discovery of directory at $date"
        echo "It runs!"
        
        sleep 1.5 && WID=$(xdotool search "Fusion 3.63x");
         echo $WID;
         dir=/home/mike/Documents/code/scripts/id.txt;
         if [ -f "$dir" ]
         then
            echo "$WID" > "$dir" && echo "Id passed to storage file"
            
         else
            cat $dir && echo "$WID" > "$dir" && echo "Storage File created and Id passed to it"
            
         fi
    else
    #dont forget to set a super user password
    #dont forget to set recursive permissions for usr/lib/kega-fusion/logs
        echo "making logs directory"
        echo '1221' | sudo -kS mkdir -p /usr/lib/kega-fusion/logs
        echo "Creating log.sh"
        echo '1221' | sudo -kS touch /usr/lib/kega-fusion/logs/log.sh
        echo "Updating permissions"
        echo '1221' | sudo -kS chmod  755 /usr/lib/kega-fusion/;
        echo '1221' | sudo -kS chmod  755 /usr/lib/kega-fusion/logs/;
        echo '1221' | sudo -kS chmod  722 /usr/lib/kega-fusion/logs/log.sh;
        echo "Appending new log date"
        echo '1221' | sudo -kS >> /usr/lib/kega-fusion/logs/log.sh && echo `logging successful discovery of directory at $date`
    fi
        cd /usr/lib/kega-fusion/ && ./Fusion & 
        echo "It runs!"
        
        sleep 1.5 && WID=$(xdotool search "Fusion 3.63x");
         echo $WID;
         dir=/home/mike/Documents/code/scripts/id.txt;
         if [ -f "$dir" ]
         then
            echo "$WID" > "$dir" && echo "Id passed to storage file";
            xdotool windowsize $WID 100% 100%
            xdotool windowsize $WID 100% 100%
            xdotool key --window $WID alt+Return 
            xdotool key --window $WID ctrl+g 
            sleep 1.5 && newWin=$(xdotool search "Load Genesis/32X Rom")
            echo "$newWin + new win" >> "$dir" && echo "Id passed to storage file";
            xdotool key --window $newWin Return

            else
            cat $dir && echo "$WID" > "$dir" && echo "Storage File created and Id passed to it"
            xdotool windowsize $WID 100% 100%
            xdotool windowsize $WID 100% 100%
            xdotool key --window $WID alt+Return 
            xdotool key --window $WID ctrl+g 
            sleep 1.5 && newWin=$(xdotool search "Load Genesis/32X Rom")
            echo "$newWin + new win" >> "$dir" && echo "Id passed to storage file";
            xdotool key --window $newWin Return

         fi

         
  
    

fi