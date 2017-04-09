# Taken from:
# https://computers.tutsplus.com/tutorials/creating-time-lapse-photography-with-a-raspberry-pi--cms-20794

echo "Mapping the photos for the time lapse video"
ls *.jpg > stills.txt

echo "Generating a video from your photos"
mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=16/9:vbitrate=8000000 -vf scale=1920:1080 -o timelapse.avi -mf type=jpeg:fps=24 mf://@stills.txt
