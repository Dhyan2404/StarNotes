package com.sun.org.apache.xml.internal.serializer;

import com.sun.org.apache.xml.internal.serializer.utils.WrappedRuntimeException;
import java.io.IOException;
import java.util.Properties;

/* loaded from: classes10.dex */
public final class OutputPropertiesFactory {
    private static final String PROP_DIR = "com/sun/org/apache/xml/internal/serializer/";
    private static final String PROP_FILE_HTML = "output_html.properties";
    private static final String PROP_FILE_TEXT = "output_text.properties";
    private static final String PROP_FILE_UNKNOWN = "output_unknown.properties";
    private static final String PROP_FILE_XML = "output_xml.properties";
    public static final String S_BUILTIN_EXTENSIONS_UNIVERSAL = "{http://xml.apache.org/xalan}";
    private static final String S_BUILTIN_EXTENSIONS_URL = "http://xml.apache.org/xalan";
    public static final String S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL = "{http://xml.apache.org/xslt}";
    public static final int S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN = 28;
    private static final String S_BUILTIN_OLD_EXTENSIONS_URL = "http://xml.apache.org/xslt";
    public static final String S_KEY_CONTENT_HANDLER = "{http://xml.apache.org/xalan}content-handler";
    public static final String S_KEY_ENTITIES = "{http://xml.apache.org/xalan}entities";
    public static final String S_KEY_INDENT_AMOUNT = "{http://xml.apache.org/xalan}indent-amount";
    public static final String S_KEY_LINE_SEPARATOR = "{http://xml.apache.org/xalan}line-separator";
    public static final String S_OMIT_META_TAG = "{http://xml.apache.org/xalan}omit-meta-tag";
    public static final String S_USE_URL_ESCAPING = "{http://xml.apache.org/xalan}use-url-escaping";
    private static final String S_XALAN_PREFIX = "org.apache.xslt.";
    private static final int S_XALAN_PREFIX_LEN = 16;
    private static final String S_XSLT_PREFIX = "xslt.output.";
    private static final int S_XSLT_PREFIX_LEN = 12;
    private static Integer m_synch_object = new Integer(1);
    private static Properties m_xml_properties = null;
    private static Properties m_html_properties = null;
    private static Properties m_text_properties = null;
    private static Properties m_unknown_properties = null;
    private static final Class ACCESS_CONTROLLER_CLASS = findAccessControllerClass();

    private static Class findAccessControllerClass() {
        try {
            return Class.forName("java.security.AccessController");
        } catch (Exception unused) {
            return null;
        }
    }

    private static String fixupPropertyString(String str, boolean z) {
        if (z && str.startsWith(S_XSLT_PREFIX)) {
            str = str.substring(S_XSLT_PREFIX_LEN);
        }
        if (str.startsWith(S_XALAN_PREFIX)) {
            str = S_BUILTIN_EXTENSIONS_UNIVERSAL + str.substring(S_XALAN_PREFIX_LEN);
        }
        int indexOf = str.indexOf("\\u003a");
        if (indexOf <= 0) {
            return str;
        }
        return str.substring(0, indexOf) + ":" + str.substring(indexOf + 6);
    }

