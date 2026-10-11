package com.sunia.HTREnginev2;

/* renamed from: com.sunia.HTREnginev2.l1 */
/* loaded from: classes10.dex */
public class C14023l1 {

    /* renamed from: d */
    public static final C14023l1[] f76022d = new C14023l1[0];

    /* renamed from: a */
    public final int f76023a;

    /* renamed from: b */
    public final String f76024b;

    /* renamed from: c */
    public final C14023l1[] f76025c;

    public C14023l1(int i, String str, C14023l1... c14023l1Arr) {
        this.f76023a = i;
        this.f76024b = str;
        this.f76025c = c14023l1Arr;
    }

    /* renamed from: a */
    public int m55363a() {
        return this.f76023a;
    }

    /* renamed from: b */
    public C14023l1[] m55365b() {
        return this.f76025c;
    }

    /* renamed from: c */
    public String m55366c() {
        return this.f76024b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        m55364a(sb);
        return sb.toString();
    }

    /* renamed from: a */
    public static C14023l1 m55361a(int i, String str) {
        return new C14023l1(i, str, f76022d);
    }

    /* renamed from: a */
    public static C14023l1 m55362a(int i, String str, C14023l1... c14023l1Arr) {
        return new C14023l1(i, str, c14023l1Arr);
    }

    /* renamed from: a */
    public void m55364a(StringBuilder sb) {
        sb.append('(');
        sb.append(this.f76023a);
        sb.append("\"");
        sb.append(this.f76024b.replace("\"", "\\\""));
        sb.append("\"");
        for (C14023l1 c14023l1 : this.f76025c) {
            sb.append(' ');
            c14023l1.m55364a(sb);
        }
        sb.append(')');
    }
}
