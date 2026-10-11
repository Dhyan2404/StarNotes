package com.sun.org.apache.xml.internal.utils;

import java.util.Hashtable;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.XMLReader;

/* loaded from: classes10.dex */
public class XMLReaderManager {
    private static final String NAMESPACES_FEATURE = "http://xml.org/sax/features/namespaces";
    private static final String NAMESPACE_PREFIXES_FEATURE = "http://xml.org/sax/features/namespace-prefixes";
    private static SAXParserFactory m_parserFactory;
    private static final XMLReaderManager m_singletonManager = new XMLReaderManager();
    private Hashtable m_inUse;
    private ThreadLocal m_readers;

    private XMLReaderManager() {
    }

    public static XMLReaderManager getInstance() {
        return m_singletonManager;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:(2:13|(1:15)(2:16|17))|20|21|22|(1:24)|17) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0042, code lost:
    
        if (com.sun.org.apache.xml.internal.utils.XMLReaderManager.m_parserFactory == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0044, code lost:
    
        r4 = javax.xml.parsers.SAXParserFactory.newInstance();
        com.sun.org.apache.xml.internal.utils.XMLReaderManager.m_parserFactory = r4;
        r4.setNamespaceAware(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004d, code lost:
    
        r0 = com.sun.org.apache.xml.internal.utils.XMLReaderManager.m_parserFactory.newSAXParser().getXMLReader();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized org.xml.sax.XMLReader getXMLReader() throws org.xml.sax.SAXException {
        /*
            r6 = this;
            monitor-enter(r6)
            java.lang.ThreadLocal r0 = r6.m_readers     // Catch: java.lang.Throwable -> L86
            if (r0 != 0) goto Lc
            java.lang.ThreadLocal r0 = new java.lang.ThreadLocal     // Catch: java.lang.Throwable -> L86
            r0.<init>()     // Catch: java.lang.Throwable -> L86
            r6.m_readers = r0     // Catch: java.lang.Throwable -> L86
        Lc:
            java.util.Hashtable r0 = r6.m_inUse     // Catch: java.lang.Throwable -> L86
            if (r0 != 0) goto L17
            java.util.Hashtable r0 = new java.util.Hashtable     // Catch: java.lang.Throwable -> L86
            r0.<init>()     // Catch: java.lang.Throwable -> L86
            r6.m_inUse = r0     // Catch: java.lang.Throwable -> L86
        L17:
            java.lang.ThreadLocal r0 = r6.m_readers     // Catch: java.lang.Throwable -> L86
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L86
            org.xml.sax.XMLReader r0 = (org.xml.sax.XMLReader) r0     // Catch: java.lang.Throwable -> L86
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L25
            r3 = r2
            goto L26
        L25:
            r3 = r1
        L26:
            if (r3 == 0) goto L39
            java.util.Hashtable r4 = r6.m_inUse     // Catch: java.lang.Throwable -> L86
            java.lang.Object r4 = r4.get(r0)     // Catch: java.lang.Throwable -> L86
            java.lang.Boolean r5 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L86
            if (r4 != r5) goto L33
            goto L39
        L33:
            java.util.Hashtable r1 = r6.m_inUse     // Catch: java.lang.Throwable -> L86
            r1.put(r0, r5)     // Catch: java.lang.Throwable -> L86
            goto L74
        L39:
            org.xml.sax.XMLReader r0 = org.xml.sax.helpers.XMLReaderFactory.createXMLReader()     // Catch: javax.xml.parsers.FactoryConfigurationError -> L3e java.lang.Exception -> L40 java.lang.Throwable -> L66 java.lang.Throwable -> L86
            goto L57
        L3e:
            r0 = move-exception
            goto L76
        L40:
            javax.xml.parsers.SAXParserFactory r4 = com.sun.org.apache.xml.internal.utils.XMLReaderManager.m_parserFactory     // Catch: javax.xml.parsers.FactoryConfigurationError -> L3e javax.xml.parsers.ParserConfigurationException -> L64 java.lang.Throwable -> L66 java.lang.Throwable -> L66 java.lang.Throwable -> L86
            if (r4 != 0) goto L4d
            javax.xml.parsers.SAXParserFactory r4 = javax.xml.parsers.SAXParserFactory.newInstance()     // Catch: javax.xml.parsers.FactoryConfigurationError -> L3e javax.xml.parsers.ParserConfigurationException -> L64 java.lang.Throwable -> L66 java.lang.Throwable -> L66 java.lang.Throwable -> L86
            com.sun.org.apache.xml.internal.utils.XMLReaderManager.m_parserFactory = r4     // Catch: javax.xml.parsers.FactoryConfigurationError -> L3e javax.xml.parsers.ParserConfigurationException -> L64 java.lang.Throwable -> L66 java.lang.Throwable -> L66 java.lang.Throwable -> L86
            r4.setNamespaceAware(r2)     // Catch: javax.xml.parsers.FactoryConfigurationError -> L3e javax.xml.parsers.ParserConfigurationException -> L64 java.lang.Throwable -> L66 java.lang.Throwable -> L66 java.lang.Throwable -> L86
        L4d:
            javax.xml.parsers.SAXParserFactory r4 = com.sun.org.apache.xml.internal.utils.XMLReaderManager.m_parserFactory     // Catch: javax.xml.parsers.FactoryConfigurationError -> L3e javax.xml.parsers.ParserConfigurationException -> L64 java.lang.Throwable -> L66 java.lang.Throwable -> L66 java.lang.Throwable -> L86
            javax.xml.parsers.SAXParser r4 = r4.newSAXParser()     // Catch: javax.xml.parsers.FactoryConfigurationError -> L3e javax.xml.parsers.ParserConfigurationException -> L64 java.lang.Throwable -> L66 java.lang.Throwable -> L66 java.lang.Throwable -> L86
            org.xml.sax.XMLReader r0 = r4.getXMLReader()     // Catch: javax.xml.parsers.FactoryConfigurationError -> L3e javax.xml.parsers.ParserConfigurationException -> L64 java.lang.Throwable -> L66 java.lang.Throwable -> L66 java.lang.Throwable -> L86
        L57:
            java.lang.String r4 = "http://xml.org/sax/features/namespaces"
            r0.setFeature(r4, r2)     // Catch: javax.xml.parsers.FactoryConfigurationError -> L3e javax.xml.parsers.ParserConfigurationException -> L62 java.lang.Throwable -> L66 java.lang.Throwable -> L66 java.lang.Throwable -> L86
            java.lang.String r2 = "http://xml.org/sax/features/namespace-prefixes"
            r0.setFeature(r2, r1)     // Catch: javax.xml.parsers.FactoryConfigurationError -> L3e javax.xml.parsers.ParserConfigurationException -> L62 java.lang.Throwable -> L66 java.lang.Throwable -> L66 java.lang.Throwable -> L86
            goto L66
        L62:
            r0 = move-exception
            goto L80
        L64:
            r1 = move-exception
            throw r1     // Catch: javax.xml.parsers.FactoryConfigurationError -> L3e javax.xml.parsers.ParserConfigurationException -> L62 java.lang.Throwable -> L66 java.lang.Throwable -> L66 java.lang.Throwable -> L86
        L66:
            if (r3 != 0) goto L74
            java.lang.ThreadLocal r1 = r6.m_readers     // Catch: java.lang.Throwable -> L86
            r1.set(r0)     // Catch: java.lang.Throwable -> L86
            java.util.Hashtable r1 = r6.m_inUse     // Catch: java.lang.Throwable -> L86
            java.lang.Boolean r2 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L86
            r1.put(r0, r2)     // Catch: java.lang.Throwable -> L86
        L74:
            monitor-exit(r6)
            return r0
        L76:
            org.xml.sax.SAXException r1 = new org.xml.sax.SAXException     // Catch: java.lang.Throwable -> L86
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L86
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L86
            throw r1     // Catch: java.lang.Throwable -> L86
        L80:
            org.xml.sax.SAXException r1 = new org.xml.sax.SAXException     // Catch: java.lang.Throwable -> L86
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L86
            throw r1     // Catch: java.lang.Throwable -> L86
        L86:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.utils.XMLReaderManager.getXMLReader():org.xml.sax.XMLReader");
    }

    public synchronized void releaseXMLReader(XMLReader xMLReader) {
        if (this.m_readers.get() == xMLReader && xMLReader != null) {
            this.m_inUse.remove(xMLReader);
        }
    }
}
