package com.google.android.exoplayer2.decoder;

/* loaded from: classes5.dex */
public abstract class Buffer {

    /* renamed from: e */
    public int f23327e;

    public final void addFlag(int i) {
        this.f23327e = i | this.f23327e;
    }

    public void clear() {
        this.f23327e = 0;
    }

    public final void clearFlag(int i) {
        this.f23327e = (~i) & this.f23327e;
    }

    public final boolean getFlag(int i) {
        return (this.f23327e & i) == i;
    }

    public final boolean hasSupplementalData() {
        return getFlag(268435456);
    }

    public final boolean isDecodeOnly() {
        return getFlag(Integer.MIN_VALUE);
    }

    public final boolean isEndOfStream() {
        return getFlag(4);
    }

    public final boolean isKeyFrame() {
        return getFlag(1);
    }

    public final void setFlags(int i) {
        this.f23327e = i;
    }
}
