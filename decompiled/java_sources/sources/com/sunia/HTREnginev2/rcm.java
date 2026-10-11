package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class rcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f82980a;

    /* renamed from: b */
    public final /* synthetic */ String f82981b;

    public rcm(ClassLoader classLoader, String str) {
        this.f82980a = classLoader;
        this.f82981b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f82980a;
        String str = this.f82981b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
