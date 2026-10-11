package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes12.dex */
public class lbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f76318a;

    public lbm(String str) {
        this.f76318a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f76318a);
    }
}
