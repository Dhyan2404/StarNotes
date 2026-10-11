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
public final class gdm {
    /* renamed from: a */
    public static boolean m54261a(File file) {
        return ((Boolean) AccessController.doPrivileged(new scm(file))).booleanValue();
    }

    /* renamed from: b */
    public static ClassLoader m54262b() {
        return (ClassLoader) AccessController.doPrivileged(new aam());
    }

    /* renamed from: c */
    public static FileInputStream m54263c(File file) throws FileNotFoundException {
        try {
            return (FileInputStream) AccessController.doPrivileged(new yam(file));
        } catch (PrivilegedActionException e) {
            throw ((FileNotFoundException) e.getException());
        }
    }

    /* renamed from: d */
    public static InputStream m54264d(ClassLoader classLoader, String str) {
        return (InputStream) AccessController.doPrivileged(new kcm(classLoader, str));
    }

    /* renamed from: e */
    public static URL m54265e(ClassLoader classLoader, String str) {
        return (URL) AccessController.doPrivileged(new wbm(classLoader, str));
    }

    /* renamed from: f */
    public static Enumeration m54266f(ClassLoader classLoader, String str) throws IOException {
        try {
            return (Enumeration) AccessController.doPrivileged(new ccm(classLoader, str));
        } catch (PrivilegedActionException e) {
            throw ((IOException) e.getException());
        }
    }

    /* renamed from: g */
    public static String m54267g(String str) {
        return (String) AccessController.doPrivileged(new mam(str));
    }

    /* renamed from: h */
    public static InputStream m54268h(URL url) throws IOException {
        try {
            return (InputStream) AccessController.doPrivileged(new kbm(url));
        } catch (PrivilegedActionException e) {
            throw ((IOException) e.getException());
        }
    }
}
