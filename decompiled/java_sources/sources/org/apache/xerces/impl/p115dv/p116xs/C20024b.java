package org.apache.xerces.impl.p115dv.p116xs;

import java.security.PrivilegedAction;

/* renamed from: org.apache.xerces.impl.dv.xs.b */
/* loaded from: classes13.dex */
public class C20024b implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public Object run() {
        try {
            return Boolean.getBoolean("org.apache.xerces.impl.dv.xs.useCodePointCountForStringLength") ? Boolean.TRUE : Boolean.FALSE;
        } catch (SecurityException unused) {
            return Boolean.FALSE;
        }
    }
}
