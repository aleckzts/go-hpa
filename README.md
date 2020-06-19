Teste de HPA no Google Cloud

- Imagem no Docker Hub:
https://hub.docker.com/repository/docker/aleckzts/go-hpa

- Pod para acesso ao webser em Go
kubectl run -it hpa-loader --image=busybox /bin/sh

- Executar:
while true; do wget -q -O- http://go-hpa.default.svc.cluster.local:8000/; done;
