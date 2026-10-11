package org.apache.commons.logging;

import java.security.PrivilegedAction;

/* renamed from: org.apache.commons.logging.f */
/* loaded from: classes12.dex */
public final class C19019f implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f107705a;

    /* renamed from: b */
    public final /* synthetic */ String f107706b;

    public C19019f(String str, String str2) {
        this.f107705a = str;
        this.f107706b = str2;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f107705a, this.f107706b);
    }
}
