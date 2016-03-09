rsync -azP -e "ssh -p 24" * "$ALPHASHURO_USERNAME@alphashuro.com:public_html/"
git push
