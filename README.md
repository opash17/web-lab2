# Лабораторная работа № 2

Тема: создание web-проекта с использованием системы сборки Maven.
Проект создан на основе архетипа `org.apache.maven.archetypes:maven-archetype-webapp:1.4`.

## Требования

- JDK 17 или новее (проверено: JDK 24.0.2; Eclipse использует Java 21).
- Apache Maven 3.9.x.
- Apache Tomcat 9.x (проверено: 9.0.121).

## Сборка

```shell
mvn clean install
```

Результат: `target/lab2-webapp.war`.
После сборки WAR и POM также появляются в локальном репозитории Maven.
Тесты в проект не добавлялись, поэтому Maven выводит `No tests to run`.

## Eclipse

1. File → Import → Maven → Existing Maven Projects.
2. Выбрать папку с `pom.xml` и нажать Finish.
3. Правой кнопкой по проекту → Run As → Maven install.
4. Убедиться в `BUILD SUCCESS` в Console.

## Развёртывание

1. Скопировать `target/lab2-webapp.war` в папку `webapps` Tomcat.
2. Запустить Tomcat из его каталога `bin` командой `startup.bat`.
   Переменная `JAVA_HOME` должна указывать на установленный JDK.
3. Открыть `http://localhost:8081/lab2-webapp/` для настроенного порта 8081.
   При стандартном порте Tomcat использовать `http://localhost:8080/lab2-webapp/`.
4. Для остановки выполнить `shutdown.bat` из каталога `bin` Tomcat.

Страница выводит Hello World!, автора, группу, версию Tomcat и контекст приложения.
Версия сервера и путь приложения подставляются с помощью JSP.

## Файлы

- `pom.xml` — настройки сборки, зависимость JUnit и плагины с комментариями.
- `src/main/webapp/index.jsp` — стартовая страница в UTF-8.
- `src/main/webapp/WEB-INF/web.xml` — настройки web-приложения из архетипа.

JUnit используется только для тестов (`scope test`) и в WAR не попадает.
Java-классов в проекте нет, поэтому папка `WEB-INF/classes` пустая.
JSP-страницу компилирует Tomcat при первом открытии.
В исходном архетипе уровень Java 7 заменён на `release=17`, JUnit 4.11 обновлён до 4.13.2.
Версии плагинов архетипа сохранены для соответствия методичке.

## Проверки

- Maven install: BUILD SUCCESS.
- WAR открыт в архиваторе; проверены JSP, дескриптор и Maven-метаданные.
- GET `/lab2-webapp/`: HTTP 200, русский текст отображается без ошибок, значения JSP подставлены.

Документация: [жизненный цикл Maven](https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html).

## Отчёт

[Отчёт по лабораторной работе № 2 (PDF)](docs/Opash_4314_lab2.pdf)


[Отчёт в Word](docs/Opash_4314_lab2.docx)
