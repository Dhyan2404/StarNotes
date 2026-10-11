package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class vbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f87343a;

    /* renamed from: b */
    public final /* synthetic */ String f87344b;

    public vbm(ClassLoader classLoader, String str) {
        this.f87343a = classLoader;
        this.f87344b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f87343a;
        String str = this.f87344b;
        return classLoader == null ? ClassLoader.getSystemResource(str) : classLoader.getResource(str);
    }
}
