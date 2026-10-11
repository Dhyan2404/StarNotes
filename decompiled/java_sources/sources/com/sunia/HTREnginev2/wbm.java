package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class wbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f88446a;

    /* renamed from: b */
    public final /* synthetic */ String f88447b;

    public wbm(ClassLoader classLoader, String str) {
        this.f88446a = classLoader;
        this.f88447b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f88446a;
        String str = this.f88447b;
        return classLoader == null ? ClassLoader.getSystemResource(str) : classLoader.getResource(str);
    }
}
