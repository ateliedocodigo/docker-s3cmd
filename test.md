docker run --rm -e AWS_ACCESS_KEY_ID=JQC16XQ0HO1ESM405MM8 \
                -e AWS_SECRET_ACCESS_KEY=UAoROicWHeFY2iV8MI3dRJ0KFv6MvhqOv8REPFwW \
                -v $PWD:/app \
                -w /app \
                -it rbsdev/s3cmd:develop \
                #s3cmd ls #--host us-east-1.aziondcs.net

$ echo "[default] " > $HOME/.s3cfg && echo "host_base = us-east-1.aziondcs.net" >> $HOME/.s3cfg && echo "host_bucket = %(bucket)s.us-east-1.aziondcs.net" >> $HOME/.s3cfg

$ s3cmd put --recursive --no-mime-magic build/client/ s3://gauchazh-statics-production/static/




                echo "[default] " > $HOME/.s3cfg && echo "host_base = us-east-1.aziondcs.net" >> $HOME/.s3cfg && echo "host_bucket = %(bucket)s.us-east-1.aziondcs.net" >> $HOME/.s3cfg