package org.apache.commons.logging.impl;

import java.security.PrivilegedAction;

/* renamed from: org.apache.commons.logging.impl.b */
/* loaded from: classes12.dex */
public final class C19024b implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f107733a;

    /* renamed from: b */
    public final /* synthetic */ String f107734b;

    public C19024b(String str, String str2) {
        this.f107733a = str;
        this.f107734b = str2;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f107733a, this.f107734b);
    }
}
