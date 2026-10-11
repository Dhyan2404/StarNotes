package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class bbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f65608a;

    public bbm(ClassLoader classLoader) {
        this.f65608a = classLoader;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader;
        try {
            classLoader = this.f65608a.getParent();
        } catch (SecurityException unused) {
            classLoader = null;
        }
        if (classLoader == this.f65608a) {
            return null;
        }
        return classLoader;
    }
}
