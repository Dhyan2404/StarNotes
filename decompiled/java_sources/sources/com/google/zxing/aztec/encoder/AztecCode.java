package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitMatrix;

/* loaded from: classes4.dex */
public final class AztecCode {

    /* renamed from: a */
    public boolean f38246a;

    /* renamed from: b */
    public int f38247b;

    /* renamed from: c */
    public int f38248c;

    /* renamed from: d */
    public int f38249d;

    /* renamed from: e */
    public BitMatrix f38250e;

    public int getCodeWords() {
        return this.f38249d;
    }

    public int getLayers() {
        return this.f38248c;
    }

    public BitMatrix getMatrix() {
        return this.f38250e;
    }

    public int getSize() {
        return this.f38247b;
    }

    public boolean isCompact() {
        return this.f38246a;
    }

    public void setCodeWords(int i) {
        this.f38249d = i;
    }

    public void setCompact(boolean z) {
        this.f38246a = z;
    }

    public void setLayers(int i) {
        this.f38248c = i;
    }

    public void setMatrix(BitMatrix bitMatrix) {
        this.f38250e = bitMatrix;
    }

    public void setSize(int i) {
        this.f38247b = i;
    }
}
