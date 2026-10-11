package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedActionException;

/* loaded from: classes12.dex */
public final class hdm {
    /* renamed from: a */
    public static ClassLoader m54452a() {
        return (ClassLoader) AccessController.doPrivileged(new bam());
    }

    /* renamed from: b */
    public static boolean m54453b(File file) {
        return ((Boolean) AccessController.doPrivileged(new lcm(file))).booleanValue();
    }

    /* renamed from: c */
    public static FileInputStream m54454c(File file) throws FileNotFoundException {
        try {
            return (FileInputStream) AccessController.doPrivileged(new xbm(file));
        } catch (PrivilegedActionException e) {
            throw ((FileNotFoundException) e.getException());
        }
    }

    /* renamed from: d */
    public static long m54455d(File file) {
        return ((Long) AccessController.doPrivileged(new tcm(file))).longValue();
    }

    /* renamed from: e */
    public static ClassLoader m54456e(ClassLoader classLoader) {
        return (ClassLoader) AccessController.doPrivileged(new zam(classLoader));
    }

    /* renamed from: f */
    public static InputStream m54457f(ClassLoader classLoader, String str) {
        return (InputStream) AccessController.doPrivileged(new dcm(classLoader, str));
    }

    /* renamed from: g */
    public static ClassLoader m54458g() {
        return (ClassLoader) AccessController.doPrivileged(new nam());
    }

    /* renamed from: h */
    public static String m54459h(String str) {
        return (String) AccessController.doPrivileged(new lbm(str));
    }
}
