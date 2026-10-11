package com.sun.org.apache.xml.internal.serialize;

import com.alibaba.fastjson2.JSONB;
import com.sun.org.apache.xerces.internal.util.EncodingMap;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;

/* loaded from: classes10.dex */
public class EncodingInfo {
    String ianaName;
    String javaName;
    int lastPrintable;
    private Object[] fArgsForMethod = null;
    Object fCharsetEncoder = null;
    Object fCharToByteConverter = null;
    boolean fHaveTriedCToB = false;
    boolean fHaveTriedCharsetEncoder = false;

    /* loaded from: classes10.dex */
    public static class CharToByteConverterMethods {
        private static java.lang.reflect.Method fgCanConvertMethod;
        private static boolean fgConvertersAvailable;
        private static java.lang.reflect.Method fgGetConverterMethod;

        static {
            try {
                Class<?> cls = Class.forName("sun.io.CharToByteConverter");
                fgGetConverterMethod = cls.getMethod("getConverter", String.class);
                fgCanConvertMethod = cls.getMethod("canConvert", Character.TYPE);
                fgConvertersAvailable = true;
            } catch (Exception unused) {
                fgGetConverterMethod = null;
                fgCanConvertMethod = null;
                fgConvertersAvailable = false;
            }
        }

        private CharToByteConverterMethods() {
        }
    }

    /* loaded from: classes10.dex */
    public static class CharsetMethods {
        private static java.lang.reflect.Method fgCharsetCanEncodeMethod;
        private static java.lang.reflect.Method fgCharsetEncoderCanEncodeMethod;
        private static java.lang.reflect.Method fgCharsetForNameMethod;
        private static java.lang.reflect.Method fgCharsetNewEncoderMethod;
        private static boolean fgNIOCharsetAvailable;

        static {
            try {
                Class<?> cls = Class.forName("java.nio.charset.Charset");
                Class<?> cls2 = Class.forName("java.nio.charset.CharsetEncoder");
                fgCharsetForNameMethod = cls.getMethod("forName", String.class);
                fgCharsetCanEncodeMethod = cls.getMethod("canEncode", new Class[0]);
                fgCharsetNewEncoderMethod = cls.getMethod("newEncoder", new Class[0]);
                fgCharsetEncoderCanEncodeMethod = cls2.getMethod("canEncode", Character.TYPE);
                fgNIOCharsetAvailable = true;
            } catch (Exception unused) {
                fgCharsetForNameMethod = null;
                fgCharsetCanEncodeMethod = null;
                fgCharsetEncoderCanEncodeMethod = null;
                fgCharsetNewEncoderMethod = null;
                fgNIOCharsetAvailable = false;
            }
        }

        private CharsetMethods() {
        }
    }

