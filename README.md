# service_architecture_hw5

# Быстрая установка Istio 
1. [x] istioctl install --set profile=demo -y
2. [x] kubectl apply -f apigw/istio.yaml

# Инструкция по запуску сервисов
1. Запуск приложения **make k8s-deploy**
2. [x] Получить адрес profile-service
      minikube service profile-service --url -n otus-msa-hw5
5. [x] Получить адрес auth-service
   minikube service auth-service --url -n otus-msa-hw5
2. В файле postman/collection.json установить порты для переменных profileUrl и authUrl
3. Запуск выполнения коллекции postman **make newman**
3. Удаление используемых ресурсов **make k8s-remove**


# Настройка роутинга, аутентификации и авторизации
1. [x] Проверить состояние Istio:
   kubectl get all -n istio-system -l istio.io/rev=default
2. [x] Настроить routes:
   kubectl apply -f apigw/routes.yaml
5. [x] Применить настройки аутентификации:
   kubectl apply -f apigw/auth.yaml
6. [x] Применить настройки авторизации
   kubectl apply -f apigw/jwt_auth.yaml

