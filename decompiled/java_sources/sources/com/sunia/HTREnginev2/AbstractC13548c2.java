package com.sunia.HTREnginev2;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* renamed from: com.sunia.HTREnginev2.c2 */
/* loaded from: classes4.dex */
public abstract class AbstractC13548c2 extends AbstractC13701f2 {

    /* renamed from: d */
    public static final int f66368d = 5;

    /* renamed from: e */
    public static final int f66369e = 15;

    public AbstractC13548c2(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException {
        if (getInformation().getSize() != 60) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        m53907b(sb, 5);
        m54063f(sb, 45, 15);
        return sb.toString();
    }
}
