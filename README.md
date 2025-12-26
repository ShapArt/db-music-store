# IS «Музыкальный магазин» — БД (учебный проект)

[![CI](https://github.com/ShapArt/db-music-store/actions/workflows/ci.yml/badge.svg)](https://github.com/ShapArt/db-music-store/actions/workflows/ci.yml) [![license](https://img.shields.io/github/license/ShapArt/db-music-store)](https://github.com/ShapArt/db-music-store/blob/main/LICENSE)






<table>


<tr>


<td><b>✨ Что умеет</b><br/>Короткий список возможностей, ориентированных на ценность.</td>


<td><b>🧠 Технологии</b><br/>Стек, ключевые решения, нюансы безопасности.</td>


<td><b>🖼️ Демо</b><br/>Скриншот/гиф или ссылка на Pages.</td>


</tr>


</table>





> [!TIP]


> Репозиторий оформлен по правилам: Conventional Commits, SemVer, CHANGELOG, SECURITY policy и CI.


> Секреты — только через `.env`/секреты репозитория.








<p align="left">


  <img alt="build" src="https://img.shields.io/github/actions/workflow/status/ShapArt/db-music-store/ci.yml?label=CI&logo=githubactions">


  <img alt="license" src="https://img.shields.io/github/license/ShapArt/db-music-store">


  <img alt="last commit" src="https://img.shields.io/github/last-commit/ShapArt/db-music-store">


  <img alt="issues" src="https://img.shields.io/github/issues/ShapArt/db-music-store">


  <img alt="stars" src="https://img.shields.io/github/stars/ShapArt/db-music-store?style=social">


</p>








Короткая демо-реализация: схема PostgreSQL + docker-compose + документация.


Исходный отчёт см. в `docs/source.docx` (содержит описание ПД/диаграммы).





## Быстрый старт


```bash


docker compose up -d


# psql: postgres://postgres:postgres@localhost:5432/music_store


# pgAdmin: http://localhost:5050 (admin@local / admin)


```





## Структура


- `sql/schema.sql` — сущности: products, customers, orders, order_items, suppliers, returns


- `docker-compose.yml` — Postgres + pgAdmin


- `docs/` — исходная работа + краткие конспекты





## Архитектура





*Заполнить по мере развития проекта.*








## Конфигурация





*Заполнить по мере развития проекта.*








## Тесты





*Заполнить по мере развития проекта.*








## Roadmap





*Заполнить по мере развития проекта.*
