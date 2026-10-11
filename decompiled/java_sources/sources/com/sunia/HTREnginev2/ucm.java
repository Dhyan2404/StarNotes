package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class ucm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f86362a;

    public ucm(File file) {
        this.f86362a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return new Long(this.f86362a.lastModified());
    }
}
