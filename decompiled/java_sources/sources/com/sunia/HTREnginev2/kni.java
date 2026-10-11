package com.sunia.HTREnginev2;

import com.fasterxml.jackson.core.base.ParserBase;

/* loaded from: classes3.dex */
public class kni {

    /* renamed from: a */
    public int f75635a;

    /* renamed from: b */
    public long f75636b;

    public kni(long j, int i) {
        this.f75636b = j;
        this.f75635a = i;
    }

    /* renamed from: b */
    public static kni m55250b(String str, int i, int i2) {
        long j;
        int i3;
        if (i >= i2) {
            return null;
        }
        long j2 = 0;
        int i4 = i;
        while (i4 < i2) {
            char charAt = str.charAt(i4);
            if (charAt < '0' || charAt > '9') {
                if (charAt >= 'A' && charAt <= 'F') {
                    j = j2 * 16;
                    i3 = charAt - 'A';
                } else {
                    if (charAt < 'a' || charAt > 'f') {
                        break;
                    }
                    j = j2 * 16;
                    i3 = charAt - 'a';
                }
                j2 = j + i3 + 10;
            } else {
                j2 = (j2 * 16) + (charAt - '0');
            }
            if (j2 > 4294967295L) {
                return null;
            }
            i4++;
        }
        if (i4 == i) {
            return null;
        }
        return new kni(j2, i4);
    }

    /* renamed from: c */
    public static kni m55251c(String str, int i, int i2, boolean z) {
        if (i >= i2) {
            return null;
        }
        if (z) {
            char charAt = str.charAt(i);
            if (charAt != '+') {
                r1 = charAt == '-';
            }
            i++;
        }
        long j = 0;
        int i3 = i;
        while (i3 < i2) {
            char charAt2 = str.charAt(i3);
            if (charAt2 < '0' || charAt2 > '9') {
                break;
            }
            if (r1) {
                j = (j * 10) - (charAt2 - '0');
                if (j < ParserBase.f21225q) {
                    return null;
                }
            } else {
                j = (j * 10) + (charAt2 - '0');
                if (j > 2147483647L) {
                    return null;
                }
            }
            i3++;
        }
        if (i3 == i) {
            return null;
        }
        return new kni(j, i3);
    }

    /* renamed from: a */
    public int m55252a() {
        return this.f75635a;
    }

    /* renamed from: d */
    public int m55253d() {
        return (int) this.f75636b;
    }
}
