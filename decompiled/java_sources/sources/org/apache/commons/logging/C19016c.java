package org.apache.commons.logging;

import java.security.PrivilegedAction;

/* renamed from: org.apache.commons.logging.c */
/* loaded from: classes12.dex */
public final class C19016c implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ ClassLoader f107700a;

    /* renamed from: b */
    public final /* synthetic */ String f107701b;

    public C19016c(ClassLoader classLoader, String str) {
        this.f107700a = classLoader;
        this.f107701b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f107700a;
        return classLoader != null ? classLoader.getResourceAsStream(this.f107701b) : ClassLoader.getSystemResourceAsStream(this.f107701b);
    }
}
