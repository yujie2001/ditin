#! /bin/sh
cat>>${HOME}/.bash_history<<EOF
pip install -U pip
cd ~/code/brian
docker build --pull -t brian .
docker ps -a
docker ps -aq | xargs docker rm -f
docker network prune -f
docker volume prune -f
docker exec -it brian_postgres pg_dumpall -U brian > ~/backup.sql
cd ~/.cargo
ls
cd registry
ls
cd index
cd github.com-1ecc6299db9ec823
ls
cd ~
ls
cd code
git fetch --all
git checkout master
git pull
git checkout dev
git rebase master
ssh root@192.168.14.171
cd ~/code/net_switch
git reset --hard cc08c1b152382095f2371728e7d79b81a011fd08
rm brian.key
git add .
git commit -m "improve network"
git push -f
rustup update
cargo install-update --all --
tree
vim ~/.cargo/config
rm -rf ~/.cargo/registry
kubectl get all
kubectl describe pod kubia-4g2ql
kubectl describe pod kubia-4g2ql -o yaml
docker cp ~/code/net_switch brian:/src/net_switch
docker restart brian
docker logs -f brian --tail 100
cd ~/code/net_switch/logs
multitail -r 1 -i *.log
rm *.tsv
ps -a
killl 665
kill 665
htop
EOF