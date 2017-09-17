FROM python:2                       

WORKDIR /app                        
RUN mkdir /app                    
COPY . /app                           

RUN pip install django flake8 psycopg2 \
    && chmod +x boot.sh
         
EXPOSE 8000                         