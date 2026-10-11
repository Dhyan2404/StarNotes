package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedActionException;

/* loaded from: classes5.dex */
public final class ldm {
    /* renamed from: a */
    public static boolean m55408a(File file) {
        return ((Boolean) AccessController.doPrivileged(new bcm(file))).booleanValue();
    }

    /* renamed from: b */
    public static ClassLoader m55409b() {
        return (ClassLoader) AccessController.doPrivileged(new fam());
    }

    /* renamed from: c */
    public static FileInputStream m55410c(File file) throws FileNotFoundException {
        try {
            return (FileInputStream) AccessController.doPrivileged(new dbm(file));
        } catch (PrivilegedActionException e) {
            throw ((FileNotFoundException) e.getException());
        }
    }

    /* renamed from: d */
    public static InputStream m55411d(ClassLoader classLoader, String str) {
        return (InputStream) AccessController.doPrivileged(new pbm(classLoader, str));
    }

    /* renamed from: e */
    public static String m55412e(String str) {
        return (String) AccessController.doPrivileged(new ram(str));
    }
}
