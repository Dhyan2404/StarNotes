package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes5.dex */
public class vam implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ File f87311a;

    public vam(File file) {
        this.f87311a = file;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws FileNotFoundException {
        return new FileInputStream(this.f87311a);
    }
}
