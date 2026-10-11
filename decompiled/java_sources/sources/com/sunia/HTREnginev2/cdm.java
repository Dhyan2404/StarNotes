package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedActionException;

/* loaded from: classes5.dex */
public final class cdm {
    /* renamed from: a */
    public static boolean m53431a(File file) {
        return ((Boolean) AccessController.doPrivileged(new sbm(file))).booleanValue();
    }

    /* renamed from: b */
    public static ClassLoader m53432b() {
        return (ClassLoader) AccessController.doPrivileged(new w9m());
    }

    /* renamed from: c */
    public static FileInputStream m53433c(File file) throws FileNotFoundException {
        try {
            return (FileInputStream) AccessController.doPrivileged(new uam(file));
        } catch (PrivilegedActionException e) {
            throw ((FileNotFoundException) e.getException());
        }
    }

    /* renamed from: d */
    public static InputStream m53434d(ClassLoader classLoader, String str) {
        return (InputStream) AccessController.doPrivileged(new gbm(classLoader, str));
    }

    /* renamed from: e */
    public static String m53435e(String str) {
        return (String) AccessController.doPrivileged(new iam(str));
    }
}
