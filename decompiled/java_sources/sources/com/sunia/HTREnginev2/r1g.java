package com.sunia.HTREnginev2;

import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;

/* loaded from: classes4.dex */
public final class r1g {

    /* renamed from: a */
    public final boolean f82639a;

    /* renamed from: b */
    public final DataCharacter f82640b;

    /* renamed from: c */
    public final DataCharacter f82641c;

    /* renamed from: d */
    public final FinderPattern f82642d;

    public r1g(DataCharacter dataCharacter, DataCharacter dataCharacter2, FinderPattern finderPattern, boolean z) {
        this.f82640b = dataCharacter;
        this.f82641c = dataCharacter2;
        this.f82642d = finderPattern;
        this.f82639a = z;
    }

    /* renamed from: a */
    public static boolean m56878a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: e */
    public static int m56879e(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* renamed from: b */
    public FinderPattern m56880b() {
        return this.f82642d;
    }

    /* renamed from: c */
    public DataCharacter m56881c() {
        return this.f82640b;
    }

    /* renamed from: d */
    public DataCharacter m56882d() {
        return this.f82641c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof r1g)) {
            return false;
        }
        r1g r1gVar = (r1g) obj;
        return m56878a(this.f82640b, r1gVar.f82640b) && m56878a(this.f82641c, r1gVar.f82641c) && m56878a(this.f82642d, r1gVar.f82642d);
    }

    /* renamed from: f */
    public boolean m56883f() {
        return this.f82639a;
    }

    /* renamed from: g */
    public boolean m56884g() {
        return this.f82641c == null;
    }

    public int hashCode() {
        return m56879e(this.f82642d) ^ (m56879e(this.f82640b) ^ m56879e(this.f82641c));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[ ");
        sb.append(this.f82640b);
        sb.append(" , ");
        sb.append(this.f82641c);
        sb.append(" : ");
        FinderPattern finderPattern = this.f82642d;
        sb.append(finderPattern == null ? "null" : Integer.valueOf(finderPattern.getValue()));
        sb.append(" ]");
        return sb.toString();
    }
}
