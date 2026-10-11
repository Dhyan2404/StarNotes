package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes13.dex */
public class pcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f80671a;

    public pcm(File file) {
        this.f80671a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f80671a.exists() ? Boolean.TRUE : Boolean.FALSE;
    }
}
