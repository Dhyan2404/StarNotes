package org.apache.xmlbeans.impl.common;

import java.io.InputStream;
import org.apache.xmlbeans.ResourceLoader;

/* loaded from: classes13.dex */
public class DefaultClassLoaderResourceLoader implements ResourceLoader {
    @Override // org.apache.xmlbeans.ResourceLoader
    public void close() {
    }

    @Override // org.apache.xmlbeans.ResourceLoader
    public InputStream getResourceAsStream(String str) {
        InputStream inputStream;
        try {
            inputStream = getResourceAsStream(Thread.currentThread().getContextClassLoader(), str);
        } catch (SecurityException unused) {
            inputStream = null;
        }
        if (inputStream == null) {
            inputStream = getResourceAsStream(DefaultClassLoaderResourceLoader.class.getClassLoader(), str);
        }
        return inputStream == null ? DefaultClassLoaderResourceLoader.class.getResourceAsStream(str) : inputStream;
    }

    private InputStream getResourceAsStream(ClassLoader classLoader, String str) {
        if (classLoader == null) {
            return null;
        }
        return classLoader.getResourceAsStream(str);
    }
}
