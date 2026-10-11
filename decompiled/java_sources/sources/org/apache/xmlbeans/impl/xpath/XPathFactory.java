package org.apache.xmlbeans.impl.xpath;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.store.Cur;
import org.apache.xmlbeans.impl.xpath.XPath;
import org.apache.xmlbeans.impl.xpath.saxon.SaxonXPath;
import org.apache.xmlbeans.impl.xpath.saxon.SaxonXQuery;
import org.apache.xmlbeans.impl.xpath.xmlbeans.XmlbeansXPath;

/* loaded from: classes13.dex */
public class XPathFactory {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int USE_SAXON = 4;
    private static final int USE_XMLBEANS = 1;
    private static final Map<String, WeakReference<Path>> _xmlbeansPathCache = new WeakHashMap();
    private static final ReentrantReadWriteLock lock = new ReentrantReadWriteLock();

    public static String compilePath(String str, XmlOptions xmlOptions) {
        getCompiledPath(str, xmlOptions);
        return str;
    }

    public static synchronized String compileQuery(String str, XmlOptions xmlOptions) {
        synchronized (XPathFactory.class) {
            getCompiledQuery(str, xmlOptions);
        }
        return str;
    }

    public static XmlCursor cursorExecQuery(Cur cur, String str, XmlOptions xmlOptions) {
        return getCompiledQuery(str, xmlOptions).cursorExecute(cur, xmlOptions);
    }

    public static Path getCompiledPath(String str, XmlOptions xmlOptions) {
        XmlOptions maskNull = XmlOptions.maskNull(xmlOptions);
        return getCompiledPath(str, maskNull, getCurrentNodeVar(maskNull));
    }

    public static Path getCompiledPathSaxon(String str, String str2, Map<String, String> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        try {
            XPath.compileXPath(str, str2, map);
        } catch (XPath.XPathCompileException unused) {
        }
        int parseInt = Integer.parseInt(map.getOrDefault(XPath._NS_BOUNDARY, "0"));
        map.remove(XPath._NS_BOUNDARY);
        return new SaxonXPath(str.substring(parseInt), str2, map);
    }

    private static Path getCompiledPathXmlBeans(String str, String str2, Map<String, String> map) {
        try {
            XmlbeansXPath xmlbeansXPath = new XmlbeansXPath(str, str2, XPath.compileXPath(str, str2, map));
            _xmlbeansPathCache.put(str, new WeakReference<>(xmlbeansXPath));
            return xmlbeansXPath;
        } catch (XPath.XPathCompileException unused) {
            return null;
        }
    }

    public static synchronized XQuery getCompiledQuery(String str, XmlOptions xmlOptions) {
        XQuery compiledQuery;
        synchronized (XPathFactory.class) {
            compiledQuery = getCompiledQuery(str, getCurrentNodeVar(xmlOptions), xmlOptions);
        }
        return compiledQuery;
    }

    public static String getCurrentNodeVar(XmlOptions xmlOptions) {
        String xqueryCurrentNodeVar = XmlOptions.maskNull(xmlOptions).getXqueryCurrentNodeVar();
        if (xqueryCurrentNodeVar == null) {
            return "this";
        }
        if (xqueryCurrentNodeVar.startsWith("$")) {
            throw new IllegalArgumentException("Omit the '$' prefix for the current node variable");
        }
        return xqueryCurrentNodeVar;
    }

    public static XmlObject[] objectExecQuery(Cur cur, String str, XmlOptions xmlOptions) {
        return getCompiledQuery(str, xmlOptions).objectExecute(cur, xmlOptions);
    }

    public static synchronized XQuery getCompiledQuery(String str, String str2, XmlOptions xmlOptions) {
        String str3;
        SaxonXQuery saxonXQuery;
        synchronized (XPathFactory.class) {
            XmlOptions maskNull = XmlOptions.maskNull(xmlOptions);
            HashMap hashMap = new HashMap();
            try {
                try {
                    XPath.compileXPath(str, str2, hashMap);
                    str3 = (String) hashMap.getOrDefault(XPath._NS_BOUNDARY, "0");
                } catch (XPath.XPathCompileException unused) {
                    str3 = (String) hashMap.getOrDefault(XPath._NS_BOUNDARY, "0");
                }
                saxonXQuery = new SaxonXQuery(str, str2, Integer.valueOf(Integer.parseInt(str3)), maskNull);
            } catch (Throwable th) {
                Integer.parseInt((String) hashMap.getOrDefault(XPath._NS_BOUNDARY, "0"));
                throw th;
            }
        }
        return saxonXQuery;
    }

    public static Path getCompiledPath(String str, XmlOptions xmlOptions, String str2) {
        char c;
        WeakReference<Path> weakReference;
        if (xmlOptions.isXPathUseSaxon()) {
            c = 4;
        } else {
            c = xmlOptions.isXPathUseXmlBeans() ? (char) 1 : (char) 5;
        }
        int i = c & 4;
        HashMap hashMap = i != 0 ? new HashMap() : null;
        ReentrantReadWriteLock reentrantReadWriteLock = lock;
        reentrantReadWriteLock.readLock().lock();
        int i2 = c & 1;
        if (i2 != 0) {
            try {
                weakReference = _xmlbeansPathCache.get(str);
            } catch (Throwable th) {
                lock.readLock().unlock();
                throw th;
            }
        } else {
            weakReference = null;
        }
        Path path = weakReference != null ? weakReference.get() : null;
        if (path != null) {
            reentrantReadWriteLock.readLock().unlock();
            return path;
        }
        reentrantReadWriteLock.readLock().unlock();
        reentrantReadWriteLock.writeLock().lock();
        if (i2 != 0) {
            try {
                WeakReference<Path> weakReference2 = _xmlbeansPathCache.get(str);
                if (weakReference2 != null) {
                    path = weakReference2.get();
                }
                if (path == null) {
                    path = getCompiledPathXmlBeans(str, str2, hashMap);
                }
            } catch (Throwable th2) {
                lock.writeLock().unlock();
                throw th2;
            }
        }
        if (path == null && i != 0) {
            path = getCompiledPathSaxon(str, str2, hashMap);
        }
        if (path == null) {
            StringBuilder sb = new StringBuilder();
            if (i2 != 0) {
                sb.append(" Trying XmlBeans path engine...");
            }
            if (i != 0) {
                sb.append(" Trying Saxon path engine...");
            }
            throw new RuntimeException(sb.toString() + " FAILED on " + str);
        }
        reentrantReadWriteLock.writeLock().unlock();
        return path;
    }
}
