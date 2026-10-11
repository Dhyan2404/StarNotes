package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class mbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f77442a;

    public mbm(String str) {
        this.f77442a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f77442a);
    }
}
