package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class abm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f64528a;

    public abm(ClassLoader classLoader) {
        this.f64528a = classLoader;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader;
        try {
            classLoader = this.f64528a.getParent();
        } catch (SecurityException unused) {
            classLoader = null;
        }
        if (classLoader == this.f64528a) {
            return null;
        }
        return classLoader;
    }
}
