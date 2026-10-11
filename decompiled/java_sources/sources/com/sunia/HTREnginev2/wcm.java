package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class wcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f88500a;

    public wcm(File file) {
        this.f88500a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return new Long(this.f88500a.lastModified());
    }
}
