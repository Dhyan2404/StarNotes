package org.apache.commons.logging;

import java.security.PrivilegedAction;

/* renamed from: org.apache.commons.logging.b */
/* loaded from: classes12.dex */
public final class C19015b implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f107698a;

    /* renamed from: b */
    public final /* synthetic */ ClassLoader f107699b;

    public C19015b(String str, ClassLoader classLoader) {
        this.f107698a = str;
        this.f107699b = classLoader;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return LogFactory.createFactory(this.f107698a, this.f107699b);
    }
}
