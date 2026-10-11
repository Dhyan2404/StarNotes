package com.google.firebase.installations.time;

/* loaded from: classes6.dex */
public class SystemClock implements Clock {

    /* renamed from: a */
    public static SystemClock f36022a;

    public static SystemClock getInstance() {
        if (f36022a == null) {
            f36022a = new SystemClock();
        }
        return f36022a;
    }

    @Override // com.google.firebase.installations.time.Clock
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }
}
