import os
from subprocess import Popen

def launch(path):
  prevpath = os.getcwd()
  os.chdir(path)
  for f in os.listdir(path):
    if f[-3:] == ".sh":
      launch_one(os.path.join(path, f))
  os.chdir(prevpath)
  
def launch_one(ps):
  pid = Popen([ps, ""]).pid
