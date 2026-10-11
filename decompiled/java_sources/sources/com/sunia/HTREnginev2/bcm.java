package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class bcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f65634a;

    public bcm(File file) {
        this.f65634a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f65634a.exists() ? Boolean.TRUE : Boolean.FALSE;
    }
}
