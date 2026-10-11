package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes13.dex */
public class acm implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ File f64564a;

    public acm(File file) {
        this.f64564a = file;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws FileNotFoundException {
        return new FileInputStream(this.f64564a);
    }
}
