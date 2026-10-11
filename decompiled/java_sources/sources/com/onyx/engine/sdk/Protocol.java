package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public enum Protocol {
    UNKNOWN,
    HTTP,
    MAIL,
    LOCAL_FILE,
    SOUND,
    DICT,
    CLICK;

    public static Protocol valueOf(int i) {
        for (Protocol protocol : values()) {
            if (protocol.ordinal() == i) {
                return protocol;
            }
        }
        return UNKNOWN;
    }
}
