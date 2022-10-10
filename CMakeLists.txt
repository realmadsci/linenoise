cmake_minimum_required(VERSION 3.23)

project(linenoise LANGUAGES C)

add_library(linenoise linenoise.c stringbuf.c utf8.c)
target_include_directories(linenoise PUBLIC "${PROJECT_SOURCE_DIR}")
add_library(linenoise::linenoise ALIAS linenoise)

