package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.SilenceMediaSource;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.video.spherical.C5033a;

/* loaded from: classes5.dex */
public final class MpegAudioUtil {
    public static final int MAX_FRAME_SIZE_BYTES = 4096;
    public static final int MAX_RATE_BYTES_PER_SECOND = 40000;

    /* renamed from: a */
    public static final String[] f23231a = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, "audio/mpeg"};

    /* renamed from: b */
    public static final int[] f23232b = {SilenceMediaSource.f25365n, 48000, C5033a.f28719h};

    /* renamed from: c */
    public static final int[] f23233c = {C5033a.f28719h, 64000, 96000, C5033a.f28720i, 160000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: d */
    public static final int[] f23234d = {C5033a.f28719h, 48000, 56000, 64000, 80000, 96000, 112000, C5033a.f28720i, 144000, 160000, 176000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND};

    /* renamed from: e */
    public static final int[] f23235e = {C5033a.f28719h, 48000, 56000, 64000, 80000, 96000, 112000, C5033a.f28720i, 160000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND, 320000, 384000};

    /* renamed from: f */
    public static final int[] f23236f = {C5033a.f28719h, 40000, 48000, 56000, 64000, 80000, 96000, 112000, C5033a.f28720i, 160000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND, 320000};

    /* renamed from: g */
    public static final int[] f23237g = {8000, 16000, 24000, C5033a.f28719h, 40000, 48000, 56000, 64000, 80000, 96000, 112000, C5033a.f28720i, 144000, 160000};

    /* renamed from: h */
    public static final int f23238h = 384;

    /* renamed from: i */
    public static final int f23239i = 1152;

    /* renamed from: j */
    public static final int f23240j = 1152;

    /* renamed from: k */
    public static final int f23241k = 576;

    /* loaded from: classes5.dex */
    public static final class Header {
        public int bitrate;
        public int channels;
        public int frameSize;

        @Nullable
        public String mimeType;
        public int sampleRate;
        public int samplesPerFrame;
        public int version;

        public boolean setForHeaderData(int i) {
            int i2;
            int i3;
            int i4;
            int i5;
            if (!MpegAudioUtil.m18573k(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
                return false;
            }
            this.version = i2;
            this.mimeType = MpegAudioUtil.f23231a[3 - i3];
            int i6 = MpegAudioUtil.f23232b[i5];
            this.sampleRate = i6;
            if (i2 == 2) {
                this.sampleRate = i6 / 2;
            } else if (i2 == 0) {
                this.sampleRate = i6 / 4;
            }
            int i7 = (i >>> 9) & 1;
            this.samplesPerFrame = MpegAudioUtil.m18572j(i2, i3);
            if (i3 == 3) {
                int i8 = i2 == 3 ? MpegAudioUtil.f23233c[i4 - 1] : MpegAudioUtil.f23234d[i4 - 1];
                this.bitrate = i8;
                this.frameSize = (((i8 * 12) / this.sampleRate) + i7) * 4;
            } else {
                if (i2 == 3) {
                    int i9 = i3 == 2 ? MpegAudioUtil.f23235e[i4 - 1] : MpegAudioUtil.f23236f[i4 - 1];
                    this.bitrate = i9;
                    this.frameSize = ((i9 * 144) / this.sampleRate) + i7;
                } else {
                    int i10 = MpegAudioUtil.f23237g[i4 - 1];
                    this.bitrate = i10;
                    this.frameSize = (((i3 == 1 ? 72 : 144) * i10) / this.sampleRate) + i7;
                }
            }
            this.channels = ((i >> 6) & 3) == 3 ? 1 : 2;
            return true;
        }
    }

    public static int getFrameSize(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (!m18573k(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i6 = f23232b[i5];
        if (i2 == 2) {
            i6 /= 2;
        } else if (i2 == 0) {
            i6 /= 4;
        }
        int i7 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? f23233c[i4 - 1] : f23234d[i4 - 1]) * 12) / i6) + i7) * 4;
        }
        int i8 = i2 == 3 ? i3 == 2 ? f23235e[i4 - 1] : f23236f[i4 - 1] : f23237g[i4 - 1];
        if (i2 == 3) {
            return ((i8 * 144) / i6) + i7;
        }
        return (((i3 == 1 ? 72 : 144) * i8) / i6) + i7;
    }

    /* renamed from: j */
    public static int m18572j(int i, int i2) {
        if (i2 == 1) {
            return i == 3 ? 1152 : 576;
        }
        if (i2 == 2) {
            return 1152;
        }
        if (i2 == 3) {
            return 384;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: k */
    public static boolean m18573k(int i) {
        return (i & (-2097152)) == -2097152;
    }

    public static int parseMpegAudioFrameSampleCount(int i) {
        int i2;
        int i3;
        if (!m18573k(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0) {
            return -1;
        }
        int i4 = (i >>> 12) & 15;
        int i5 = (i >>> 10) & 3;
        if (i4 == 0 || i4 == 15 || i5 == 3) {
            return -1;
        }
        return m18572j(i2, i3);
    }
}
