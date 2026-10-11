package com.sun.org.apache.xml.internal.serializer;

import com.sun.org.apache.xml.internal.serializer.utils.WrappedRuntimeException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
import java.util.StringTokenizer;

/* loaded from: classes10.dex */
public final class Encodings {
    static final String DEFAULT_MIME_ENCODING = "UTF-8";
    private static final String ENCODINGS_FILE = "com/sun/org/apache/xml/internal/serializer/Encodings.properties";
    private static final String ENCODINGS_PROP = "com.sun.org.apache.xalan.internal.serialize.encodings";
    private static final Hashtable _encodingTableKeyJava = new Hashtable();
    private static final Hashtable _encodingTableKeyMime = new Hashtable();
    private static final EncodingInfo[] _encodings = loadEncodingInfo();
    private static final int m_defaultLastPrintable = 127;

    private static String convertJava2MimeEncoding(String str) {
        EncodingInfo encodingInfo = (EncodingInfo) _encodingTableKeyJava.get(str.toUpperCase());
        return encodingInfo != null ? encodingInfo.name : str;
    }

    public static String convertMime2JavaEncoding(String str) {
        int i = 0;
        while (true) {
            EncodingInfo[] encodingInfoArr = _encodings;
            if (i >= encodingInfoArr.length) {
                return str;
            }
            if (encodingInfoArr[i].name.equalsIgnoreCase(str)) {
                return encodingInfoArr[i].javaName;
            }
            i++;
        }
    }

    public static EncodingInfo getEncodingInfo(String str) {
        String upperCaseFast = toUpperCaseFast(str);
        EncodingInfo encodingInfo = (EncodingInfo) _encodingTableKeyJava.get(upperCaseFast);
        if (encodingInfo == null) {
            encodingInfo = (EncodingInfo) _encodingTableKeyMime.get(upperCaseFast);
        }
        return encodingInfo == null ? new EncodingInfo(null, null) : encodingInfo;
    }

    public static int getLastPrintable() {
        return 127;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getMimeEncoding(java.lang.String r3) {
        /*
            java.lang.String r0 = "UTF8"
            java.lang.String r1 = "UTF-8"
            if (r3 != 0) goto L37
            java.lang.String r3 = "file.encoding"
            java.lang.String r3 = java.lang.System.getProperty(r3, r0)     // Catch: java.lang.SecurityException -> L3b
            if (r3 == 0) goto L3b
            java.lang.String r2 = "Cp1252"
            boolean r2 = r3.equalsIgnoreCase(r2)     // Catch: java.lang.SecurityException -> L3b
            if (r2 != 0) goto L32
            java.lang.String r2 = "ISO8859_1"
            boolean r2 = r3.equalsIgnoreCase(r2)     // Catch: java.lang.SecurityException -> L3b
            if (r2 != 0) goto L32
            java.lang.String r2 = "8859_1"
            boolean r2 = r3.equalsIgnoreCase(r2)     // Catch: java.lang.SecurityException -> L3b
            if (r2 != 0) goto L32
            boolean r0 = r3.equalsIgnoreCase(r0)     // Catch: java.lang.SecurityException -> L3b
            if (r0 == 0) goto L2d
            goto L32
        L2d:
            java.lang.String r3 = convertJava2MimeEncoding(r3)     // Catch: java.lang.SecurityException -> L3b
            goto L33
        L32:
            r3 = r1
        L33:
            if (r3 == 0) goto L3b
            r1 = r3
            goto L3b
        L37:
            java.lang.String r1 = convertJava2MimeEncoding(r3)
        L3b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.serializer.Encodings.getMimeEncoding(java.lang.String):java.lang.String");
    }

    public static Writer getWriter(OutputStream outputStream, String str) throws UnsupportedEncodingException {
        int i = 0;
        while (true) {
            EncodingInfo[] encodingInfoArr = _encodings;
            if (i >= encodingInfoArr.length) {
                try {
                    return new OutputStreamWriter(outputStream, str);
                } catch (IllegalArgumentException unused) {
                    throw new UnsupportedEncodingException(str);
                }
            }
            if (encodingInfoArr[i].name.equalsIgnoreCase(str)) {
                try {
                    return new OutputStreamWriter(outputStream, encodingInfoArr[i].javaName);
                } catch (UnsupportedEncodingException | IllegalArgumentException unused2) {
                    continue;
                }
            }
            i++;
        }
    }

    public static boolean isHighUTF16Surrogate(char c) {
        return 55296 <= c && c <= 56319;
    }

    public static boolean isLowUTF16Surrogate(char c) {
        return 56320 <= c && c <= 57343;
    }

    private static EncodingInfo[] loadEncodingInfo() {
        String str;
        InputStream inputStream = null;
        try {
            try {
                str = System.getProperty(ENCODINGS_PROP, "");
            } catch (SecurityException unused) {
                str = null;
            }
            if (str != null && str.length() > 0) {
                inputStream = new URL(str).openStream();
            }
            if (inputStream == null) {
                inputStream = SecuritySupport.getInstance().getResourceAsStream(ObjectFactory.findClassLoader(), ENCODINGS_FILE);
            }
            Properties properties = new Properties();
            if (inputStream != null) {
                properties.load(inputStream);
                inputStream.close();
            }
            int size = properties.size();
            Enumeration keys = properties.keys();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                String property = properties.getProperty((String) keys.nextElement());
                i++;
                int indexOf = property.indexOf(32);
                for (int i3 = 0; i3 < indexOf; i3++) {
                    if (property.charAt(i3) == ',') {
                        i++;
                    }
                }
            }
            EncodingInfo[] encodingInfoArr = new EncodingInfo[i];
            Enumeration keys2 = properties.keys();
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                String str2 = (String) keys2.nextElement();
                String property2 = properties.getProperty(str2);
                int indexOf2 = property2.indexOf(32);
                if (indexOf2 >= 0) {
                    StringTokenizer stringTokenizer = new StringTokenizer(property2.substring(0, indexOf2), ",");
                    boolean z = true;
                    while (stringTokenizer.hasMoreTokens()) {
                        String nextToken = stringTokenizer.nextToken();
                        encodingInfoArr[i4] = new EncodingInfo(nextToken, str2);
                        _encodingTableKeyMime.put(nextToken.toUpperCase(), encodingInfoArr[i4]);
                        if (z) {
                            _encodingTableKeyJava.put(str2.toUpperCase(), encodingInfoArr[i4]);
                        }
                        i4++;
                        z = false;
                    }
                }
            }
            return encodingInfoArr;
        } catch (MalformedURLException e) {
            throw new WrappedRuntimeException(e);
        } catch (IOException e2) {
            throw new WrappedRuntimeException(e2);
        }
    }

    public static int toCodePoint(char c) {
        return c;
    }

    private static String toUpperCaseFast(String str) {
        int length = str.length();
        char[] cArr = new char[length];
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ('a' <= charAt && charAt <= 'z') {
                charAt = (char) (charAt - ' ');
                z = true;
            }
            cArr[i] = charAt;
        }
        return z ? String.valueOf(cArr) : str;
    }

    public static int toCodePoint(char c, char c2) {
        return ((c - 55296) << 10) + (c2 - 56320) + 65536;
    }
}
