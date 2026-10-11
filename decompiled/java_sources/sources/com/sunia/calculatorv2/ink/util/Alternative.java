package com.sunia.calculatorv2.ink.util;

import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class Alternative<T> {
    private final double confidence;
    private final T content;

    public Alternative(T t, double d) {
        this.content = t;
        this.confidence = d;
    }

    public double getConfidence() {
        return this.confidence;
    }

    public T getContent() {
        return this.content;
    }

    public String toString() {
        return "Alternative{content='" + this.content + Chars.QUOTE + ", confidence=" + this.confidence + '}';
    }
}
