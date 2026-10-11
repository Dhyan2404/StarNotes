package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class mam implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f77408a;

    public mam(String str) {
        this.f77408a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f77408a);
    }
}
