package com.example;

import java.lang.annotation.*;

@Retention(RetentionPolicy.CLASS)      // CLASS is enough for the shrinker
@Target({ElementType.FIELD, ElementType.TYPE})    // allow on fields (and class, if you want)
public @interface JniStruct {}

