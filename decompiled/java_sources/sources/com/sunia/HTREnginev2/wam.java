package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes5.dex */
public class wam implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ File f88414a;

    public wam(File file) {
        this.f88414a = file;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws FileNotFoundException {
        return new FileInputStream(this.f88414a);
    }
}
