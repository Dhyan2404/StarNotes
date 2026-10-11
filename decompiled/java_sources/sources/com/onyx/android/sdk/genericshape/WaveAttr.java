package com.onyx.android.sdk.genericshape;

import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/WaveAttr;", "", "()V", "wavyLength", "", "getWavyLength", "()F", "setWavyLength", "(F)V", "wavyOffset", "getWavyOffset", "setWavyOffset", "wavyPeak", "getWavyPeak", "setWavyPeak", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class WaveAttr {
    private float wavyOffset;
    private float wavyLength = 24.0f;
    private float wavyPeak = 6.0f;

    public final float getWavyLength() {
        return this.wavyLength;
    }

    public final float getWavyOffset() {
        return this.wavyOffset;
    }

    public final float getWavyPeak() {
        return this.wavyPeak;
    }

    public final void setWavyLength(float f) {
        this.wavyLength = f;
    }

    public final void setWavyOffset(float f) {
        this.wavyOffset = f;
    }

    public final void setWavyPeak(float f) {
        this.wavyPeak = f;
    }
}