    public static final Properties getDefaultMethodProperties(String str) {
        Object obj;
        IOException e;
        String str2;
        Properties properties;
        try {
            try {
                try {
                    synchronized (m_synch_object) {
                        try {
                            if (m_xml_properties == null) {
                                str2 = PROP_FILE_XML;
                                m_xml_properties = loadPropertiesFile(PROP_FILE_XML, null);
                            } else {
                                str2 = null;
                            }
                            if (str.equals("xml")) {
                                properties = m_xml_properties;
                            } else if (str.equals("html")) {
                                if (m_html_properties == null) {
                                    m_html_properties = loadPropertiesFile(PROP_FILE_HTML, m_xml_properties);
                                }
                                properties = m_html_properties;
                            } else if (str.equals("text")) {
                                if (m_text_properties == null) {
                                    try {
                                        Properties loadPropertiesFile = loadPropertiesFile(PROP_FILE_TEXT, m_xml_properties);
                                        m_text_properties = loadPropertiesFile;
                                        if (loadPropertiesFile.getProperty("encoding") == null) {
                                            m_text_properties.put("encoding", Encodings.getMimeEncoding(null));
                                        }
                                    } catch (IOException e2) {
                                        e = e2;
                                        obj = PROP_FILE_TEXT;
                                        throw new WrappedRuntimeException(com.sun.org.apache.xml.internal.serializer.utils.Utils.messages.createMessage("ER_COULD_NOT_LOAD_METHOD_PROPERTY", new Object[]{obj, str}), e);
                                    }
                                }
                                properties = m_text_properties;
                            } else if (str.equals("")) {
                                if (m_unknown_properties == null) {
                                    m_unknown_properties = loadPropertiesFile(PROP_FILE_UNKNOWN, m_xml_properties);
                                }
                                properties = m_unknown_properties;
                            } else {
                                properties = m_xml_properties;
                            }
                            return new Properties(properties);
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e4) {
            obj = null;
            e = e4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.Properties loadPropertiesFile(final java.lang.String r6, java.util.Properties r7) throws java.io.IOException {
        /*
            java.lang.String r0 = "ER_COULD_NOT_LOAD_RESOURCE"
            java.util.Properties r1 = new java.util.Properties
            r1.<init>(r7)
            r2 = 0
            java.lang.Class r3 = com.sun.org.apache.xml.internal.serializer.OutputPropertiesFactory.ACCESS_CONTROLLER_CLASS     // Catch: java.lang.Throwable -> L85 java.lang.SecurityException -> L88 java.io.IOException -> L9d
            if (r3 == 0) goto L18
            com.sun.org.apache.xml.internal.serializer.OutputPropertiesFactory$1 r3 = new com.sun.org.apache.xml.internal.serializer.OutputPropertiesFactory$1     // Catch: java.lang.Throwable -> L85 java.lang.SecurityException -> L88 java.io.IOException -> L9d
            r3.<init>()     // Catch: java.lang.Throwable -> L85 java.lang.SecurityException -> L88 java.io.IOException -> L9d
            java.lang.Object r3 = java.security.AccessController.doPrivileged(r3)     // Catch: java.lang.Throwable -> L85 java.lang.SecurityException -> L88 java.io.IOException -> L9d
            java.io.InputStream r3 = (java.io.InputStream) r3     // Catch: java.lang.Throwable -> L85 java.lang.SecurityException -> L88 java.io.IOException -> L9d
            goto L1e
        L18:
            java.lang.Class<com.sun.org.apache.xml.internal.serializer.OutputPropertiesFactory> r3 = com.sun.org.apache.xml.internal.serializer.OutputPropertiesFactory.class
            java.io.InputStream r3 = r3.getResourceAsStream(r6)     // Catch: java.lang.Throwable -> L85 java.lang.SecurityException -> L88 java.io.IOException -> L9d
        L1e:
            java.io.BufferedInputStream r4 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L7b java.lang.SecurityException -> L7d java.io.IOException -> L81
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L7b java.lang.SecurityException -> L7d java.io.IOException -> L81
            r1.load(r4)     // Catch: java.lang.Throwable -> L75 java.lang.SecurityException -> L77 java.io.IOException -> L79
            r4.close()
            if (r3 == 0) goto L2e
            r3.close()
        L2e:
            java.lang.Object r6 = r1.clone()
            java.util.Properties r6 = (java.util.Properties) r6
            java.util.Enumeration r6 = r6.keys()
        L38:
            boolean r7 = r6.hasMoreElements()
            if (r7 == 0) goto L74
            java.lang.Object r7 = r6.nextElement()
            java.lang.String r7 = (java.lang.String) r7
            java.lang.String r0 = java.lang.System.getProperty(r7)     // Catch: java.lang.SecurityException -> L49
            goto L4a
        L49:
            r0 = r2
        L4a:
            if (r0 != 0) goto L52
            java.lang.Object r0 = r1.get(r7)
            java.lang.String r0 = (java.lang.String) r0
        L52:
            r3 = 1
            java.lang.String r3 = fixupPropertyString(r7, r3)
            java.lang.String r4 = java.lang.System.getProperty(r3)     // Catch: java.lang.SecurityException -> L5c
            goto L5d
        L5c:
            r4 = r2
        L5d:
            r5 = 0
            if (r4 != 0) goto L65
            java.lang.String r4 = fixupPropertyString(r0, r5)
            goto L69
        L65:
            java.lang.String r4 = fixupPropertyString(r4, r5)
        L69:
            if (r7 != r3) goto L6d
            if (r0 == r4) goto L38
        L6d:
            r1.remove(r7)
            r1.put(r3, r4)
            goto L38
        L74:
            return r1
        L75:
            r6 = move-exception
            goto Lb4
        L77:
            r1 = move-exception
            goto L7f
        L79:
            r1 = move-exception
            goto L83
        L7b:
            r6 = move-exception
            goto Lb5
        L7d:
            r1 = move-exception
            r4 = r2
        L7f:
            r2 = r3
            goto L8a
        L81:
            r1 = move-exception
            r4 = r2
        L83:
            r2 = r3
            goto L9f
        L85:
            r6 = move-exception
            r3 = r2
            goto Lb5
        L88:
            r1 = move-exception
            r4 = r2
        L8a:
            if (r7 != 0) goto L8d
            throw r1     // Catch: java.lang.Throwable -> Lb2
        L8d:
            com.sun.org.apache.xml.internal.serializer.utils.WrappedRuntimeException r7 = new com.sun.org.apache.xml.internal.serializer.utils.WrappedRuntimeException     // Catch: java.lang.Throwable -> Lb2
            com.sun.org.apache.xml.internal.serializer.utils.Messages r3 = com.sun.org.apache.xml.internal.serializer.utils.Utils.messages     // Catch: java.lang.Throwable -> Lb2
            java.lang.Object[] r6 = new java.lang.Object[]{r6}     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r6 = r3.createMessage(r0, r6)     // Catch: java.lang.Throwable -> Lb2
            r7.<init>(r6, r1)     // Catch: java.lang.Throwable -> Lb2
            throw r7     // Catch: java.lang.Throwable -> Lb2
        L9d:
            r1 = move-exception
            r4 = r2
        L9f:
            if (r7 != 0) goto La2
            throw r1     // Catch: java.lang.Throwable -> Lb2
        La2:
            com.sun.org.apache.xml.internal.serializer.utils.WrappedRuntimeException r7 = new com.sun.org.apache.xml.internal.serializer.utils.WrappedRuntimeException     // Catch: java.lang.Throwable -> Lb2
            com.sun.org.apache.xml.internal.serializer.utils.Messages r3 = com.sun.org.apache.xml.internal.serializer.utils.Utils.messages     // Catch: java.lang.Throwable -> Lb2
            java.lang.Object[] r6 = new java.lang.Object[]{r6}     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r6 = r3.createMessage(r0, r6)     // Catch: java.lang.Throwable -> Lb2
            r7.<init>(r6, r1)     // Catch: java.lang.Throwable -> Lb2
            throw r7     // Catch: java.lang.Throwable -> Lb2
        Lb2:
            r6 = move-exception
            r3 = r2
        Lb4:
            r2 = r4
        Lb5:
            if (r2 == 0) goto Lba
            r2.close()
        Lba:
            if (r3 == 0) goto Lbf
            r3.close()
        Lbf:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.serializer.OutputPropertiesFactory.loadPropertiesFile(java.lang.String, java.util.Properties):java.util.Properties");
    }
}
