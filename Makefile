build:
	docker build -t ae-docker .
start0:
	cd ~/docker/bethgelab-docker && GPU=0 ./agmb-docker run -d --name alex0 -v /gpfs01:/gpfs01 -p 6088:8888 -p 6022:22  -e DISPLAY=localhost:10.0 ae-docker
start1:
	cd ~/docker/bethgelab-docker && GPU=1 ./agmb-docker run -d --name alex1 -v /gpfs01:/gpfs01 -p 6089:8888 -p 6023:22  -e DISPLAY=localhost:10.0 ae-docker
start2:
	cd ~/docker/bethgelab-docker && GPU=2 ./agmb-docker run -d --name alex2 -v /gpfs01:/gpfs01 -p 6090:8888 -p 6024:22  -e DISPLAY=localhost:10.0 ae-docker
start3:
	cd ~/docker/bethgelab-docker && GPU=3 ./agmb-docker run -d --name alex3 -v /gpfs01:/gpfs01 -p 6091:8888 -p 6025:22  -e DISPLAY=localhost:10.0 ae-docker
start4:
	cd ~/docker/bethgelab-docker && GPU=4 ./agmb-docker run -d --name alex4 -v /gpfs01:/gpfs01 -p 6092:8888 -p 6026:22  -e DISPLAY=localhost:10.0 ae-docker
start5:
	cd ~/docker/bethgelab-docker && GPU=5 ./agmb-docker run -d --name alex5 -v /gpfs01:/gpfs01 -p 6093:8888 -p 6027:22  -e DISPLAY=localhost:10.0 ae-docker
start6:
	cd ~/docker/bethgelab-docker && GPU=6 ./agmb-docker run -d --name alex6 -v /gpfs01:/gpfs01 -p 6094:8888 -p 6028:22  -e DISPLAY=localhost:10.0 ae-docker
start7:
	cd ~/docker/bethgelab-docker && GPU=7 ./agmb-docker run -d --name alex7 -v /gpfs01:/gpfs01 -p 6095:8888 -p 6029:22  -e DISPLAY=localhost:10.0 ae-docker

