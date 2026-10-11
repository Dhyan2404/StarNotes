package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class tam implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f85134a;

    public tam(ClassLoader classLoader) {
        this.f85134a = classLoader;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader;
        try {
            classLoader = this.f85134a.getParent();
        } catch (SecurityException unused) {
            classLoader = null;
        }
        if (classLoader == this.f85134a) {
            return null;
        }
        return classLoader;
    }
}
