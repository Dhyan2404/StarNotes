package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class ecm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f68818a;

    /* renamed from: b */
    public final /* synthetic */ String f68819b;

    public ecm(ClassLoader classLoader, String str) {
        this.f68818a = classLoader;
        this.f68819b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f68818a;
        String str = this.f68819b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
