package com.sunia.HTREnginev2;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder;

/* renamed from: com.sunia.HTREnginev2.rb */
/* loaded from: classes4.dex */
public final class C14343rb extends AbstractExpandedDecoder {

    /* renamed from: c */
    public static final int f82931c = 5;

    public C14343rb(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException, FormatException {
        return getGeneralDecoder().m57708a(new StringBuilder(), 5);
    }
}
