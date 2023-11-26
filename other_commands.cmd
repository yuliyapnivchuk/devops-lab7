@REM dynamic port forwarding
ssh -i C:\Users\user\.ssh\it-step-instance-key.pem -o StrictHostKeyChecking=no -D 8899 ubuntu@ec2-52-87-228-32.compute-1.amazonaws.com
@REM doesn't work chrome start
@REM start chrome --proxy-server="socks5://localhost:8899" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE localhost:8899"
python3 -m http.server
@REM remote port forwarding
ssh -i C:\Users\user\.ssh\it-step-instance-key.pem -o StrictHostKeyChecking=no -R 7788:localhost:8000 ubuntu@ec2-44-203-139-46.compute-1.amazonaws.com
