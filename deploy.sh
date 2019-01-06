#!/bin/bash
# Получение кода, установка зависимостей через bundler и запуск приложения.
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d