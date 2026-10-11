package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class ocm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f79575a;

    public ocm(File file) {
        this.f79575a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f79575a.exists() ? Boolean.TRUE : Boolean.FALSE;
    }
}
