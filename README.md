# Waste tracing app

WebApp con Jakarta y Docker basada en el repositorio de la MC Fernanda Ochoa.

https://github.com/FernandaOchoa/JakartaDocker


<h3>Despliegue de Proyecto en Azure</h3>
Para desplegar el proyecto en Azure creamos una máquina virtual(VM)
<br>
Azure automaticamente nos creó los recurcusos necesarios para conectarnos a la VM

![imagen](./azure/azure.png)

En la VM se tuvo que instalar docker y se hizo un ``` git clone ``` de nuestro repositorio

Con docker compose se desplegó la aplicación web

![imagen](./azure/docker%20azure.png)

Para poder conectarse a la aplicación web se tiene que abrir los puerto necesarios, en este caso se permitió la conexión con el puerto 8080

![imagen](./azure/puertos.png)

Y con la IP pública proporcionada por Azure nos pudimos conectar a nuestra aplicación

![imagen](./azure/pagina.png)