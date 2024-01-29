#memakai image node versi 14
FROM node:14-alpine
#mengatur direktori kerja
WORKDIR /app
#menyalin semua file ke dalam tempat kerja
COPY . /app/

ENV NODE_ENV=production DB_HOST=item-db
#melakukan install aplikasi
RUN npm install --production --unsafe-perm && npm run build
#mengatur port aplikasi 
EXPOSE 8080
#perintah yang dilakukan ketika container mulai awal
CMD ["npm", "start"]