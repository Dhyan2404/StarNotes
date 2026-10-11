package net.p110sf.saxon.trans;

import java.io.InputStream;
import java.util.HashMap;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.lib.IDynamicLoader;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.serialize.MessageEmitter;

/* loaded from: classes11.dex */
public class DynamicLoader implements IDynamicLoader {

    /* renamed from: a */
    public ClassLoader f102282a;
    protected HashMap<String, Class<?>> knownClasses = new HashMap<>(20);

    public DynamicLoader() {
        registerKnownClasses();
    }

    /* renamed from: a */
    public final String m64105a(String str) {
        if (str.startsWith("net.sf.saxon.option.sql.")) {
            return "saxon-sql-" + Version.getProductVersion() + ".jar";
        }
        if (str.startsWith("com.ibm.icu.")) {
            return "icu4j-59.1.jar";
        }
        if (!str.startsWith("com.saxonica")) {
            return null;
        }
        return "saxon-" + Version.softwareEdition.toLowerCase() + "-" + Version.getProductVersion() + ".jar";
    }

    /* renamed from: b */
    public final String m64106b(String str) {
        String m64105a = m64105a(str);
        if (m64105a == null) {
            return "";
        }
        return ". Check that " + m64105a + " is on the classpath";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Class<?>, java.lang.Class] */
    @Override // net.p110sf.saxon.lib.IDynamicLoader
    public Class<?> getClass(String str, Logger logger, ClassLoader classLoader) throws XPathException {
        Class<?> cls = this.knownClasses.get(str);
        if (cls != null) {
            return cls;
        }
        boolean z = logger != null;
        if (z) {
            logger.info("Loading " + str);
        }
        if (classLoader == null) {
            try {
                classLoader = this.f102282a;
            } catch (Throwable th) {
                if (z) {
                    logger.error("The class " + str + " could not be loaded: " + th.getMessage());
                }
                throw new XPathException("Failed to load " + str + this.m64106b(str), th);
            }
        }
        if (classLoader == null) {
            classLoader = Thread.currentThread().getContextClassLoader();
        }
        if (classLoader == null) {
            return Class.forName(str);
        }
        try {
            this = classLoader.loadClass(str);
            return this;
        } catch (Throwable unused) {
            return Class.forName(str);
        }
    }

    public ClassLoader getClassLoader() {
        return this.f102282a;
    }

    @Override // net.p110sf.saxon.lib.IDynamicLoader
    public Object getInstance(String str, ClassLoader classLoader) throws XPathException {
        try {
            return getClass(str, null, classLoader).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoSuchMethodException e) {
            throw new XPathException("Failed to instantiate class " + str + " (it has no public zero-argument constructor)", e);
        } catch (Exception e2) {
            throw new XPathException("Failed to instantiate class " + str, e2);
        }
    }

    @Override // net.p110sf.saxon.lib.IDynamicLoader
    public InputStream getResourceAsStream(String str) {
        ClassLoader classLoader = getClassLoader();
        if (classLoader == null) {
            classLoader = Thread.currentThread().getContextClassLoader();
        }
        return classLoader.getResourceAsStream(str);
    }

    public void registerKnownClasses() {
        this.knownClasses.put("net.sf.saxon.serialize.MessageEmitter", MessageEmitter.class);
        this.knownClasses.put("net.sf.saxon.Configuration", Configuration.class);
    }

    @Override // net.p110sf.saxon.lib.IDynamicLoader
    public void setClassLoader(ClassLoader classLoader) {
        this.f102282a = classLoader;
    }

    @Override // net.p110sf.saxon.lib.IDynamicLoader
    public Object getInstance(String str, Logger logger, ClassLoader classLoader) throws XPathException {
        try {
            return getClass(str, logger, classLoader).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoClassDefFoundError e) {
            throw new XPathException("Failed to load instance of class " + str + this.m64106b(str), e);
        } catch (NoSuchMethodException e2) {
            throw new XPathException("Failed to instantiate class " + str + " (it has no public zero-argument constructor)", e2);
        } catch (Exception e3) {
            throw new XPathException("Failed to instantiate class " + str, e3);
        }
    }
}
