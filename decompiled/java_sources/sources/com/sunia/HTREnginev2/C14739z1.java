package com.sunia.HTREnginev2;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* renamed from: com.sunia.HTREnginev2.z1 */
/* loaded from: classes4.dex */
public final class C14739z1 extends AbstractC13654e2 {

    /* renamed from: d */
    public static final int f91309d = 8;

    /* renamed from: e */
    public static final int f91310e = 2;

    public C14739z1(BitArray bitArray) {
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
        sb.append("(392");
        sb.append(m57713f);
        sb.append(')');
        sb.append(getGeneralDecoder().m57710c(50, null).m57461b());
        return sb.toString();
    }
}
