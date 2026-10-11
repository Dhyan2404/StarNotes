package org.apache.xmlbeans.impl.soap;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.Properties;
import org.apache.commons.lang3.SystemUtils;
import org.apache.xmlbeans.SystemProperties;

/* loaded from: classes13.dex */
class FactoryFinder {
    public static Object find(String str, String str2) throws SOAPException {
        try {
            String property = SystemProperties.getProperty(str);
            if (property != null) {
                return newInstance(property);
            }
        } catch (SecurityException unused) {
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(SystemProperties.getProperty(SystemUtils.f107424e));
            String str3 = File.separator;
            sb.append(str3);
            sb.append("lib");
            sb.append(str3);
            sb.append("jaxm.properties");
            File file = new File(sb.toString());
            if (file.exists()) {
                Properties properties = new Properties();
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    properties.load(fileInputStream);
                    fileInputStream.close();
                    return newInstance(properties.getProperty(str));
                } finally {
                }
            }
        } catch (Exception unused2) {
        }
        try {
            InputStream resource = getResource("META-INF/services/" + str);
            if (resource != null) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(resource, StandardCharsets.UTF_8));
                try {
                    String readLine = bufferedReader.readLine();
                    bufferedReader.close();
                    if (readLine != null && !"".equals(readLine)) {
                        return newInstance(readLine);
                    }
                } finally {
                }
            }
        } catch (Exception unused3) {
        }
        if (str2 != null) {
            return newInstance(str2);
        }
        throw new SOAPException("Provider for " + str + " cannot be found", null);
    }

    private static InputStream getResource(String str) {
        ClassLoader classLoader;
        try {
            classLoader = Thread.currentThread().getContextClassLoader();
        } catch (SecurityException unused) {
            classLoader = null;
        }
        InputStream systemResourceAsStream = classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str);
        if (systemResourceAsStream == null) {
            systemResourceAsStream = FactoryFinder.class.getResourceAsStream(str);
        }
        return (systemResourceAsStream != null || FactoryFinder.class.getClassLoader() == null) ? systemResourceAsStream : FactoryFinder.class.getClassLoader().getResourceAsStream(str);
    }

    private static Object newInstance(String str) throws SOAPException {
        Class<?> cls;
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            try {
                if (contextClassLoader == null) {
                    try {
                        cls = Class.forName(str);
                    } catch (ClassNotFoundException e) {
                        throw new SOAPException("Provider " + str + " not found", e);
                    }
                } else {
                    try {
                        cls = contextClassLoader.loadClass(str);
                    } catch (ClassNotFoundException unused) {
                        cls = null;
                    }
                }
                if (cls == null) {
                    cls = FactoryFinder.class.getClassLoader().loadClass(str);
                }
                return cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Exception e2) {
                throw new SOAPException("Provider " + str + " could not be instantiated: " + e2, e2);
            }
        } catch (Exception e3) {
            throw new SOAPException(e3.toString(), e3);
        }
    }
}
