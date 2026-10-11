package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes13.dex */
public class ybm implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ File f90571a;

    public ybm(File file) {
        this.f90571a = file;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws FileNotFoundException {
        return new FileInputStream(this.f90571a);
    }
}
