echo "Cloning Repo...."

if [ -z "$BRANCH" ]
then
  echo "Cloning main branch...."
  git clone https://github.com/anujofficial9719-eng/Ultra-Forward-Bot
  cd Ultra-Forward-Bot
else
  echo "Cloning $BRANCH branch...."
  git clone -b "$BRANCH" https://github.com/anujofficial9719-eng/Ultra-Forward-Bot
  cd Ultra-Forward-Bot
fi

pip3 install -U -r requirements.txt

echo "Starting Bot...."
python3 main.py
