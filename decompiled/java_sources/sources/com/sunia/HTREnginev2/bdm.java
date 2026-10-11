package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedActionException;

/* loaded from: classes13.dex */
public final class bdm {
    /* renamed from: a */
    public static ClassLoader m53237a() {
        return (ClassLoader) AccessController.doPrivileged(new v9m());
    }

    /* renamed from: b */
    public static boolean m53238b(File file) {
        return ((Boolean) AccessController.doPrivileged(new qcm(file))).booleanValue();
    }

    /* renamed from: c */
    public static FileInputStream m53239c(File file) throws FileNotFoundException {
        try {
            return (FileInputStream) AccessController.doPrivileged(new rbm(file));
        } catch (PrivilegedActionException e) {
            throw ((FileNotFoundException) e.getException());
        }
    }

    /* renamed from: d */
    public static long m53240d(File file) {
        return ((Long) AccessController.doPrivileged(new ycm(file))).longValue();
    }

    /* renamed from: e */
    public static ClassLoader m53241e(ClassLoader classLoader) {
        return (ClassLoader) AccessController.doPrivileged(new tam(classLoader));
    }

    /* renamed from: f */
    public static InputStream m53242f(ClassLoader classLoader, String str) {
        return (InputStream) AccessController.doPrivileged(new icm(classLoader, str));
    }

    /* renamed from: g */
    public static ClassLoader m53243g() {
        return (ClassLoader) AccessController.doPrivileged(new ham());
    }

    /* renamed from: h */
    public static String m53244h(String str) {
        return (String) AccessController.doPrivileged(new fbm(str));
    }
}
