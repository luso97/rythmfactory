package com.example.rythmfactory.controllers

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class HealthCheckController {
    @GetMapping("/")
    fun helloKotlin(): String {
        return "hello world"
    }
}