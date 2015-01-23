# Update HHVM in your Cloud Foundry PHP Buildpack

Builds new HHVM binaries to be used for
https://github.com/cloudfoundry/php-buildpack


# Build

```
#takes a while (hours..)
docker build -t yourname/hhvm-for-cf
./cpFiles.sh


docker run -d --name hhvmcfnginx -v $(pwd):/var/www/web -p 9876:80 chregu/nginx

# or move hhvm-3.5.0.tar.gz* to a webserver

# go to your cf-php-build-pack dir

# replace/add the following to binaries/lucid/index-latest.json in your buildpack

#  "hhvm": {
#        "3.5.0": [
#            "http://localhost:9876/hhvm-3.5.0.tar.gz",
#            "http://localhost:9876/hhvm-3.5.0.tar.gz.sha1"
#        ]
#    }


bin/binaries zip --index binaries/lucid/index-latest.json

cf create-buildpack php_buildpack_hhvm_3_5 php_buildpack-offline-v3.0.3.zip 11

# or
#  cf update-buildpack php_buildpack_hhvm_3_5 -p php_buildpack-offline-v3.0.3.zip

# evt. rename it later with

# cf rename-buildpack php_buildpack_hhvm_3_5 php_buildpack_new

docker stop hhvmcfnginx && docker rm hhvmcfnginx

# done
```