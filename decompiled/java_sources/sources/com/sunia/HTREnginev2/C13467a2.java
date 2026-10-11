package com.sunia.HTREnginev2;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* renamed from: com.sunia.HTREnginev2.a2 */
/* loaded from: classes4.dex */
public final class C13467a2 extends AbstractC13654e2 {

    /* renamed from: d */
    public static final int f64224d = 8;

    /* renamed from: e */
    public static final int f64225e = 2;

    /* renamed from: f */
    public static final int f64226f = 10;

    public C13467a2(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException, FormatException {
        if (getInformation().getSize() < 48) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        m53907b(sb, 8);
        int m57713f = getGeneralDecoder().m57713f(48, 2);
        sb.append("(393");
        sb.append(m57713f);
        sb.append(')');
        int m57713f2 = getGeneralDecoder().m57713f(50, 10);
        if (m57713f2 / 100 == 0) {
            sb.append('0');
        }
        if (m57713f2 / 10 == 0) {
            sb.append('0');
        }
        sb.append(m57713f2);
        sb.append(getGeneralDecoder().m57710c(60, null).m57461b());
        return sb.toString();
    }
}
