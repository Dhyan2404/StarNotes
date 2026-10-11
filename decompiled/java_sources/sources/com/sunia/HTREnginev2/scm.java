package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class scm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f84018a;

    public scm(File file) {
        this.f84018a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f84018a.exists() ? Boolean.TRUE : Boolean.FALSE;
    }
}
