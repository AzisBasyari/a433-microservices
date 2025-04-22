# Menjalankan perintah untuk build image docker dari direktori folder ini agar sesuai untuk diupload ke Github Packages
docker build -t ghcr.io/azisbasyari/karsajobs-ui:latest .

# Menjalankan perintah untuk melakukan login ke Github Packages dengan menggunakan token yang diexport di terminal
echo $GITHUB_TOKEN | docker login ghcr.io -u azisbasyari --password-stdin

# Menjalankan perintah untuk mengupload image docker ke Github Packages
docker push ghcr.io/azisbasyari/karsajobs-ui:latest
