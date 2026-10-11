package com.sunia.HTREnginev2;

import com.google.zxing.Dimension;
import com.google.zxing.datamatrix.encoder.SymbolInfo;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import java.nio.charset.Charset;

/* loaded from: classes4.dex */
public final class hpf {

    /* renamed from: a */
    public final String f72443a;

    /* renamed from: b */
    public SymbolShapeHint f72444b;

    /* renamed from: c */
    public Dimension f72445c;

    /* renamed from: d */
    public Dimension f72446d;

    /* renamed from: e */
    public final StringBuilder f72447e;

    /* renamed from: f */
    public int f72448f;

    /* renamed from: g */
    public int f72449g;

    /* renamed from: h */
    public SymbolInfo f72450h;

    /* renamed from: i */
    public int f72451i;

    public hpf(String str) {
        byte[] bytes = str.getBytes(Charset.forName("ISO-8859-1"));
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            char c = (char) (bytes[i] & 255);
            if (c == '?' && str.charAt(i) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb.append(c);
        }
        this.f72443a = sb.toString();
        this.f72444b = SymbolShapeHint.FORCE_NONE;
        this.f72447e = new StringBuilder(str.length());
        this.f72449g = -1;
    }

    /* renamed from: a */
    public int m54591a() {
        return this.f72447e.length();
    }

    /* renamed from: b */
    public StringBuilder m54592b() {
        return this.f72447e;
    }

    /* renamed from: c */
    public char m54593c() {
        return this.f72443a.charAt(this.f72448f);
    }

    /* renamed from: d */
    public char m54594d() {
        return this.f72443a.charAt(this.f72448f);
    }

    /* renamed from: e */
    public String m54595e() {
        return this.f72443a;
    }

    /* renamed from: f */
    public int m54596f() {
        return this.f72449g;
    }

    /* renamed from: g */
    public int m54597g() {
        return m54599i() - this.f72448f;
    }

    /* renamed from: h */
    public SymbolInfo m54598h() {
        return this.f72450h;
    }

    /* renamed from: i */
    public final int m54599i() {
        return this.f72443a.length() - this.f72451i;
    }

    /* renamed from: j */
    public boolean m54600j() {
        return this.f72448f < m54599i();
    }

    /* renamed from: k */
    public void m54601k() {
        this.f72449g = -1;
    }

    /* renamed from: l */
    public void m54602l() {
        this.f72450h = null;
    }

    /* renamed from: m */
    public void m54603m(Dimension dimension, Dimension dimension2) {
        this.f72445c = dimension;
        this.f72446d = dimension2;
    }

    /* renamed from: n */
    public void m54604n(int i) {
        this.f72451i = i;
    }

    /* renamed from: o */
    public void m54605o(SymbolShapeHint symbolShapeHint) {
        this.f72444b = symbolShapeHint;
    }

    /* renamed from: p */
    public void m54606p(int i) {
        this.f72449g = i;
    }

    /* renamed from: q */
    public void m54607q() {
        m54608r(m54591a());
    }

    /* renamed from: r */
    public void m54608r(int i) {
        SymbolInfo symbolInfo = this.f72450h;
        if (symbolInfo == null || i > symbolInfo.getDataCapacity()) {
            this.f72450h = SymbolInfo.lookup(i, this.f72444b, this.f72445c, this.f72446d, true);
        }
    }

    /* renamed from: s */
    public void m54609s(char c) {
        this.f72447e.append(c);
    }

    /* renamed from: t */
    public void m54610t(String str) {
        this.f72447e.append(str);
    }
}
