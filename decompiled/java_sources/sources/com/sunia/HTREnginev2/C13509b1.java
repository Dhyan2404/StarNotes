package com.sunia.HTREnginev2;

import java.util.List;

/* renamed from: com.sunia.HTREnginev2.b1 */
/* loaded from: classes10.dex */
public class C13509b1 {

    /* renamed from: a */
    public final List<List<C13507b>> f65275a;

    /* renamed from: b */
    public final List<List<C14219p1>> f65276b;

    /* renamed from: c */
    public final double f65277c;

    /* renamed from: d */
    public final String f65278d;

    public C13509b1(List<List<C13507b>> list, List<List<C14219p1>> list2, double d, String str) {
        this.f65275a = list;
        this.f65276b = list2;
        this.f65277c = d;
        this.f65278d = str;
    }

    /* renamed from: a */
    public int m53151a() {
        return this.f65275a.size();
    }

    /* renamed from: b */
    public List<C14219p1> m53153b(int i) {
        return this.f65276b.get(i);
    }

    public String toString() {
        return "Recognition{tokens=" + this.f65275a + ", traces=" + this.f65276b + ", confidence=" + this.f65277c + '}';
    }

    /* renamed from: a */
    public List<C13507b> m53152a(int i) {
        return this.f65275a.get(i);
    }
}
