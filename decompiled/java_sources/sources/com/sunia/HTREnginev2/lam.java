package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class lam implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f76288a;

    public lam(String str) {
        this.f76288a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f76288a);
    }
}
