# use esse script na sua pasta home (/~)
cd Blog_hugo
hugo -t contrast-hugo
cd public
git add *
git commit -a -m "update via script"
git push
cd ..
git commit -a -m "update via script"
git push

