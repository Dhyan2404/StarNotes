package com.sun.org.apache.xalan.internal.lib;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes10.dex */
class SecuritySupport12 extends SecuritySupport {
    @Override // com.sun.org.apache.xalan.internal.lib.SecuritySupport
    public ClassLoader getContextClassLoader() {
        return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sun.org.apache.xalan.internal.lib.SecuritySupport12.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                try {
                    return Thread.currentThread().getContextClassLoader();
                } catch (SecurityException unused) {
                    return null;
                }
            }
        });
    }

    @Override // com.sun.org.apache.xalan.internal.lib.SecuritySupport
    public boolean getFileExists(final File file) {
        return ((Boolean) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sun.org.apache.xalan.internal.lib.SecuritySupport12.7
            @Override // java.security.PrivilegedAction
            public Object run() {
                return new Boolean(file.exists());
            }
        })).booleanValue();
    }

    @Override // com.sun.org.apache.xalan.internal.lib.SecuritySupport
    public FileInputStream getFileInputStream(final File file) throws FileNotFoundException {
        try {
            return (FileInputStream) AccessController.doPrivileged(new PrivilegedExceptionAction() { // from class: com.sun.org.apache.xalan.internal.lib.SecuritySupport12.5
                @Override // java.security.PrivilegedExceptionAction
                public Object run() throws FileNotFoundException {
                    return new FileInputStream(file);
                }
            });
        } catch (PrivilegedActionException e) {
            throw ((FileNotFoundException) e.getException());
        }
    }

    @Override // com.sun.org.apache.xalan.internal.lib.SecuritySupport
    public long getLastModified(final File file) {
        return ((Long) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sun.org.apache.xalan.internal.lib.SecuritySupport12.8
            @Override // java.security.PrivilegedAction
            public Object run() {
                return new Long(file.lastModified());
            }
        })).longValue();
    }

    @Override // com.sun.org.apache.xalan.internal.lib.SecuritySupport
    public ClassLoader getParentClassLoader(final ClassLoader classLoader) {
        return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sun.org.apache.xalan.internal.lib.SecuritySupport12.3
            @Override // java.security.PrivilegedAction
            public Object run() {
                ClassLoader classLoader2;
                try {
                    classLoader2 = classLoader.getParent();
                } catch (SecurityException unused) {
                    classLoader2 = null;
                }
                if (classLoader2 == classLoader) {
                    return null;
                }
                return classLoader2;
            }
        });
    }

    @Override // com.sun.org.apache.xalan.internal.lib.SecuritySupport
    public InputStream getResourceAsStream(final ClassLoader classLoader, final String str) {
        return (InputStream) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sun.org.apache.xalan.internal.lib.SecuritySupport12.6
            @Override // java.security.PrivilegedAction
            public Object run() {
                ClassLoader classLoader2 = classLoader;
                return classLoader2 == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader2.getResourceAsStream(str);
            }
        });
    }

    @Override // com.sun.org.apache.xalan.internal.lib.SecuritySupport
    public ClassLoader getSystemClassLoader() {
        return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sun.org.apache.xalan.internal.lib.SecuritySupport12.2
            @Override // java.security.PrivilegedAction
            public Object run() {
                try {
                    return ClassLoader.getSystemClassLoader();
                } catch (SecurityException unused) {
                    return null;
                }
            }
        });
    }

    @Override // com.sun.org.apache.xalan.internal.lib.SecuritySupport
    public String getSystemProperty(final String str) {
        return (String) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sun.org.apache.xalan.internal.lib.SecuritySupport12.4
            @Override // java.security.PrivilegedAction
            public Object run() {
                return System.getProperty(str);
            }
        });
    }
}
