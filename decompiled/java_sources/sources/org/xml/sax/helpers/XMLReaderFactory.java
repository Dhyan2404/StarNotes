package org.xml.sax.helpers;

import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

/* loaded from: classes16.dex */
public final class XMLReaderFactory {
    private static final int DEFAULT_LINE_LENGTH = 80;
    static /* synthetic */ Class class$org$xml$sax$helpers$XMLReaderFactory = null;
    private static final String property = "org.xml.sax.driver";

    private XMLReaderFactory() {
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x002a, code lost:
    
        if (r2 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0037, code lost:
    
        r2 = org.xml.sax.helpers.SecuritySupport.getResourceAsStream(r2.getClassLoader(), "META-INF/services/org.xml.sax.driver");
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        r2 = class$("org.xml.sax.helpers.XMLReaderFactory");
        org.xml.sax.helpers.XMLReaderFactory.class$org$xml$sax$helpers$XMLReaderFactory = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x002f, code lost:
    
        if (r2 == null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.xml.sax.XMLReader createXMLReader() throws org.xml.sax.SAXException {
        /*
            java.lang.ClassLoader r0 = org.xml.sax.helpers.NewInstance.getClassLoader()
            r1 = 0
            java.lang.String r2 = "org.xml.sax.driver"
            java.lang.String r2 = org.xml.sax.helpers.SecuritySupport.getSystemProperty(r2)     // Catch: java.lang.Exception -> Lc
            goto Ld
        Lc:
            r2 = r1
        Ld:
            if (r2 == 0) goto L18
            int r3 = r2.length()
            if (r3 != 0) goto L16
            goto L18
        L16:
            r1 = r2
            goto L67
        L18:
            java.lang.ClassLoader r2 = org.xml.sax.helpers.SecuritySupport.getContextClassLoader()
            java.lang.String r3 = "org.xml.sax.helpers.XMLReaderFactory"
            java.lang.String r4 = "META-INF/services/org.xml.sax.driver"
            if (r2 == 0) goto L2d
            java.io.InputStream r2 = org.xml.sax.helpers.SecuritySupport.getResourceAsStream(r2, r4)
            if (r2 != 0) goto L3f
            java.lang.Class r2 = org.xml.sax.helpers.XMLReaderFactory.class$org$xml$sax$helpers$XMLReaderFactory
            if (r2 != 0) goto L37
            goto L31
        L2d:
            java.lang.Class r2 = org.xml.sax.helpers.XMLReaderFactory.class$org$xml$sax$helpers$XMLReaderFactory
            if (r2 != 0) goto L37
        L31:
            java.lang.Class r2 = class$(r3)
            org.xml.sax.helpers.XMLReaderFactory.class$org$xml$sax$helpers$XMLReaderFactory = r2
        L37:
            java.lang.ClassLoader r2 = r2.getClassLoader()
            java.io.InputStream r2 = org.xml.sax.helpers.SecuritySupport.getResourceAsStream(r2, r4)
        L3f:
            if (r2 == 0) goto L67
            r3 = 80
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch: java.io.UnsupportedEncodingException -> L50
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch: java.io.UnsupportedEncodingException -> L50
            java.lang.String r6 = "UTF-8"
            r5.<init>(r2, r6)     // Catch: java.io.UnsupportedEncodingException -> L50
            r4.<init>(r5, r3)     // Catch: java.io.UnsupportedEncodingException -> L50
            goto L5a
        L50:
            java.io.BufferedReader r4 = new java.io.BufferedReader
            java.io.InputStreamReader r5 = new java.io.InputStreamReader
            r5.<init>(r2)
            r4.<init>(r5, r3)
        L5a:
            java.lang.String r1 = r4.readLine()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L62
        L5e:
            r4.close()     // Catch: java.io.IOException -> L67
            goto L67
        L62:
            r0 = move-exception
            r4.close()     // Catch: java.io.IOException -> L66
        L66:
            throw r0
        L67:
            if (r1 != 0) goto L6b
            java.lang.String r1 = "org.apache.xerces.parsers.SAXParser"
        L6b:
            org.xml.sax.XMLReader r0 = loadClass(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xml.sax.helpers.XMLReaderFactory.createXMLReader():org.xml.sax.XMLReader");
    }

    private static XMLReader loadClass(ClassLoader classLoader, String str) throws SAXException {
        try {
            return (XMLReader) NewInstance.newInstance(classLoader, str);
        } catch (ClassCastException e) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("SAX2 driver class ");
            stringBuffer.append(str);
            stringBuffer.append(" does not implement XMLReader");
            throw new SAXException(stringBuffer.toString(), e);
        } catch (ClassNotFoundException e2) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("SAX2 driver class ");
            stringBuffer2.append(str);
            stringBuffer2.append(" not found");
            throw new SAXException(stringBuffer2.toString(), e2);
        } catch (IllegalAccessException e3) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("SAX2 driver class ");
            stringBuffer3.append(str);
            stringBuffer3.append(" found but cannot be loaded");
            throw new SAXException(stringBuffer3.toString(), e3);
        } catch (InstantiationException e4) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("SAX2 driver class ");
            stringBuffer4.append(str);
            stringBuffer4.append(" loaded but cannot be instantiated (no empty public constructor?)");
            throw new SAXException(stringBuffer4.toString(), e4);
        }
    }

    public static XMLReader createXMLReader(String str) throws SAXException {
        return loadClass(NewInstance.getClassLoader(), str);
    }
}
