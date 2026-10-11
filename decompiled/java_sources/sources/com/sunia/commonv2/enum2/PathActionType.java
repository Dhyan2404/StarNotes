package com.sunia.commonv2.enum2;

/* loaded from: classes10.dex */
public enum PathActionType {
    PATH(0),
    NAI(1),
    NAI_V2(2),
    REMOVE(3),
    MOVE(4);

    int value;

    PathActionType(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }
}
