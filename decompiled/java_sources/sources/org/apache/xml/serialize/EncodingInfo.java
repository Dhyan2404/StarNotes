package org.apache.xml.serialize;

import com.alibaba.fastjson2.JSONB;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import org.apache.xerces.util.EncodingMap;

/* loaded from: classes13.dex */
public class EncodingInfo {

    /* renamed from: b */
    public String f113638b;

    /* renamed from: c */
    public String f113639c;

    /* renamed from: d */
    public int f113640d;

    /* renamed from: a */
    public Object[] f113637a = null;

    /* renamed from: e */
    public Object f113641e = null;

    /* renamed from: f */
    public Object f113642f = null;

    /* renamed from: g */
    public boolean f113643g = false;

    /* renamed from: h */
    public boolean f113644h = false;

    /* renamed from: org.apache.xml.serialize.EncodingInfo$a */
    /* loaded from: classes13.dex */
    public static class C20093a {

        /* renamed from: a */
        public static java.lang.reflect.Method f113645a;

        /* renamed from: b */
        public static java.lang.reflect.Method f113646b;

        /* renamed from: c */
        public static boolean f113647c;

        /* renamed from: d */
        public static /* synthetic */ Class f113648d;

        static {
            try {
                Class<?> cls = Class.forName("sun.io.CharToByteConverter");
                Class<?>[] clsArr = new Class[1];
                Class<?> cls2 = f113648d;
                if (cls2 == null) {
                    cls2 = class$("java.lang.String");
                    f113648d = cls2;
                }
                clsArr[0] = cls2;
                f113645a = cls.getMethod("getConverter", clsArr);
                f113646b = cls.getMethod("canConvert", Character.TYPE);
                f113647c = true;
            } catch (Exception unused) {
                f113645a = null;
                f113646b = null;
                f113647c = false;
            }
        }

        public static /* synthetic */ Class class$(String str) {
            try {
                return Class.forName(str);
            } catch (ClassNotFoundException e) {
                throw new NoClassDefFoundError(e.getMessage());
            }
        }
    }

    /* renamed from: org.apache.xml.serialize.EncodingInfo$b */
    /* loaded from: classes13.dex */
    public static class C20094b {

        /* renamed from: a */
        public static java.lang.reflect.Method f113649a;

        /* renamed from: b */
        public static java.lang.reflect.Method f113650b;

        /* renamed from: c */
        public static java.lang.reflect.Method f113651c;

        /* renamed from: d */
        public static java.lang.reflect.Method f113652d;

        /* renamed from: e */
        public static boolean f113653e;

        /* renamed from: f */
        public static /* synthetic */ Class f113654f;

        static {
            try {
                Class<?> cls = Class.forName("java.nio.charset.Charset");
                Class<?> cls2 = Class.forName("java.nio.charset.CharsetEncoder");
                Class<?>[] clsArr = new Class[1];
                Class<?> cls3 = f113654f;
                if (cls3 == null) {
                    cls3 = class$("java.lang.String");
                    f113654f = cls3;
                }
                clsArr[0] = cls3;
                f113649a = cls.getMethod("forName", clsArr);
                f113650b = cls.getMethod("canEncode", new Class[0]);
                f113651c = cls.getMethod("newEncoder", new Class[0]);
                f113652d = cls2.getMethod("canEncode", Character.TYPE);
                f113653e = true;
            } catch (Exception unused) {
                f113649a = null;
                f113650b = null;
                f113652d = null;
                f113651c = null;
                f113653e = false;
            }
        }

        public static /* synthetic */ Class class$(String str) {
            try {
                return Class.forName(str);
            } catch (ClassNotFoundException e) {
                throw new NoClassDefFoundError(e.getMessage());
            }
        }
    }

    public EncodingInfo(String str, String str2, int i) {
        this.f113638b = str;
        this.f113639c = EncodingMap.getIANA2JavaMapping(str);
        this.f113640d = i;
    }

