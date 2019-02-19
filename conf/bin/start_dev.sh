#!/usr/bin/env bash
cd $REYNIR_DIR

pip uninstall -y reynir tokenizer reynir-correct

cd ../Tokenizer && pypy3 setup.py develop
cd ../ReynirPackage && pypy3 setup.py develop
cd ../ReynirCorrect && pypy3 setup.py develop

#cd ../ReynirPackage
#git lfs track "*.compressed"
#git lfs track "*.bin"
#git add .gitattributes

#cd src/reynir/resources
#mkdir /root/.ssh
#touch /root/.ssh/known_hosts
#ssh-keyscan -t rsa github.com > /root/.ssh/known_hosts

#git checkout ord.compressed
#git checkout *.bin

cd $REYNIR_DIR
pypy3 scraperinit.py

gunicorn main:app \
--workers 3 \
--bind 0.0.0.0:5000 \
--reload          
