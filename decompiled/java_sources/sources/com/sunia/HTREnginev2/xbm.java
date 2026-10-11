package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes12.dex */
public class xbm implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ File f89479a;

    public xbm(File file) {
        this.f89479a = file;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws FileNotFoundException {
        return new FileInputStream(this.f89479a);
    }
}
