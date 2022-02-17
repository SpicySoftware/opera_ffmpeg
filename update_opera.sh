#!/bin/bash

wget $1
filename=$(basename "$1")
archive_name="data.tar.xz"
opera_install_dir="/usr/lib/x86_64-linux-gnu/opera"

ar x $filename $archive_name
tar -xJf $archive_name --strip-components=4 ./usr/lib/chromium-browser/libffmpeg.so

mv $opera_install_dir/libffmpeg.so $opera_install_dir/libffmpeg.so_old
cp libffmpeg.so $opera_install_dir/


rm $filename $archive_name libffmpeg.so
