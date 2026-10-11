package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.util.Util;
import com.google.common.primitives.Ints;

/* loaded from: classes5.dex */
public class DefaultAudioTrackBufferSizeProvider implements DefaultAudioSink.InterfaceC4692c {

    /* renamed from: b */
    public static final int f23192b = 250000;

    /* renamed from: c */
    public static final int f23193c = 750000;

    /* renamed from: d */
    public static final int f23194d = 4;

    /* renamed from: e */
    public static final int f23195e = 250000;

    /* renamed from: f */
    public static final int f23196f = 50000000;

    /* renamed from: g */
    public static final int f23197g = 2;
    public final int ac3BufferMultiplicationFactor;
    protected final int maxPcmBufferDurationUs;
    protected final int minPcmBufferDurationUs;
    protected final int offloadBufferDurationUs;
    protected final int passthroughBufferDurationUs;
    protected final int pcmBufferMultiplicationFactor;

    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: a */
        public int f23198a = 250000;

        /* renamed from: b */
        public int f23199b = DefaultAudioTrackBufferSizeProvider.f23193c;

        /* renamed from: c */
        public int f23200c = 4;

        /* renamed from: d */
        public int f23201d = 250000;

        /* renamed from: e */
        public int f23202e = 50000000;

        /* renamed from: f */
        public int f23203f = 2;

        public DefaultAudioTrackBufferSizeProvider build() {
            return new DefaultAudioTrackBufferSizeProvider(this);
        }

        public Builder setAc3BufferMultiplicationFactor(int i) {
            this.f23203f = i;
            return this;
        }

        public Builder setMaxPcmBufferDurationUs(int i) {
            this.f23199b = i;
            return this;
        }

        public Builder setMinPcmBufferDurationUs(int i) {
            this.f23198a = i;
            return this;
        }

        public Builder setOffloadBufferDurationUs(int i) {
            this.f23202e = i;
            return this;
        }

        public Builder setPassthroughBufferDurationUs(int i) {
            this.f23201d = i;
            return this;
        }

        public Builder setPcmBufferMultiplicationFactor(int i) {
            this.f23200c = i;
            return this;
        }
    }

    public DefaultAudioTrackBufferSizeProvider(Builder builder) {
        this.minPcmBufferDurationUs = builder.f23198a;
        this.maxPcmBufferDurationUs = builder.f23199b;
        this.pcmBufferMultiplicationFactor = builder.f23200c;
        this.passthroughBufferDurationUs = builder.f23201d;
        this.offloadBufferDurationUs = builder.f23202e;
        this.ac3BufferMultiplicationFactor = builder.f23203f;
    }

    public static int durationUsToBytes(int i, int i2, int i3) {
        return Ints.checkedCast(((i * i2) * i3) / 1000000);
    }

    public static int getMaximumEncodedRateBytesPerSecond(int i) {
        switch (i) {
            case 5:
                return 80000;
            case 6:
            case 18:
                return Ac3Util.E_AC3_MAX_RATE_BYTES_PER_SECOND;
            case 7:
                return DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND;
            case 8:
                return DtsUtil.DTS_HD_MAX_RATE_BYTES_PER_SECOND;
            case 9:
                return 40000;
            case 10:
                return 100000;
            case 11:
                return 16000;
            case 12:
                return 7000;
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return Ac3Util.TRUEHD_MAX_RATE_BYTES_PER_SECOND;
            case 15:
                return 8000;
            case 16:
                return AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND;
            case 17:
                return Ac4Util.MAX_RATE_BYTES_PER_SECOND;
        }
    }

    public int get1xBufferSizeInBytes(int i, int i2, int i3, int i4, int i5) {
        if (i3 == 0) {
            return getPcmBufferSizeInBytes(i, i5, i4);
        }
        if (i3 == 1) {
            return getOffloadBufferSizeInBytes(i2);
        }
        if (i3 == 2) {
            return getPassthroughBufferSizeInBytes(i2);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.InterfaceC4692c
    public int getBufferSizeInBytes(int i, int i2, int i3, int i4, int i5, double d) {
        return (((Math.max(i, (int) (get1xBufferSizeInBytes(i, i2, i3, i4, i5) * d)) + i4) - 1) / i4) * i4;
    }

    public int getOffloadBufferSizeInBytes(int i) {
        return Ints.checkedCast((this.offloadBufferDurationUs * getMaximumEncodedRateBytesPerSecond(i)) / 1000000);
    }

    public int getPassthroughBufferSizeInBytes(int i) {
        int i2 = this.passthroughBufferDurationUs;
        if (i == 5) {
            i2 *= this.ac3BufferMultiplicationFactor;
        }
        return Ints.checkedCast((i2 * getMaximumEncodedRateBytesPerSecond(i)) / 1000000);
    }

    public int getPcmBufferSizeInBytes(int i, int i2, int i3) {
        return Util.constrainValue(i * this.pcmBufferMultiplicationFactor, durationUsToBytes(this.minPcmBufferDurationUs, i2, i3), durationUsToBytes(this.maxPcmBufferDurationUs, i2, i3));
    }
}
