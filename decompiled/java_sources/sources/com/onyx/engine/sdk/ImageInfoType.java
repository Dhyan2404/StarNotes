package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public enum ImageInfoType {
    NORMAL,
    VIDEO,
    AUDIO;

    public static ImageInfoType valueOf(int i) {
        for (ImageInfoType imageInfoType : values()) {
            if (imageInfoType.ordinal() == i) {
                return imageInfoType;
            }
        }
        return NORMAL;
    }
}
