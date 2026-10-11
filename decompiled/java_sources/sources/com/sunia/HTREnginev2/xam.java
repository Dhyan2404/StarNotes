package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes5.dex */
public class xam implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ File f89443a;

    public xam(File file) {
        this.f89443a = file;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws FileNotFoundException {
        return new FileInputStream(this.f89443a);
    }
}
