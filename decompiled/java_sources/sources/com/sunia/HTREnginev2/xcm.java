package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class xcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f89537a;

    public xcm(File file) {
        this.f89537a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return new Long(this.f89537a.lastModified());
    }
}
