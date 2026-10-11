package com.google.android.libraries.vision.visionkit.pipeline;

/* loaded from: classes5.dex */
public final class zbbd {

    /* renamed from: a */
    public byte[] f30131a;

    /* renamed from: b */
    public long f30132b;

    /* renamed from: c */
    public com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbcr f30133c;

    /* renamed from: d */
    public int f30134d;

    /* renamed from: e */
    public int f30135e;

    public final zbbd zba(byte[] bArr) {
        this.f30131a = bArr;
        return this;
    }

    public final zbbd zbb(com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbcr zbcrVar) {
        this.f30133c = zbcrVar;
        return this;
    }

    public final zbbd zbc(long j) {
        this.f30132b = j;
        return this;
    }

    public final zbbe zbd() {
        return new zbbe(this.f30131a, this.f30132b, this.f30133c, this.f30134d, this.f30135e);
    }

    public final zbbd zbe(int i) {
        this.f30134d = 2;
        return this;
    }

    public final zbbd zbf(int i) {
        this.f30135e = i;
        return this;
    }
}
