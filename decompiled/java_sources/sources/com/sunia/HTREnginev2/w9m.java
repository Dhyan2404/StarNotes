package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class w9m implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public Object run() {
        try {
            return Thread.currentThread().getContextClassLoader();
        } catch (SecurityException unused) {
            return null;
        }
    }
}
