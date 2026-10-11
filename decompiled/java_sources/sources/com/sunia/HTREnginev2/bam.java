package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes12.dex */
public class bam implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public Object run() {
        try {
            return Thread.currentThread().getContextClassLoader();
        } catch (SecurityException unused) {
            return null;
        }
    }
}
