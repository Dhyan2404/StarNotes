package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class qcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f81907a;

    public qcm(File file) {
        this.f81907a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f81907a.exists() ? Boolean.TRUE : Boolean.FALSE;
    }
}
