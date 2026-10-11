package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes5.dex */
public class sbm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f83993a;

    public sbm(File file) {
        this.f83993a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f83993a.exists() ? Boolean.TRUE : Boolean.FALSE;
    }
}
