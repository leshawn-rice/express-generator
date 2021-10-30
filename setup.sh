source="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "
express-generator() {
  bash $source/run.sh
}" >> ~/.bashrc
