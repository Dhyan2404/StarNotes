package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class pbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f80641a;

    /* renamed from: b */
    public final /* synthetic */ String f80642b;

    public pbm(ClassLoader classLoader, String str) {
        this.f80641a = classLoader;
        this.f80642b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f80641a;
        String str = this.f80642b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
