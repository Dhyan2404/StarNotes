package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class ibm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f73092a;

    /* renamed from: b */
    public final /* synthetic */ String f73093b;

    public ibm(ClassLoader classLoader, String str) {
        this.f73092a = classLoader;
        this.f73093b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f73092a;
        String str = this.f73093b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
