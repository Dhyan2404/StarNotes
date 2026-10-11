package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.util.Enumeration;

/* loaded from: classes5.dex */
public final class fdm {
    /* renamed from: a */
    public static boolean m54087a(File file) {
        return ((Boolean) AccessController.doPrivileged(new zcm(file))).booleanValue();
    }

    /* renamed from: b */
    public static ClassLoader m54088b() {
        return (ClassLoader) AccessController.doPrivileged(new z9m());
    }

    /* renamed from: c */
    public static FileInputStream m54089c(File file) throws FileNotFoundException {
        try {
            return (FileInputStream) AccessController.doPrivileged(new xam(file));
        } catch (PrivilegedActionException e) {
            throw ((FileNotFoundException) e.getException());
        }
    }

    /* renamed from: d */
    public static InputStream m54090d(ClassLoader classLoader, String str) {
        return (InputStream) AccessController.doPrivileged(new rcm(classLoader, str));
    }

    /* renamed from: e */
    public static URL m54091e(ClassLoader classLoader, String str) {
        return (URL) AccessController.doPrivileged(new vbm(classLoader, str));
    }

    /* renamed from: f */
    public static Enumeration m54092f(ClassLoader classLoader, String str) throws IOException {
        try {
            return (Enumeration) AccessController.doPrivileged(new jcm(classLoader, str));
        } catch (PrivilegedActionException e) {
            throw ((IOException) e.getException());
        }
    }

    /* renamed from: g */
    public static String m54093g(String str) {
        return (String) AccessController.doPrivileged(new lam(str));
    }

    /* renamed from: h */
    public static InputStream m54094h(URL url) throws IOException {
        try {
            return (InputStream) AccessController.doPrivileged(new jbm(url));
        } catch (PrivilegedActionException e) {
            throw ((IOException) e.getException());
        }
    }
}
