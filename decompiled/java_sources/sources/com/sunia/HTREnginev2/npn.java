package com.sunia.HTREnginev2;

import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.UPCEANReader;

/* loaded from: classes4.dex */
public final class npn {

    /* renamed from: c */
    public static final int[] f78895c = {1, 1, 2};

    /* renamed from: a */
    public final lpn f78896a = new lpn();

    /* renamed from: b */
    public final mpn f78897b = new mpn();

    /* renamed from: a */
    public Result m55786a(int i, BitArray bitArray, int i2) throws NotFoundException {
        int[] m30644d = UPCEANReader.m30644d(bitArray, i2, false, f78895c);
        try {
            return this.f78897b.m55675b(i, bitArray, m30644d);
        } catch (ReaderException unused) {
            return this.f78896a.m55494b(i, bitArray, m30644d);
        }
    }
}
