# 1. Используем базовый образ с JDK
FROM openjdk:17-jdk-slim

# 2. Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# 3. Копируем весь проект внутрь контейнера
COPY . .

# 4. Скачиваем зависимости и собираем проект
RUN ./gradlew build --no-daemon

# 5. Запускаем готовый JAR
CMD ["java", "-jar", "build/libs/WayUpX.jar"]
