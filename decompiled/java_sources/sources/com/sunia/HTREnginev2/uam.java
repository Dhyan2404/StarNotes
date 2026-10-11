package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes5.dex */
public class uam implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ File f86295a;

    public uam(File file) {
        this.f86295a = file;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws FileNotFoundException {
        return new FileInputStream(this.f86295a);
    }
}
