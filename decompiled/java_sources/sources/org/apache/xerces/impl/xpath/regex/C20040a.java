package org.apache.xerces.impl.xpath.regex;

import java.util.Vector;

/* renamed from: org.apache.xerces.impl.xpath.regex.a */
/* loaded from: classes13.dex */
public class C20040a {

    /* renamed from: c */
    public static final int f112589c = 0;

    /* renamed from: d */
    public static final int f112590d = 1;

    /* renamed from: e */
    public static final int f112591e = 3;

    /* renamed from: f */
    public static final int f112592f = 4;

    /* renamed from: g */
    public static final int f112593g = 5;

    /* renamed from: h */
    public static final int f112594h = 6;

    /* renamed from: i */
    public static final int f112595i = 7;

    /* renamed from: j */
    public static final int f112596j = 8;

    /* renamed from: k */
    public static final int f112597k = 9;

    /* renamed from: l */
    public static final int f112598l = 10;

    /* renamed from: m */
    public static final int f112599m = 11;

    /* renamed from: n */
    public static final int f112600n = 15;

    /* renamed from: o */
    public static final int f112601o = 16;

    /* renamed from: p */
    public static final int f112602p = 20;

    /* renamed from: q */
    public static final int f112603q = 21;

    /* renamed from: r */
    public static final int f112604r = 22;

    /* renamed from: s */
    public static final int f112605s = 23;

    /* renamed from: t */
    public static final int f112606t = 24;

    /* renamed from: u */
    public static final int f112607u = 25;

    /* renamed from: v */
    public static final int f112608v = 26;

    /* renamed from: w */
    public static int f112609w;

    /* renamed from: x */
    public static final boolean f112610x = false;

    /* renamed from: a */
    public final int f112611a;

    /* renamed from: b */
    public C20040a f112612b = null;

    /* renamed from: org.apache.xerces.impl.xpath.regex.a$a */
    /* loaded from: classes13.dex */
    public static class a extends C20040a {

        /* renamed from: y */
        public final int f112613y;

        public a(int i, int i2) {
            super(i);
            this.f112613y = i2;
        }

