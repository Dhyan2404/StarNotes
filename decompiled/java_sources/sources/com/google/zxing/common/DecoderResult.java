package com.google.zxing.common;

import java.util.List;

/* loaded from: classes4.dex */
public final class DecoderResult {

    /* renamed from: a */
    public final byte[] f38379a;

    /* renamed from: b */
    public int f38380b;

    /* renamed from: c */
    public final String f38381c;

    /* renamed from: d */
    public final List<byte[]> f38382d;

    /* renamed from: e */
    public final String f38383e;

    /* renamed from: f */
    public Integer f38384f;

    /* renamed from: g */
    public Integer f38385g;

    /* renamed from: h */
    public Object f38386h;

    /* renamed from: i */
    public final int f38387i;

    /* renamed from: j */
    public final int f38388j;

    public DecoderResult(byte[] bArr, String str, List<byte[]> list, String str2) {
        this(bArr, str, list, str2, -1, -1);
    }

    public List<byte[]> getByteSegments() {
        return this.f38382d;
    }

    public String getECLevel() {
        return this.f38383e;
    }

    public Integer getErasures() {
        return this.f38385g;
    }

    public Integer getErrorsCorrected() {
        return this.f38384f;
    }

    public int getNumBits() {
        return this.f38380b;
    }

    public Object getOther() {
        return this.f38386h;
    }

    public byte[] getRawBytes() {
        return this.f38379a;
    }

    public int getStructuredAppendParity() {
        return this.f38387i;
    }

    public int getStructuredAppendSequenceNumber() {
        return this.f38388j;
    }

    public String getText() {
        return this.f38381c;
    }

    public boolean hasStructuredAppend() {
        return this.f38387i >= 0 && this.f38388j >= 0;
    }

    public void setErasures(Integer num) {
        this.f38385g = num;
    }

    public void setErrorsCorrected(Integer num) {
        this.f38384f = num;
    }

    public void setNumBits(int i) {
        this.f38380b = i;
    }

    public void setOther(Object obj) {
        this.f38386h = obj;
    }

    public DecoderResult(byte[] bArr, String str, List<byte[]> list, String str2, int i, int i2) {
        this.f38379a = bArr;
        this.f38380b = bArr == null ? 0 : bArr.length * 8;
        this.f38381c = str;
        this.f38382d = list;
        this.f38383e = str2;
        this.f38387i = i2;
        this.f38388j = i;
    }
}
