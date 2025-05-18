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

tasks.withType<Jar> {
    manifest {
        attributes["Main-Class"] = "MainKt" // имя главного класса (или свой)
    }
    archiveFileName.set("WayUpX.jar") // итоговое имя файла
    duplicatesStrategy = DuplicatesStrategy.EXCLUDE
    from(sourceSets.main.get().output)
    dependsOn(configurations.runtimeClasspath)
    from({
        configurations.runtimeClasspath.get().filter { it.name.endsWith("jar") }.map { zipTree(it) }
    })
}
