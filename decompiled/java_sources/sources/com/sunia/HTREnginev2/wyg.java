package com.sunia.HTREnginev2;

import com.google.protobuf.GeneratedMessageLite;

/* loaded from: classes6.dex */
public class wyg implements ymj {

    /* renamed from: a */
    public static final wyg f89104a = new wyg();

    /* renamed from: c */
    public static wyg m58143c() {
        return f89104a;
    }

    @Override // com.sunia.HTREnginev2.ymj
    /* renamed from: a */
    public boolean mo30245a(Class<?> messageType) {
        return GeneratedMessageLite.class.isAssignableFrom(messageType);
    }

    @Override // com.sunia.HTREnginev2.ymj
    /* renamed from: b */
    public xmj mo30246b(Class<?> messageType) {
        if (!GeneratedMessageLite.class.isAssignableFrom(messageType)) {
            throw new IllegalArgumentException("Unsupported message type: " + messageType.getName());
        }
        try {
            return (xmj) GeneratedMessageLite.m29242l(messageType.asSubclass(GeneratedMessageLite.class)).m29247d();
        } catch (Exception e) {
            throw new RuntimeException("Unable to get message info for " + messageType.getName(), e);
        }
    }
}
