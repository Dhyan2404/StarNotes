package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class vcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f87370a;

    public vcm(File file) {
        this.f87370a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return new Long(this.f87370a.lastModified());
    }
}
