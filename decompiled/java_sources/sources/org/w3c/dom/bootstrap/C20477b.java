package org.w3c.dom.bootstrap;

import java.security.PrivilegedAction;

/* renamed from: org.w3c.dom.bootstrap.b */
/* loaded from: classes16.dex */
public class C20477b implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public Object run() {
        try {
            return Thread.currentThread().getContextClassLoader();
        } catch (SecurityException unused) {
            return null;
        }
    }
}
