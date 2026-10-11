package com.sunia.HTREnginev2;

import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class fbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ String f69854a;

    public fbm(String str) {
        this.f69854a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f69854a);
    }
}
