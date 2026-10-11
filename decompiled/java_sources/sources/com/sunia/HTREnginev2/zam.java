package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes12.dex */
public class zam implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f91568a;

    public zam(ClassLoader classLoader) {
        this.f91568a = classLoader;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader;
        try {
            classLoader = this.f91568a.getParent();
        } catch (SecurityException unused) {
            classLoader = null;
        }
        if (classLoader == this.f91568a) {
            return null;
        }
        return classLoader;
    }
}
