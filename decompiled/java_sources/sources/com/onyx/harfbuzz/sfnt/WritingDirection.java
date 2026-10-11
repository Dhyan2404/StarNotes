package com.onyx.harfbuzz.sfnt;

/* loaded from: classes9.dex */
public enum WritingDirection {
    LEFT_TO_RIGHT(0),
    RIGHT_TO_LEFT(1),
    TOP_TO_BOTTOM(2);

    final int value;

    WritingDirection(int i) {
        this.value = i;
    }

    public static WritingDirection valueOf(int i) {
        for (WritingDirection writingDirection : values()) {
            if (writingDirection.value == i) {
                return writingDirection;
            }
        }
        return null;
    }
}
