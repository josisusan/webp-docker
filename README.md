# webp-docker

## Run container of the image:
```bash
$ docker run -it --rm -v ./images:/images josisusan/webp bash
```

Mount the volume (directory) for the images (`./images` folder in above example) to be converted.

## Inside tty run following command:
man page:
```
cwebp --help
```

convert image to webp:
```
cwebp -q 50 <source_image_path> -o <destination_image_path>
```
