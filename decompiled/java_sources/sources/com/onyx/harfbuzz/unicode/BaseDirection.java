package com.onyx.harfbuzz.unicode;

/* loaded from: classes9.dex */
public enum BaseDirection {
    LEFT_TO_RIGHT(0),
    RIGHT_TO_LEFT(1),
    DEFAULT_LEFT_TO_RIGHT(254),
    DEFAULT_RIGHT_TO_LEFT(253);

    final int value;

    BaseDirection(int i) {
        this.value = i;
    }
}
