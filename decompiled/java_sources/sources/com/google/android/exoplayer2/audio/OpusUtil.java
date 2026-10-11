package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class OpusUtil {
    public static final int SAMPLE_RATE = 48000;

    /* renamed from: a */
    public static final int f23242a = 3840;

    /* renamed from: b */
    public static final int f23243b = 3;

    /* renamed from: a */
    public static byte[] m18574a(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }

    /* renamed from: b */
    public static int m18575b(byte[] bArr) {
        return (bArr[10] & 255) | ((bArr[11] & 255) << 8);
    }

    public static List<byte[]> buildInitializationData(byte[] bArr) {
        long m18576c = m18576c(m18575b(bArr));
        long m18576c2 = m18576c(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(m18574a(m18576c));
        arrayList.add(m18574a(m18576c2));
        return arrayList;
    }

    /* renamed from: c */
    public static long m18576c(long j) {
        return (j * 1000000000) / 48000;
    }

    public static int getChannelCount(byte[] bArr) {
        return bArr[9] & 255;
    }
}
