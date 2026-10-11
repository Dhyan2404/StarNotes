package org.apache.commons.logging.impl;

import java.security.PrivilegedAction;

/* renamed from: org.apache.commons.logging.impl.c */
/* loaded from: classes12.dex */
public class C19025c implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f107735a;

    /* renamed from: b */
    public final /* synthetic */ LogFactoryImpl f107736b;

    public C19025c(LogFactoryImpl logFactoryImpl, ClassLoader classLoader) {
        this.f107736b = logFactoryImpl;
        this.f107735a = classLoader;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f107735a.getParent();
    }
}
