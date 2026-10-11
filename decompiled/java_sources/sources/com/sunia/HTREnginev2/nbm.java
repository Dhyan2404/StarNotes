package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class nbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f78499a;

    public nbm(String str) {
        this.f78499a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f78499a);
    }
}
