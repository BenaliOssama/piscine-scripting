#cat facts  | grep "moon" && output.txt << "The moon fact was found!"
nohup bash -c 'cat facts | grep "moon" && echo "The moon fact was found!" >> output.txt' &
