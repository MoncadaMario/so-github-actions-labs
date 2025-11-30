FROM node:20-alpine

WORKDIR /app

CMD ["node", "-e", "console.log('Hola desde el contenedor'); console.log('ENV:', process.env.DEMO_VAR)"]
