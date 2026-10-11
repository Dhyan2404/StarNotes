package com.sunia.HTREnginev2;

import com.google.zxing.common.BitArray;
import com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder;

/* renamed from: com.sunia.HTREnginev2.e2 */
/* loaded from: classes4.dex */
public abstract class AbstractC13654e2 extends AbstractExpandedDecoder {

    /* renamed from: c */
    public static final int f68498c = 40;

    public AbstractC13654e2(BitArray bitArray) {
        super(bitArray);
    }

    /* renamed from: a */
    public static void m53906a(StringBuilder sb, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < 13; i3++) {
            int charAt = sb.charAt(i3 + i) - '0';
            if ((i3 & 1) == 0) {
                charAt *= 3;
            }
            i2 += charAt;
        }
        int i4 = 10 - (i2 % 10);
        sb.append(i4 != 10 ? i4 : 0);
    }

    /* renamed from: b */
    public final void m53907b(StringBuilder sb, int i) {
        sb.append("(01)");
        int length = sb.length();
        sb.append('9');
        m53908c(sb, i, length);
    }

    /* renamed from: c */
    public final void m53908c(StringBuilder sb, int i, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            int m57713f = getGeneralDecoder().m57713f((i3 * 10) + i, 10);
            if (m57713f / 100 == 0) {
                sb.append('0');
            }
            if (m57713f / 10 == 0) {
                sb.append('0');
            }
            sb.append(m57713f);
        }
        m53906a(sb, i2);
    }
}