        @Override // org.apache.xerces.impl.xpath.regex.C20040a
        /* renamed from: r */
        public int mo70054r() {
            return this.f112613y;
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.regex.a$b */
    /* loaded from: classes13.dex */
    public static class b extends C20040a {

        /* renamed from: y */
        public C20040a f112614y;

        public b(int i) {
            super(i);
        }

        @Override // org.apache.xerces.impl.xpath.regex.C20040a
        /* renamed from: q */
        public C20040a mo70053q() {
            return this.f112614y;
        }

        /* renamed from: w */
        public void m70059w(C20040a c20040a) {
            this.f112614y = c20040a;
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.regex.a$c */
    /* loaded from: classes13.dex */
    public static class c extends C20040a {

        /* renamed from: A */
        public final C20040a f112615A;

        /* renamed from: B */
        public final C20040a f112616B;

        /* renamed from: y */
        public final int f112617y;

        /* renamed from: z */
        public final C20040a f112618z;

        public c(int i, int i2, C20040a c20040a, C20040a c20040a2, C20040a c20040a3) {
            super(i);
            this.f112617y = i2;
            this.f112618z = c20040a;
            this.f112615A = c20040a2;
            this.f112616B = c20040a3;
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.regex.a$d */
    /* loaded from: classes13.dex */
    public static class d extends b {

        /* renamed from: A */
        public final int f112619A;

        /* renamed from: z */
        public final int f112620z;

        public d(int i, int i2, int i3) {
            super(i);
            this.f112620z = i2;
            this.f112619A = i3;
        }

        @Override // org.apache.xerces.impl.xpath.regex.C20040a
        /* renamed from: r */
        public int mo70054r() {
            return this.f112620z;
        }

        @Override // org.apache.xerces.impl.xpath.regex.C20040a
        /* renamed from: s */
        public int mo70055s() {
            return this.f112619A;
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.regex.a$e */
    /* loaded from: classes13.dex */
    public static class e extends C20040a {

        /* renamed from: y */
        public final Token f112621y;

        public e(int i, Token token) {
            super(i);
            this.f112621y = token;
        }

        @Override // org.apache.xerces.impl.xpath.regex.C20040a
        /* renamed from: u */
        public RangeToken mo70057u() {
            return (RangeToken) this.f112621y;
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.regex.a$f */
    /* loaded from: classes13.dex */
    public static class f extends C20040a {

        /* renamed from: y */
        public final String f112622y;

        public f(int i, String str) {
            super(i);
            this.f112622y = str;
        }

        @Override // org.apache.xerces.impl.xpath.regex.C20040a
        /* renamed from: t */
        public String mo70056t() {
            return this.f112622y;
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.regex.a$g */
    /* loaded from: classes13.dex */
    public static class g extends C20040a {

        /* renamed from: y */
        public final Vector f112623y;

        public g(int i, int i2) {
            super(i);
            this.f112623y = new Vector(i2);
        }

        @Override // org.apache.xerces.impl.xpath.regex.C20040a
        /* renamed from: p */
        public C20040a mo70052p(int i) {
            return (C20040a) this.f112623y.elementAt(i);
        }

        @Override // org.apache.xerces.impl.xpath.regex.C20040a
        /* renamed from: v */
        public int mo70058v() {
            return this.f112623y.size();
        }

        /* renamed from: w */
        public void m70060w(C20040a c20040a) {
            this.f112623y.addElement(c20040a);
        }
    }

    public C20040a(int i) {
        this.f112611a = i;
    }

    /* renamed from: a */
    public static a m70037a(int i) {
        return new a(5, i);
    }

    /* renamed from: b */
    public static a m70038b(int i) {
        return new a(16, i);
    }

    /* renamed from: c */
    public static a m70039c(int i, C20040a c20040a) {
        a aVar = new a(15, i);
        aVar.f112612b = c20040a;
        return aVar;
    }

    /* renamed from: d */
    public static a m70040d(int i) {
        return new a(1, i);
    }

    /* renamed from: e */
    public static b m70041e(int i) {
        return new d(7, i, -1);
    }

    /* renamed from: f */
    public static c m70042f(C20040a c20040a, int i, C20040a c20040a2, C20040a c20040a3, C20040a c20040a4) {
        c cVar = new c(26, i, c20040a2, c20040a3, c20040a4);
        cVar.f112612b = c20040a;
        return cVar;
    }

    /* renamed from: g */
    public static C20040a m70043g() {
        return new C20040a(0);
    }

    /* renamed from: h */
    public static b m70044h(C20040a c20040a, C20040a c20040a2) {
        b bVar = new b(24);
        bVar.m70059w(c20040a2);
        bVar.f112612b = c20040a;
        return bVar;
    }

    /* renamed from: i */
    public static b m70045i(int i, C20040a c20040a, C20040a c20040a2) {
        b bVar = new b(i);
        bVar.m70059w(c20040a2);
        bVar.f112612b = c20040a;
        return bVar;
    }

    /* renamed from: j */
    public static d m70046j(C20040a c20040a, C20040a c20040a2, int i, int i2) {
        d dVar = new d(25, i, i2);
        dVar.m70059w(c20040a2);
        dVar.f112612b = c20040a;
        return dVar;
    }

    /* renamed from: k */
    public static b m70047k() {
        return new b(8);
    }

    /* renamed from: l */
    public static b m70048l(boolean z) {
        return new b(z ? 10 : 9);
    }

    /* renamed from: m */
    public static e m70049m(Token token) {
        return new e(3, token);
    }

    /* renamed from: n */
    public static f m70050n(String str) {
        return new f(6, str);
    }

    /* renamed from: o */
    public static g m70051o(int i) {
        return new g(11, i);
    }

    /* renamed from: p */
    public C20040a mo70052p(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Internal Error: type=");
        stringBuffer.append(this.f112611a);
        throw new RuntimeException(stringBuffer.toString());
    }

    /* renamed from: q */
    public C20040a mo70053q() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Internal Error: type=");
        stringBuffer.append(this.f112611a);
        throw new RuntimeException(stringBuffer.toString());
    }

    /* renamed from: r */
    public int mo70054r() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Internal Error: type=");
        stringBuffer.append(this.f112611a);
        throw new RuntimeException(stringBuffer.toString());
    }

    /* renamed from: s */
    public int mo70055s() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Internal Error: type=");
        stringBuffer.append(this.f112611a);
        throw new RuntimeException(stringBuffer.toString());
    }

    /* renamed from: t */
    public String mo70056t() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Internal Error: type=");
        stringBuffer.append(this.f112611a);
        throw new RuntimeException(stringBuffer.toString());
    }

    /* renamed from: u */
    public RangeToken mo70057u() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Internal Error: type=");
        stringBuffer.append(this.f112611a);
        throw new RuntimeException(stringBuffer.toString());
    }

    /* renamed from: v */
    public int mo70058v() {
        return 0;
    }
}
