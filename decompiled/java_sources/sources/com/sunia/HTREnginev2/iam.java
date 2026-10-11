package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class iam implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f73056a;

    public iam(String str) {
        this.f73056a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f73056a);
    }
}
