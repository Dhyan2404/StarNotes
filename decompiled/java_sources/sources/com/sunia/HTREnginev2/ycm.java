package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class ycm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f90596a;

    public ycm(File file) {
        this.f90596a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return new Long(this.f90596a.lastModified());
    }
}
