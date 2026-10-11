package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class jam implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f74111a;

    public jam(String str) {
        this.f74111a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f74111a);
    }
}
