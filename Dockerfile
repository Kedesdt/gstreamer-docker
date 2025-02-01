# Use uma imagem base do Debian
FROM debian:latest

# Atualize o sistema e instale o GStreamer e o Python
RUN apt-get update && apt-get install -y \
    gstreamer1.0-tools \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    python3 python3-pip

# Defina o diretório de trabalho
WORKDIR /app

# Copie todos os arquivos para o contêiner
COPY . .

# Torne o script executável
RUN chmod +x /app/script.sh

# Exponha as portas 10000 e 10001
EXPOSE 10000 
EXPOSE 10001

# Defina o entrypoint para o script (descomentado se necessário)
ENTRYPOINT ["/app/script.sh"]

# Comando para rodar o GStreamer (descomentado se necessário)
# CMD ["gst-launch-1.0", "--version"]
