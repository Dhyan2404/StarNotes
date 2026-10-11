package org.apache.commons.logging.impl;

import java.security.PrivilegedAction;

/* renamed from: org.apache.commons.logging.impl.d */
/* loaded from: classes12.dex */
public final class C19026d implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f107737a;

    public C19026d(String str) {
        this.f107737a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader contextClassLoader;
        contextClassLoader = SimpleLog.getContextClassLoader();
        return contextClassLoader != null ? contextClassLoader.getResourceAsStream(this.f107737a) : ClassLoader.getSystemResourceAsStream(this.f107737a);
    }
}
