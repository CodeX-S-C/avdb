#!/bin/sh
# Code can only be used by CodeX
rm -fr db.txt
curl https://bazaar.abuse.ch/export/txt/sha256/full/ --output dump.zip
unzip -o dump.zip
rm -fr dump.zip # Remove the French language from zip
mv full_sha256.txt db.txt # I feel like Mr. Crabs