    public static void testJavaEncodingName(String str) throws UnsupportedEncodingException {
        new String(new byte[]{118, 97, 108, JSONB.Constants.BC_STR_ASCII_FIX_32, 100}, str);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:17:0x0047
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m70670a(char r7) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.f113641e
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 != 0) goto L49
            boolean r0 = org.apache.xml.serialize.EncodingInfo.C20094b.m70674a()
            if (r0 == 0) goto L49
            boolean r0 = r6.f113644h
            if (r0 != 0) goto L49
            java.lang.Object[] r0 = r6.f113637a
            if (r0 != 0) goto L19
            java.lang.Object[] r0 = new java.lang.Object[r1]
            r6.f113637a = r0
        L19:
            java.lang.Object[] r0 = r6.f113637a     // Catch: java.lang.Exception -> L47
            java.lang.String r4 = r6.f113639c     // Catch: java.lang.Exception -> L47
            r0[r3] = r4     // Catch: java.lang.Exception -> L47
            java.lang.reflect.Method r0 = org.apache.xml.serialize.EncodingInfo.C20094b.m70675b()     // Catch: java.lang.Exception -> L47
            java.lang.Object[] r4 = r6.f113637a     // Catch: java.lang.Exception -> L47
            java.lang.Object r0 = r0.invoke(r2, r4)     // Catch: java.lang.Exception -> L47
            java.lang.reflect.Method r4 = org.apache.xml.serialize.EncodingInfo.C20094b.m70676c()     // Catch: java.lang.Exception -> L47
            java.lang.Object r4 = r4.invoke(r0, r2)     // Catch: java.lang.Exception -> L47
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.lang.Exception -> L47
            boolean r4 = r4.booleanValue()     // Catch: java.lang.Exception -> L47
            if (r4 == 0) goto L44
            java.lang.reflect.Method r4 = org.apache.xml.serialize.EncodingInfo.C20094b.m70677d()     // Catch: java.lang.Exception -> L47
            java.lang.Object r0 = r4.invoke(r0, r2)     // Catch: java.lang.Exception -> L47
            r6.f113641e = r0     // Catch: java.lang.Exception -> L47
            goto L49
        L44:
            r6.f113644h = r1     // Catch: java.lang.Exception -> L47
            goto L49
        L47:
            r6.f113644h = r1
        L49:
            java.lang.Object r0 = r6.f113641e
            if (r0 == 0) goto L6d
            java.lang.Object[] r0 = r6.f113637a     // Catch: java.lang.Exception -> L69
            java.lang.Character r4 = new java.lang.Character     // Catch: java.lang.Exception -> L69
            r4.<init>(r7)     // Catch: java.lang.Exception -> L69
            r0[r3] = r4     // Catch: java.lang.Exception -> L69
            java.lang.reflect.Method r0 = org.apache.xml.serialize.EncodingInfo.C20094b.m70678e()     // Catch: java.lang.Exception -> L69
            java.lang.Object r4 = r6.f113641e     // Catch: java.lang.Exception -> L69
            java.lang.Object[] r5 = r6.f113637a     // Catch: java.lang.Exception -> L69
            java.lang.Object r0 = r0.invoke(r4, r5)     // Catch: java.lang.Exception -> L69
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Exception -> L69
            boolean r6 = r0.booleanValue()     // Catch: java.lang.Exception -> L69
            return r6
        L69:
            r6.f113641e = r2
            r6.f113644h = r3
        L6d:
            java.lang.Object r0 = r6.f113642f
            if (r0 != 0) goto L9a
            boolean r0 = r6.f113643g
            if (r0 != 0) goto L99
            boolean r0 = org.apache.xml.serialize.EncodingInfo.C20093a.m70671a()
            if (r0 != 0) goto L7c
            goto L99
        L7c:
            java.lang.Object[] r0 = r6.f113637a
            if (r0 != 0) goto L84
            java.lang.Object[] r0 = new java.lang.Object[r1]
            r6.f113637a = r0
        L84:
            java.lang.Object[] r0 = r6.f113637a     // Catch: java.lang.Exception -> L97
            java.lang.String r4 = r6.f113639c     // Catch: java.lang.Exception -> L97
            r0[r3] = r4     // Catch: java.lang.Exception -> L97
            java.lang.reflect.Method r0 = org.apache.xml.serialize.EncodingInfo.C20093a.m70672b()     // Catch: java.lang.Exception -> L97
            java.lang.Object[] r4 = r6.f113637a     // Catch: java.lang.Exception -> L97
            java.lang.Object r0 = r0.invoke(r2, r4)     // Catch: java.lang.Exception -> L97
            r6.f113642f = r0     // Catch: java.lang.Exception -> L97
            goto L9a
        L97:
            r6.f113643g = r1
        L99:
            return r3
        L9a:
            java.lang.Object[] r0 = r6.f113637a     // Catch: java.lang.Exception -> Lb6
            java.lang.Character r1 = new java.lang.Character     // Catch: java.lang.Exception -> Lb6
            r1.<init>(r7)     // Catch: java.lang.Exception -> Lb6
            r0[r3] = r1     // Catch: java.lang.Exception -> Lb6
            java.lang.reflect.Method r7 = org.apache.xml.serialize.EncodingInfo.C20093a.m70673c()     // Catch: java.lang.Exception -> Lb6
            java.lang.Object r0 = r6.f113642f     // Catch: java.lang.Exception -> Lb6
            java.lang.Object[] r1 = r6.f113637a     // Catch: java.lang.Exception -> Lb6
            java.lang.Object r7 = r7.invoke(r0, r1)     // Catch: java.lang.Exception -> Lb6
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Exception -> Lb6
            boolean r6 = r7.booleanValue()     // Catch: java.lang.Exception -> Lb6
            return r6
        Lb6:
            r6.f113642f = r2
            r6.f113643g = r3
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xml.serialize.EncodingInfo.m70670a(char):boolean");
    }

    public String getIANAName() {
        return this.f113638b;
    }

    public Writer getWriter(OutputStream outputStream) throws UnsupportedEncodingException {
        if (this.f113639c != null) {
            return new OutputStreamWriter(outputStream, this.f113639c);
        }
        String iANA2JavaMapping = EncodingMap.getIANA2JavaMapping(this.f113638b);
        this.f113639c = iANA2JavaMapping;
        return iANA2JavaMapping == null ? new OutputStreamWriter(outputStream, "UTF8") : new OutputStreamWriter(outputStream, this.f113639c);
    }

    public boolean isPrintable(char c) {
        if (c <= this.f113640d) {
            return true;
        }
        return m70670a(c);
    }
}
