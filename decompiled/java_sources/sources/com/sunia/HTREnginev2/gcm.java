package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class gcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f70912a;

    /* renamed from: b */
    public final /* synthetic */ String f70913b;

    public gcm(ClassLoader classLoader, String str) {
        this.f70912a = classLoader;
        this.f70913b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f70912a;
        String str = this.f70913b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
