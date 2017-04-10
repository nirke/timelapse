FILENAME=$(date +"%Y-%d_%H%M%S")
raspistill -o $HOME/time_lapse/photos/$FILENAME.jpg
echo "Just took picture :)"
