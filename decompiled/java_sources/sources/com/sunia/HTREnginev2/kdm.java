package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedActionException;

/* loaded from: classes13.dex */
public final class kdm {
    /* renamed from: a */
    public static ClassLoader m55198a() {
        return (ClassLoader) AccessController.doPrivileged(new eam());
    }

    /* renamed from: b */
    public static boolean m55199b(File file) {
        return ((Boolean) AccessController.doPrivileged(new ocm(file))).booleanValue();
    }

    /* renamed from: c */
    public static FileInputStream m55200c(File file) throws FileNotFoundException {
        try {
            return (FileInputStream) AccessController.doPrivileged(new acm(file));
        } catch (PrivilegedActionException e) {
            throw ((FileNotFoundException) e.getException());
        }
    }

    /* renamed from: d */
    public static long m55201d(File file) {
        return ((Long) AccessController.doPrivileged(new wcm(file))).longValue();
    }

    /* renamed from: e */
    public static ClassLoader m55202e(ClassLoader classLoader) {
        return (ClassLoader) AccessController.doPrivileged(new cbm(classLoader));
    }

    /* renamed from: f */
    public static InputStream m55203f(ClassLoader classLoader, String str) {
        return (InputStream) AccessController.doPrivileged(new gcm(classLoader, str));
    }

    /* renamed from: g */
    public static ClassLoader m55204g() {
        return (ClassLoader) AccessController.doPrivileged(new qam());
    }

    /* renamed from: h */
    public static String m55205h(String str) {
        return (String) AccessController.doPrivileged(new obm(str));
    }
}
