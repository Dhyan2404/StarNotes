package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class ubm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f86325a;

    public ubm(File file) {
        this.f86325a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f86325a.exists() ? Boolean.TRUE : Boolean.FALSE;
    }
}
