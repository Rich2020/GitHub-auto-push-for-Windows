# GitHub-auto-push-for-Windows
A simple batch script that executes every X seconds and automatically pushes the contents of the specified directory to GitHub.

When writing documents (such as your thesis or whatever), it's a nice idea to have different versions of that document. With versioning, you can look up past versions and copy out whatever has been lost in newer versions. 
When working on Windows (not so sure about Mac or Linux), it can be rather worring that at any moment, your computer can go "boom!". 
That fantastic bit of writing you've just been punching in for the past hour is vapourized, leaving you devistated.

Not anymore!

No matter what files you want to back up and version, just pop them into a folder somewhere and let this script automatically push them to GitHub.

Let's say you have a file called "Thesis.docx" (a Word document) and folder on your desktop called "Writings".

Place your Thesis.docx file into your Writings folder (and anything else you want uploaded to GitHub).

Next, go to GitHub and create your repository (lets call it Writings, too) and clone your new repository to your desktop (To the Writings folder).

Make sure that your GitHub repository is set to SSH:

![SSH settings](http://s32.postimg.org/7z323cklh/ssh_pic.png)

GitHub requires a username and password and this can be really annoying if you have to type it in every time you push.
Fear not! You can cache your username and password by running the following from your command prompt:

```
$ git config credential.helper store
$ git push https://github.com/<REPOSITORY>.git
Username for 'https://github.com': <USERNAME>
Password for 'https://USERNAME@github.com': <PASSWORD>
```

Where <REPOSITORY> is the name your your repo (Writings in this example), and <USERNAME> and <PASSWORD> are well... your username and password for GitHub.

Open the GitAutoPush.batch file and edit `cd <path>` by replacing `<path>` with the path to your directory (Writings). 
Eg: `C:\Users\Pookie\Desktop\Writings`

Now that you are all set up, run the GitAutoPush.batch file. 

It will by default, push every 300 seconds (5 minutes). Change as required.
