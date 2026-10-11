package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class cbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f66676a;

    public cbm(ClassLoader classLoader) {
        this.f66676a = classLoader;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader;
        try {
            classLoader = this.f66676a.getParent();
        } catch (SecurityException unused) {
            classLoader = null;
        }
        if (classLoader == this.f66676a) {
            return null;
        }
        return classLoader;
    }
}
