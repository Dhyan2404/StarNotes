package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes13.dex */
public class qbm implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ File f81874a;

    public qbm(File file) {
        this.f81874a = file;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws FileNotFoundException {
        return new FileInputStream(this.f81874a);
    }
}
