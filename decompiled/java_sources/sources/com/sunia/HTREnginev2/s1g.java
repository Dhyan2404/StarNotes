package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public final class s1g {

    /* renamed from: a */
    public final List<r1g> f83709a;

    /* renamed from: b */
    public final int f83710b;

    /* renamed from: c */
    public final boolean f83711c;

    public s1g(List<r1g> list, int i, boolean z) {
        this.f83709a = new ArrayList(list);
        this.f83710b = i;
        this.f83711c = z;
    }

    /* renamed from: a */
    public List<r1g> m57121a() {
        return this.f83709a;
    }

    /* renamed from: b */
    public int m57122b() {
        return this.f83710b;
    }

    /* renamed from: c */
    public boolean m57123c(List<r1g> list) {
        return this.f83709a.equals(list);
    }

    /* renamed from: d */
    public boolean m57124d() {
        return this.f83711c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof s1g)) {
            return false;
        }
        s1g s1gVar = (s1g) obj;
        return this.f83709a.equals(s1gVar.m57121a()) && this.f83711c == s1gVar.f83711c;
    }

    public int hashCode() {
        return Boolean.valueOf(this.f83711c).hashCode() ^ this.f83709a.hashCode();
    }

    public String toString() {
        return "{ " + this.f83709a + " }";
    }
}
