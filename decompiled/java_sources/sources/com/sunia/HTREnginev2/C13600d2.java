package com.sunia.HTREnginev2;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* renamed from: com.sunia.HTREnginev2.d2 */
/* loaded from: classes4.dex */
public final class C13600d2 extends AbstractC13654e2 {

    /* renamed from: d */
    public static final int f67408d = 4;

    public C13600d2(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException, FormatException {
        StringBuilder sb = new StringBuilder();
        sb.append("(01)");
        int length = sb.length();
        sb.append(getGeneralDecoder().m57713f(4, 4));
        m53908c(sb, 8, length);
        return getGeneralDecoder().m57708a(sb, 48);
    }
}
