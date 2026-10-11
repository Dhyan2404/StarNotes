package com.sunia.HTREnginev2;

import java.util.BitSet;
import org.apache.commons.compress.archivers.sevenz.SevenZArchiveEntry;

/* renamed from: com.sunia.HTREnginev2.od */
/* loaded from: classes12.dex */
public class C14182od {

    /* renamed from: a */
    public long f79579a;

    /* renamed from: c */
    public BitSet f79581c;

    /* renamed from: d */
    public long[] f79582d;

    /* renamed from: f */
    public b5n f79584f;

    /* renamed from: h */
    public d0n f79586h;

    /* renamed from: b */
    public long[] f79580b = new long[0];

    /* renamed from: e */
    public sog[] f79583e = sog.f84390j;

    /* renamed from: g */
    public SevenZArchiveEntry[] f79585g = SevenZArchiveEntry.f105604w;

    /* renamed from: a */
    public static String m55940a(long[] jArr) {
        return jArr == null ? "(null)" : String.valueOf(jArr.length);
    }

    /* renamed from: b */
    public static String m55941b(Object[] objArr) {
        return objArr == null ? "(null)" : String.valueOf(objArr.length);
    }

    public String toString() {
        return "Archive with packed streams starting at offset " + this.f79579a + ", " + m55940a(this.f79580b) + " pack sizes, " + m55940a(this.f79582d) + " CRCs, " + m55941b(this.f79583e) + " folders, " + m55941b(this.f79585g) + " files and " + this.f79586h;
    }
}
