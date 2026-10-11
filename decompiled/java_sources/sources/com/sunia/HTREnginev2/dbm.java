package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes5.dex */
public class dbm implements PrivilegedExceptionAction {

    /* renamed from: a */
    public final /* synthetic */ File f67702a;

    public dbm(File file) {
        this.f67702a = file;
    }

    @Override // java.security.PrivilegedExceptionAction
    public Object run() throws FileNotFoundException {
        return new FileInputStream(this.f67702a);
    }
}
