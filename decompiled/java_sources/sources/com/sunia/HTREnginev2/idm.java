package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedActionException;

/* loaded from: classes13.dex */
public final class idm {
    /* renamed from: a */
    public static ClassLoader m54703a() {
        return (ClassLoader) AccessController.doPrivileged(new cam());
    }

    /* renamed from: b */
    public static boolean m54704b(File file) {
        return ((Boolean) AccessController.doPrivileged(new mcm(file))).booleanValue();
    }

    /* renamed from: c */
    public static FileInputStream m54705c(File file) throws FileNotFoundException {
        try {
            return (FileInputStream) AccessController.doPrivileged(new ybm(file));
        } catch (PrivilegedActionException e) {
            throw ((FileNotFoundException) e.getException());
        }
    }

    /* renamed from: d */
    public static long m54706d(File file) {
        return ((Long) AccessController.doPrivileged(new ucm(file))).longValue();
    }

    /* renamed from: e */
    public static ClassLoader m54707e(ClassLoader classLoader) {
        return (ClassLoader) AccessController.doPrivileged(new abm(classLoader));
    }

    /* renamed from: f */
    public static InputStream m54708f(ClassLoader classLoader, String str) {
        return (InputStream) AccessController.doPrivileged(new ecm(classLoader, str));
    }

    /* renamed from: g */
    public static ClassLoader m54709g() {
        return (ClassLoader) AccessController.doPrivileged(new oam());
    }

    /* renamed from: h */
    public static String m54710h(String str) {
        return (String) AccessController.doPrivileged(new mbm(str));
    }
}
