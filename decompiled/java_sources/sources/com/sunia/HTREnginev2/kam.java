package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class kam implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f75240a;

    public kam(String str) {
        this.f75240a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f75240a);
    }
}
