package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedActionException;

/* loaded from: classes5.dex */
public final class edm {
    /* renamed from: a */
    public static boolean m53954a(File file) {
        return ((Boolean) AccessController.doPrivileged(new ubm(file))).booleanValue();
    }

    /* renamed from: b */
    public static ClassLoader m53955b() {
        return (ClassLoader) AccessController.doPrivileged(new y9m());
    }

    /* renamed from: c */
    public static FileInputStream m53956c(File file) throws FileNotFoundException {
        try {
            return (FileInputStream) AccessController.doPrivileged(new wam(file));
        } catch (PrivilegedActionException e) {
            throw ((FileNotFoundException) e.getException());
        }
    }

    /* renamed from: d */
    public static InputStream m53957d(ClassLoader classLoader, String str) {
        return (InputStream) AccessController.doPrivileged(new ibm(classLoader, str));
    }

    /* renamed from: e */
    public static String m53958e(String str) {
        return (String) AccessController.doPrivileged(new kam(str));
    }
}
