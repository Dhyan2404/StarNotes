package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class kcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f75292a;

    /* renamed from: b */
    public final /* synthetic */ String f75293b;

    public kcm(ClassLoader classLoader, String str) {
        this.f75292a = classLoader;
        this.f75293b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f75292a;
        String str = this.f75293b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
