package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class mcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f77467a;

    public mcm(File file) {
        this.f77467a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f77467a.exists() ? Boolean.TRUE : Boolean.FALSE;
    }
}
