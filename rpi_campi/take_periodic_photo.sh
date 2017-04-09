FILENAME=$(date +"%Y-%d_%H%M%S")
raspistill -o $HOME/time_lapse/$FILENAME
echo "Just took picture :)"
