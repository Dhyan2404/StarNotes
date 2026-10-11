package com.sunia.HTREnginev2;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* renamed from: com.sunia.HTREnginev2.b2 */
/* loaded from: classes4.dex */
public final class C13510b2 extends AbstractC13701f2 {

    /* renamed from: f */
    public static final int f65303f = 8;

    /* renamed from: g */
    public static final int f65304g = 20;

    /* renamed from: h */
    public static final int f65305h = 16;

    /* renamed from: d */
    public final String f65306d;

    /* renamed from: e */
    public final String f65307e;

    public C13510b2(BitArray bitArray, String str, String str2) {
        super(bitArray);
        this.f65306d = str2;
        this.f65307e = str;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13701f2
    /* renamed from: d */
    public void mo53155d(StringBuilder sb, int i) {
        sb.append('(');
        sb.append(this.f65307e);
        sb.append(i / 100000);
        sb.append(')');
    }

    @Override // com.sunia.HTREnginev2.AbstractC13701f2
    /* renamed from: e */
    public int mo53156e(int i) {
        return i % 100000;
    }

    /* renamed from: g */
    public final void m53157g(StringBuilder sb, int i) {
        int m57713f = getGeneralDecoder().m57713f(i, 16);
        if (m57713f == 38400) {
            return;
        }
        sb.append('(');
        sb.append(this.f65306d);
        sb.append(')');
        int i2 = m57713f % 32;
        int i3 = m57713f / 32;
        int i4 = (i3 % 12) + 1;
        int i5 = i3 / 12;
        if (i5 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i5);
        if (i4 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i4);
        if (i2 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i2);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException {
        if (getInformation().getSize() != 84) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        m53907b(sb, 8);
        m54063f(sb, 48, 20);
        m53157g(sb, 68);
        return sb.toString();
    }
}
