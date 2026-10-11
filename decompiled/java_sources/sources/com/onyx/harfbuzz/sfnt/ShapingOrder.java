package com.onyx.harfbuzz.sfnt;

/* loaded from: classes9.dex */
public enum ShapingOrder {
    FORWARD(0),
    BACKWARD(1);

    final int value;

    ShapingOrder(int i) {
        this.value = i;
    }

    public static ShapingOrder valueOf(int i) {
        for (ShapingOrder shapingOrder : values()) {
            if (shapingOrder.value == i) {
                return shapingOrder;
            }
        }
        return null;
    }
}
