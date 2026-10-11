package com.google.zxing;

import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes4.dex */
public final class Result {

    /* renamed from: a */
    public final String f38217a;

    /* renamed from: b */
    public final byte[] f38218b;

    /* renamed from: c */
    public final int f38219c;

    /* renamed from: d */
    public ResultPoint[] f38220d;

    /* renamed from: e */
    public final BarcodeFormat f38221e;

    /* renamed from: f */
    public Map<ResultMetadataType, Object> f38222f;

    /* renamed from: g */
    public final long f38223g;

    public Result(String str, byte[] bArr, ResultPoint[] resultPointArr, BarcodeFormat barcodeFormat) {
        this(str, bArr, resultPointArr, barcodeFormat, System.currentTimeMillis());
    }

    public void addResultPoints(ResultPoint[] resultPointArr) {
        ResultPoint[] resultPointArr2 = this.f38220d;
        if (resultPointArr2 == null) {
            this.f38220d = resultPointArr;
            return;
        }
        if (resultPointArr == null || resultPointArr.length <= 0) {
            return;
        }
        ResultPoint[] resultPointArr3 = new ResultPoint[resultPointArr2.length + resultPointArr.length];
        System.arraycopy(resultPointArr2, 0, resultPointArr3, 0, resultPointArr2.length);
        System.arraycopy(resultPointArr, 0, resultPointArr3, resultPointArr2.length, resultPointArr.length);
        this.f38220d = resultPointArr3;
    }

    public BarcodeFormat getBarcodeFormat() {
        return this.f38221e;
    }

    public int getNumBits() {
        return this.f38219c;
    }

    public byte[] getRawBytes() {
        return this.f38218b;
    }

    public Map<ResultMetadataType, Object> getResultMetadata() {
        return this.f38222f;
    }

    public ResultPoint[] getResultPoints() {
        return this.f38220d;
    }

    public String getText() {
        return this.f38217a;
    }

    public long getTimestamp() {
        return this.f38223g;
    }

    public void putAllMetadata(Map<ResultMetadataType, Object> map) {
        if (map != null) {
            Map<ResultMetadataType, Object> map2 = this.f38222f;
            if (map2 == null) {
                this.f38222f = map;
            } else {
                map2.putAll(map);
            }
        }
    }

    public void putMetadata(ResultMetadataType resultMetadataType, Object obj) {
        if (this.f38222f == null) {
            this.f38222f = new EnumMap(ResultMetadataType.class);
        }
        this.f38222f.put(resultMetadataType, obj);
    }

    public String toString() {
        return this.f38217a;
    }

    public Result(String str, byte[] bArr, ResultPoint[] resultPointArr, BarcodeFormat barcodeFormat, long j) {
        this(str, bArr, bArr == null ? 0 : bArr.length * 8, resultPointArr, barcodeFormat, j);
    }

    public Result(String str, byte[] bArr, int i, ResultPoint[] resultPointArr, BarcodeFormat barcodeFormat, long j) {
        this.f38217a = str;
        this.f38218b = bArr;
        this.f38219c = i;
        this.f38220d = resultPointArr;
        this.f38221e = barcodeFormat;
        this.f38222f = null;
        this.f38223g = j;
    }
}