    public EncodingInfo(String str, String str2, int i) {
        this.ianaName = str;
        this.javaName = EncodingMap.getIANA2JavaMapping(str);
        this.lastPrintable = i;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:17:0x0047
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isPrintable0(char r7) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.fCharsetEncoder
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 != 0) goto L49
            boolean r0 = com.sun.org.apache.xml.internal.serialize.EncodingInfo.CharsetMethods.access$000()
            if (r0 == 0) goto L49
            boolean r0 = r6.fHaveTriedCharsetEncoder
            if (r0 != 0) goto L49
            java.lang.Object[] r0 = r6.fArgsForMethod
            if (r0 != 0) goto L19
            java.lang.Object[] r0 = new java.lang.Object[r1]
            r6.fArgsForMethod = r0
        L19:
            java.lang.Object[] r0 = r6.fArgsForMethod     // Catch: java.lang.Exception -> L47
            java.lang.String r4 = r6.javaName     // Catch: java.lang.Exception -> L47
            r0[r3] = r4     // Catch: java.lang.Exception -> L47
            java.lang.reflect.Method r0 = com.sun.org.apache.xml.internal.serialize.EncodingInfo.CharsetMethods.access$100()     // Catch: java.lang.Exception -> L47
            java.lang.Object[] r4 = r6.fArgsForMethod     // Catch: java.lang.Exception -> L47
            java.lang.Object r0 = r0.invoke(r2, r4)     // Catch: java.lang.Exception -> L47
            java.lang.reflect.Method r4 = com.sun.org.apache.xml.internal.serialize.EncodingInfo.CharsetMethods.access$200()     // Catch: java.lang.Exception -> L47
            java.lang.Object r4 = r4.invoke(r0, r2)     // Catch: java.lang.Exception -> L47
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.lang.Exception -> L47
            boolean r4 = r4.booleanValue()     // Catch: java.lang.Exception -> L47
            if (r4 == 0) goto L44
            java.lang.reflect.Method r4 = com.sun.org.apache.xml.internal.serialize.EncodingInfo.CharsetMethods.access$300()     // Catch: java.lang.Exception -> L47
            java.lang.Object r0 = r4.invoke(r0, r2)     // Catch: java.lang.Exception -> L47
            r6.fCharsetEncoder = r0     // Catch: java.lang.Exception -> L47
            goto L49
        L44:
            r6.fHaveTriedCharsetEncoder = r1     // Catch: java.lang.Exception -> L47
            goto L49
        L47:
            r6.fHaveTriedCharsetEncoder = r1
        L49:
            java.lang.Object r0 = r6.fCharsetEncoder
            if (r0 == 0) goto L6d
            java.lang.Object[] r0 = r6.fArgsForMethod     // Catch: java.lang.Exception -> L69
            java.lang.Character r4 = new java.lang.Character     // Catch: java.lang.Exception -> L69
            r4.<init>(r7)     // Catch: java.lang.Exception -> L69
            r0[r3] = r4     // Catch: java.lang.Exception -> L69
            java.lang.reflect.Method r0 = com.sun.org.apache.xml.internal.serialize.EncodingInfo.CharsetMethods.access$400()     // Catch: java.lang.Exception -> L69
            java.lang.Object r4 = r6.fCharsetEncoder     // Catch: java.lang.Exception -> L69
            java.lang.Object[] r5 = r6.fArgsForMethod     // Catch: java.lang.Exception -> L69
            java.lang.Object r0 = r0.invoke(r4, r5)     // Catch: java.lang.Exception -> L69
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Exception -> L69
            boolean r6 = r0.booleanValue()     // Catch: java.lang.Exception -> L69
            return r6
        L69:
            r6.fCharsetEncoder = r2
            r6.fHaveTriedCharsetEncoder = r3
        L6d:
            java.lang.Object r0 = r6.fCharToByteConverter
            if (r0 != 0) goto L9a
            boolean r0 = r6.fHaveTriedCToB
            if (r0 != 0) goto L99
            boolean r0 = com.sun.org.apache.xml.internal.serialize.EncodingInfo.CharToByteConverterMethods.access$500()
            if (r0 != 0) goto L7c
            goto L99
        L7c:
            java.lang.Object[] r0 = r6.fArgsForMethod
            if (r0 != 0) goto L84
            java.lang.Object[] r0 = new java.lang.Object[r1]
            r6.fArgsForMethod = r0
        L84:
            java.lang.Object[] r0 = r6.fArgsForMethod     // Catch: java.lang.Exception -> L97
            java.lang.String r4 = r6.javaName     // Catch: java.lang.Exception -> L97
            r0[r3] = r4     // Catch: java.lang.Exception -> L97
            java.lang.reflect.Method r0 = com.sun.org.apache.xml.internal.serialize.EncodingInfo.CharToByteConverterMethods.access$600()     // Catch: java.lang.Exception -> L97
            java.lang.Object[] r4 = r6.fArgsForMethod     // Catch: java.lang.Exception -> L97
            java.lang.Object r0 = r0.invoke(r2, r4)     // Catch: java.lang.Exception -> L97
            r6.fCharToByteConverter = r0     // Catch: java.lang.Exception -> L97
            goto L9a
        L97:
            r6.fHaveTriedCToB = r1
        L99:
            return r3
        L9a:
            java.lang.Object[] r0 = r6.fArgsForMethod     // Catch: java.lang.Exception -> Lb6
            java.lang.Character r1 = new java.lang.Character     // Catch: java.lang.Exception -> Lb6
            r1.<init>(r7)     // Catch: java.lang.Exception -> Lb6
            r0[r3] = r1     // Catch: java.lang.Exception -> Lb6
            java.lang.reflect.Method r7 = com.sun.org.apache.xml.internal.serialize.EncodingInfo.CharToByteConverterMethods.access$700()     // Catch: java.lang.Exception -> Lb6
            java.lang.Object r0 = r6.fCharToByteConverter     // Catch: java.lang.Exception -> Lb6
            java.lang.Object[] r1 = r6.fArgsForMethod     // Catch: java.lang.Exception -> Lb6
            java.lang.Object r7 = r7.invoke(r0, r1)     // Catch: java.lang.Exception -> Lb6
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Exception -> Lb6
            boolean r6 = r7.booleanValue()     // Catch: java.lang.Exception -> Lb6
            return r6
        Lb6:
            r6.fCharToByteConverter = r2
            r6.fHaveTriedCToB = r3
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.serialize.EncodingInfo.isPrintable0(char):boolean");
    }

    public static void testJavaEncodingName(String str) throws UnsupportedEncodingException {
        new String(new byte[]{118, 97, 108, JSONB.Constants.BC_STR_ASCII_FIX_32, 100}, str);
    }

    public String getIANAName() {
        return this.ianaName;
    }

    public Writer getWriter(OutputStream outputStream) throws UnsupportedEncodingException {
        if (this.javaName != null) {
            return new OutputStreamWriter(outputStream, this.javaName);
        }
        String iANA2JavaMapping = EncodingMap.getIANA2JavaMapping(this.ianaName);
        this.javaName = iANA2JavaMapping;
        return iANA2JavaMapping == null ? new OutputStreamWriter(outputStream, "UTF8") : new OutputStreamWriter(outputStream, this.javaName);
    }

    public boolean isPrintable(char c) {
        if (c <= this.lastPrintable) {
            return true;
        }
        return isPrintable0(c);
    }
}
