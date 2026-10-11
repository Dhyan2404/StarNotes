package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes12.dex */
public class dcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f67731a;

    /* renamed from: b */
    public final /* synthetic */ String f67732b;

    public dcm(ClassLoader classLoader, String str) {
        this.f67731a = classLoader;
        this.f67732b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f67731a;
        String str = this.f67732b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
