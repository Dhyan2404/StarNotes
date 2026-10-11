package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class ebm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f68790a;

    public ebm(String str) {
        this.f68790a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f68790a);
    }
}
