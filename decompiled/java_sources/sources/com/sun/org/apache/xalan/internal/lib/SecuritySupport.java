package com.sun.org.apache.xalan.internal.lib;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class SecuritySupport {
    private static final Object securitySupport;

    static {
        Object securitySupport2;
        try {
            Class.forName("java.security.AccessController");
            securitySupport2 = new SecuritySupport12();
        } catch (Exception unused) {
            securitySupport2 = new SecuritySupport();
        } catch (Throwable th) {
            securitySupport = new SecuritySupport();
            throw th;
        }
        securitySupport = securitySupport2;
    }

    public static SecuritySupport getInstance() {
        return (SecuritySupport) securitySupport;
    }

    public ClassLoader getContextClassLoader() {
        return null;
    }

    public boolean getFileExists(File file) {
        return file.exists();
    }

    public FileInputStream getFileInputStream(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    public long getLastModified(File file) {
        return file.lastModified();
    }

    public ClassLoader getParentClassLoader(ClassLoader classLoader) {
        return null;
    }

    public InputStream getResourceAsStream(ClassLoader classLoader, String str) {
        return classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
    }

    public ClassLoader getSystemClassLoader() {
        return null;
    }

    public String getSystemProperty(String str) {
        return System.getProperty(str);
    }
}
