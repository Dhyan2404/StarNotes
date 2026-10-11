package net.p110sf.saxon.lib;

import java.io.InputStream;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface IDynamicLoader {
    Class<?> getClass(String str, Logger logger, ClassLoader classLoader) throws XPathException;

    Object getInstance(String str, ClassLoader classLoader) throws XPathException;

    Object getInstance(String str, Logger logger, ClassLoader classLoader) throws XPathException;

    InputStream getResourceAsStream(String str);

    void setClassLoader(ClassLoader classLoader);
}
