package org.w3c.dom.bootstrap;

import java.security.PrivilegedAction;

/* renamed from: org.w3c.dom.bootstrap.d */
/* loaded from: classes16.dex */
public class C20479d implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f116075a;

    /* renamed from: b */
    public final /* synthetic */ String f116076b;

    public C20479d(ClassLoader classLoader, String str) {
        this.f116075a = classLoader;
        this.f116076b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f116075a;
        String str = this.f116076b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
