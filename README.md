# GitHub-auto-push-for-Windows

When writing documents (such as your thesis or a paper), it's a nice idea to have different versions of that document. With versioning, you can look up past versions and copy out whatever has been lost in newer versions. 

No matter what files you want to back up and version, just pop them into a folder somewhere and let this script automatically push them to GitHub.

Let's say you have a file called `Thesis.docx` (a Word document) and a folder on your desktop called `Writings`.

- Place your `Thesis.docx` file into your `Writings` folder (and anything else you want uploaded to GitHub).

- Next, go to GitHub and create your repository (lets call it Writings, too) and clone your new repository to your desktop (To the Writings folder).

- Make sure that your GitHub repository is set to SSH:

![SSH settings](http://s32.postimg.org/7z323cklh/ssh_pic.png)

GitHub requires a username and password and this can be really annoying if you have to type it in every time you push.
You can cache your username and password by running the following from your command prompt:

```
$ git config credential.helper store
$ git push https://github.com/<USERNAME>/<REPOSITORY>.git
Username for 'https://github.com': <USERNAME>
Password for 'https://USERNAME@github.com': <PASSWORD>
```

Where `<REPOSITORY>` is the name your your repo (Writings in this example), and `<USERNAME>` and `<PASSWORD>` are well... your username and password for GitHub. Source: http://stackoverflow.com/questions/8588768/git-push-username-password-how-to-avoid

- Open the GitAutoPush.batch file and edit `cd <path>` by replacing `<path>` with the path to your directory (Writings). 
Eg: `C:\Users\Rich\Desktop\Writings`

- Now that you are all set up, run the GitAutoPush.batch file. 

It will by default, `push` every 300 seconds (5 minutes). It will `pull` any changes made to your repository, too.
It will push any files in your `Writings` directory, so make sure that you know what is being pushed.

Change as required.
