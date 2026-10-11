package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedActionException;

/* loaded from: classes13.dex */
public final class jdm {
    /* renamed from: a */
    public static ClassLoader m54906a() {
        return (ClassLoader) AccessController.doPrivileged(new dam());
    }

    /* renamed from: b */
    public static boolean m54907b(File file) {
        return ((Boolean) AccessController.doPrivileged(new ncm(file))).booleanValue();
    }

    /* renamed from: c */
    public static FileInputStream m54908c(File file) throws FileNotFoundException {
        try {
            return (FileInputStream) AccessController.doPrivileged(new zbm(file));
        } catch (PrivilegedActionException e) {
            throw ((FileNotFoundException) e.getException());
        }
    }

    /* renamed from: d */
    public static long m54909d(File file) {
        return ((Long) AccessController.doPrivileged(new vcm(file))).longValue();
    }

    /* renamed from: e */
    public static ClassLoader m54910e(ClassLoader classLoader) {
        return (ClassLoader) AccessController.doPrivileged(new bbm(classLoader));
    }

    /* renamed from: f */
    public static InputStream m54911f(ClassLoader classLoader, String str) {
        return (InputStream) AccessController.doPrivileged(new fcm(classLoader, str));
    }

    /* renamed from: g */
    public static ClassLoader m54912g() {
        return (ClassLoader) AccessController.doPrivileged(new pam());
    }

    /* renamed from: h */
    public static String m54913h(String str) {
        return (String) AccessController.doPrivileged(new nbm(str));
    }
}
