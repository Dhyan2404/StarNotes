package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class obm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f79544a;

    public obm(String str) {
        this.f79544a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f79544a);
    }
}
