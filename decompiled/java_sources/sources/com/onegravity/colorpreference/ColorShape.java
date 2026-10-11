package com.onegravity.colorpreference;

import java.io.Serializable;

/* loaded from: classes7.dex */
public enum ColorShape implements Serializable {
    CIRCLE(1),
    SQUARE(2);

    private final int value;

    ColorShape(int i) {
        this.value = i;
    }

    public static ColorShape getShape(int i) {
        if (i != 1 && i == 2) {
            return SQUARE;
        }
        return CIRCLE;
    }

    public int getValue() {
        return this.value;
    }
}
