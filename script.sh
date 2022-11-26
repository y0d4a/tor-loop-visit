# url
url="http://www.domain.net/comments/tick.php?lang=english&amp;id=19425126&amp;thumbs=up"
# check ip
torify curl -s http://whatismijnip.nl |cut -d " " -f 5
# get new ip
killall -HUP tor
# check ip 2 & checking is TOR alive and get new IP
torify curl -s http://whatismijnip.nl |cut -d " " -f 5
# do loop with new IPs
for (( ; ; ))
do
   echo "infinite loops [ hit CTRL+C to stop]" && torify curl -A "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8J2 Safari/6533.18.5" $url && killall -HUP tor
done
