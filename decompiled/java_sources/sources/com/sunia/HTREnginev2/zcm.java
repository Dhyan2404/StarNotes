package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class zcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f91616a;

    public zcm(File file) {
        this.f91616a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f91616a.exists() ? Boolean.TRUE : Boolean.FALSE;
    }
}
