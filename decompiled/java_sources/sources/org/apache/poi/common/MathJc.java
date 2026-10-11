package org.apache.poi.common;

import com.sunia.HTREnginev2.gon;

/* loaded from: classes12.dex */
public enum MathJc {
    LEFT("left"),
    RIGHT(gon.f71288n0),
    CENTER("center"),
    CENTER_GROUP("centerGroup");

    private String value;

    MathJc(String str) {
        this.value = str;
    }

    public static MathJc from(String str) {
        for (MathJc mathJc : values()) {
            if (mathJc.value.equals(str)) {
                return mathJc;
            }
        }
        return LEFT;
    }

    public String getValue() {
        return this.value;
    }
}
