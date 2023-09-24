if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ghostop02/EvaMaria-extra-features_mpd.git /PiroAutoFilterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PiroAutoFilterBot
fi
cd /PiroAutoFilterBot
pip3 install -U -r requirements.txt
echo "Starting AutoFilterBot...."
python3 bot.py
