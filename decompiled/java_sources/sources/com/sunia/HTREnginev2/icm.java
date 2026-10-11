package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class icm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f73130a;

    /* renamed from: b */
    public final /* synthetic */ String f73131b;

    public icm(ClassLoader classLoader, String str) {
        this.f73130a = classLoader;
        this.f73131b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f73130a;
        String str = this.f73131b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
