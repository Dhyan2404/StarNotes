package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class ncm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f78526a;

    public ncm(File file) {
        this.f78526a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f78526a.exists() ? Boolean.TRUE : Boolean.FALSE;
    }
}
