DevOps Challenge has been done. Please find below point to run app on container. And as I have already mentioned this code I have have built on Docker, not on Vagrant file. I have some laptop issue thats why I mentioned with you earlier. 

I have uploaded project on github. You can download the repo from below URL and run commands to make it UP and running on port no 5000. 

GIT URL: 

Command:

# docker-compose up -d

Output

[root@ip-172-31-23-44 dev]# curl localhost:5000
{"headers":{"Accept":"*/*","Host":"localhost:5000","User-Agent":"curl/7.55.1"},"origin":"172.18.0.1"}
[root@ip-172-31-23-44 dev]#[root@ip-172-31-23-44 dev]# curl localhost:5000
{"headers":{"Accept":"*/*","Host":"localhost:5000","User-Agent":"curl/7.55.1"},"origin":"172.18.0.1"}
[root@ip-172-31-23-44 dev]#



For App should be restarted automatically, I have set restart policy if app is crashed or even host system restarted. The container will automatically start by itself. We can explicitly stop it so that it wont run after reboot the host. 

For Logging, the roation of log is enabled and can be found under below path in json format.

[root@ip-172-31-23-44 dev]# cat /var/lib/docker/containers/64fac9342fbf0d4aba5dc4fa61d5a13a409f26d1dd4b6ffd0c67152d4c077ab0/64fac9342fbf0d4aba5dc4fa61d5a13a409f26d1dd4b6ffd0c67152d4c077ab0-json.log
{"log":" * Environment: production\n","stream":"stdout","time":"2018-07-25T19:04:07.428309798Z"}
{"log":"   WARNING: Do not use the development server in a production environment.\n","stream":"stdout","time":"2018-07-25T19:04:07.428424482Z"}
{"log":"   Use a production WSGI server instead.\n","stream":"stdout","time":"2018-07-25T19:04:07.42843253Z"}
{"log":" * Debug mode: off\n","stream":"stdout","time":"2018-07-25T19:04:07.428497672Z"}
{"log":" * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)\n","stream":"stderr","time":"2018-07-25T19:04:07.429981175Z"}
{"log":"172.18.0.1 - - [25/Jul/2018 19:04:18] \"GET / HTTP/1.1\" 200 -\n","stream":"stderr","time":"2018-07-25T19:04:18.4228346Z"}
[root@ip-172-31-23-44 dev]#

