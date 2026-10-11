package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class gam implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public Object run() {
        try {
            return ClassLoader.getSystemClassLoader();
        } catch (SecurityException unused) {
            return null;
        }
    }
}
