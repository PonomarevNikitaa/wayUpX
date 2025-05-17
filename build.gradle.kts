plugins {
    kotlin("jvm") version "2.1.10"
    id("application") // добавили нужный плагин
}

group = "org.example"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    implementation("org.telegram:telegrambots:6.5.0")
    implementation("ch.qos.logback:logback-classic:1.4.11")
    implementation("org.telegram:telegrambots-spring-boot-starter:5.3.0")

}

application {
    mainClass.set("MainKt") // Указываем, с какого файла запускать main()
}

kotlin {
    jvmToolchain(22)
}
