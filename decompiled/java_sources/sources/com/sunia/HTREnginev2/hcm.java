package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class hcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f72082a;

    /* renamed from: b */
    public final /* synthetic */ String f72083b;

    public hcm(ClassLoader classLoader, String str) {
        this.f72082a = classLoader;
        this.f72083b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f72082a;
        String str = this.f72083b;
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }
}
