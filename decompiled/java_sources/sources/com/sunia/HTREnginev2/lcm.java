package com.sunia.HTREnginev2;

import java.io.File;
import java.security.PrivilegedAction;

/* loaded from: classes12.dex */
public class lcm implements PrivilegedAction {

    /* renamed from: a */
    public final /* synthetic */ File f76349a;

    public lcm(File file) {
        this.f76349a = file;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return this.f76349a.exists() ? Boolean.TRUE : Boolean.FALSE;
    }
}
