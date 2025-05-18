# 1. Используем базовый образ с JDK
FROM openjdk:17-jdk-slim

# 2. Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# 3. Копируем весь проект внутрь контейнера
COPY . .

# 4. Делаем gradlew исполняемым
RUN chmod +x ./gradlew

# 5. Собираем проект
RUN ./gradlew build --no-daemon

# 6. Запускаем готовый JAR
CMD ["java", "-jar", "build/libs/WayUpX.jar"]
