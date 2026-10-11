package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class ram implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f82927a;

    public ram(String str) {
        this.f82927a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f82927a);
    }
}
