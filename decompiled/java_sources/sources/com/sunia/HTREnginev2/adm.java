package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedActionException;

/* loaded from: classes13.dex */
public final class adm {
    /* renamed from: a */
    public static ClassLoader m53001a() {
        return (ClassLoader) AccessController.doPrivileged(new u9m());
    }

    /* renamed from: b */
    public static boolean m53002b(File file) {
        return ((Boolean) AccessController.doPrivileged(new pcm(file))).booleanValue();
    }

    /* renamed from: c */
    public static FileInputStream m53003c(File file) throws FileNotFoundException {
        try {
            return (FileInputStream) AccessController.doPrivileged(new qbm(file));
        } catch (PrivilegedActionException e) {
            throw ((FileNotFoundException) e.getException());
        }
    }

    /* renamed from: d */
    public static long m53004d(File file) {
        return ((Long) AccessController.doPrivileged(new xcm(file))).longValue();
    }

    /* renamed from: e */
    public static ClassLoader m53005e(ClassLoader classLoader) {
        return (ClassLoader) AccessController.doPrivileged(new sam(classLoader));
    }

    /* renamed from: f */
    public static InputStream m53006f(ClassLoader classLoader, String str) {
        return (InputStream) AccessController.doPrivileged(new hcm(classLoader, str));
    }

    /* renamed from: g */
    public static ClassLoader m53007g() {
        return (ClassLoader) AccessController.doPrivileged(new gam());
    }

    /* renamed from: h */
    public static String m53008h(String str) {
        return (String) AccessController.doPrivileged(new ebm(str));
    }
}
