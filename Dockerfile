FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Penyesuaian tampilan tanpa perlu edit index.html besar-besaran.
# Membuat headline hero lebih ramping.
RUN sed -i 's/font-size: clamp(42px, 6vw, 78px);/font-size: clamp(42px, 5.7vw, 72px);/g' /usr/share/nginx/html/index.html \
  && sed -i 's/line-height: .92;/line-height: .96;/g' /usr/share/nginx/html/index.html \
  && sed -i 's/letter-spacing: -.07em;/letter-spacing: -.045em;/g' /usr/share/nginx/html/index.html \
  && sed -i 's/font-weight: 1000;/font-weight: 800;/g' /usr/share/nginx/html/index.html

EXPOSE 80
