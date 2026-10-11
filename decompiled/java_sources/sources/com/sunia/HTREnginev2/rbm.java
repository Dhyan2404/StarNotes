package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes13.dex */
public class rbm implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ File f82951a;

    public rbm(File file) {
        this.f82951a = file;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws FileNotFoundException {
        return new FileInputStream(this.f82951a);
    }
}
