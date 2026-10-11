package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes5.dex */
public class yam implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ File f90543a;

    public yam(File file) {
        this.f90543a = file;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws FileNotFoundException {
        return new FileInputStream(this.f90543a);
    }
}
