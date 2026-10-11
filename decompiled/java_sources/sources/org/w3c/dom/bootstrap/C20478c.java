package org.w3c.dom.bootstrap;

import java.security.PrivilegedAction;

/* renamed from: org.w3c.dom.bootstrap.c */
/* loaded from: classes16.dex */
public class C20478c implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f116074a;

    public C20478c(String str) {
        this.f116074a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f116074a);
    }
}
