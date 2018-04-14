# Imagem base para criação de uma nova
FROM httpd
# MAINTAINER está deprecated, utilizar LABEL para definir metadatas para a imagem
LABEL versio="1.0.0" description="Minha primeira imagem com Apache" maintainer="Matheus Castiglioni<matheushcastiglioni@gmail.com"

# Copiar o arquivo index.html para o diretório informado
COPY ./index.html /usr/local/apache2/htdocs/
# Documentar para quem utilizar a imagem que a porta 80 pode ser utilizada
EXPOSE 80
# Diretório padrão ao acessar o container (Diretório de trabalho)
WORKDIR /usr/local/apache2/htdocs/