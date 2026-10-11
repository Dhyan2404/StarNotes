package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class sam implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f83961a;

    public sam(ClassLoader classLoader) {
        this.f83961a = classLoader;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader;
        try {
            classLoader = this.f83961a.getParent();
        } catch (SecurityException unused) {
            classLoader = null;
        }
        if (classLoader == this.f83961a) {
            return null;
        }
        return classLoader;
    }
}
