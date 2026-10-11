package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes13.dex */
public class zbm implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ File f91591a;

    public zbm(File file) {
        this.f91591a = file;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws FileNotFoundException {
        return new FileInputStream(this.f91591a);
    }
}
