FROM python:3.9.1
# From means where I am pulling from then name of the image in this case is python
# then colon then the image tag in this instance is 3.9.1
ADD dockerforclient.py .
# this is how I add my files to the image follow by space then the name of the dir. 
# in this case . means my current dir. 
# to add multiple files to the image just copy and paste the ADD command like the one on top. 
RUN pip install pillow
# the run command is the interface between you and the command line, this is how you interact
# between the command line and the container
CMD ["python", "./dockerforclient.py"]
# to run the file in this case I would type CMD which give me the shell follow by 
#in this example Python in between quotes then the comma, then the name of the file, 
#but put the ./ to say from this directory. 