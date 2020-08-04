import sys
import os
from github import Github


# ENTER YOUR GITHUB USERNAME AND PASSWORD
git_Username = ""
git_Password = ""

# ENTER THE PATH TO YOUR PROJECT FOLDERS
path = ""


# THIS WILL CREATE ONLY A PRIVATE REPO ON GITHUB
def create():
    folder_name = str(sys.argv[1])
    os.makedirs(path+folder_name)

    user = Github(git_Username, git_Password).get_user()

    user.create_repo(folder_name, private=True)

    print("successfully created repository {}".format(folder_name))

if __name__ == "__main__":
    create()
