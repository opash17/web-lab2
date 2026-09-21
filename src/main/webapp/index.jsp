<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Лабораторная работа № 2 | Опаш А.Б.</title>
  <style>
    body { margin: 0; background: #f1f4f8; color: #182c42;
      font: 18px/1.6 "Segoe UI", sans-serif; }
    main { max-width: 760px; margin: 70px auto; padding: 40px;
      background: white; border-top: 5px solid #2463aa; }
    h1 { font-size: 34px; margin: 10px 0; }
    h2 { font-size: 23px; font-weight: 500; }
    .label { color: #2463aa; font-size: 15px; }
    dt { font-weight: 600; margin-top: 12px; }
    dd { margin: 0; }
    footer { border-top: 1px solid #dbe2eb; padding-top: 16px; }
  </style>
</head>
<body>
<main>
  <div class="label">ВЕБ-ПРОГРАММИРОВАНИЕ · ЛАБОРАТОРНАЯ № 2</div>
  <h1>Hello World!</h1>
  <h2>Создание web-проекта с использованием системы сборки Maven</h2>
  <dl>
    <dt>Выполнил</dt><dd>Опаш А.Б., группа 4314</dd>
    <dt>Проект</dt><dd>lab2-webapp · maven-archetype-webapp 1.4</dd>
    <dt>Сервер</dt><dd><%= application.getServerInfo() %></dd>
    <dt>Контекст приложения</dt><dd><%= request.getContextPath() %></dd>
  </dl>
  <footer>JSP-страница обработана сервером Apache Tomcat.</footer>
</main>
</body>
</html>
