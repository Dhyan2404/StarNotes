package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class tbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f85161a;

    public tbm(File file) {
        this.f85161a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f85161a.exists() ? Boolean.TRUE : Boolean.FALSE;
    }
}
