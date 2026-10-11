package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class hbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f72052a;

    /* renamed from: b */
    public final /* synthetic */ String f72053b;

    public hbm(ClassLoader classLoader, String str) {
        this.f72052a = classLoader;
        this.f72053b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f72052a;
        String str = this.f72053b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
