package com.onyx.android.sdk.media.lame;

import com.onyx.android.sdk.media.lame.LameBuilder;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0017\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 42\u00020\u0001:\u00014B\t\b\u0016¢\u0006\u0004\b1\u00102B\u0011\b\u0016\u0012\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b1\u00103J\t\u0010\u0003\u001a\u00020\u0002H\u0082 J\u009b\u0001\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0082 J)\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0082 J!\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0082 J\u0011\u0010\"\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0082 J\t\u0010#\u001a\u00020\u0002H\u0082 J&\u0010&\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dJ\u001e\u0010'\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dJ\u000e\u0010(\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dJ\u0006\u0010)\u001a\u00020\u0002J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020-H\u0002J\u0010\u00100\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020/H\u0002¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/media/lame/OnyxLame;", "", "", "initializeDefault", "", "inSamplerate", "outChannel", "outSamplerate", "outBitrate", "", "scaleInput", Constants.ATTRNAME_MODE, "vbrMode", "quality", "vbrQuality", "abrMeanBitrate", "lowpassFreq", "highpassFreq", "", "id3tagTitle", "id3tagArtist", "id3tagAlbum", "id3tagYear", "id3tagComment", "initialize", "", "buffer_l", "buffer_r", "samples", "", "mp3buf", "lameEncode", "pcm", "encodeBufferInterleaved", "lameFlush", "lameClose", "bufferL", "bufferR", "encode", "encodeBufferInterLeaved", "flush", "close", "Lcom/onyx/android/sdk/media/lame/LameBuilder;", "builder", "c", "Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;", "a", "Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;", "b", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "(Lcom/onyx/android/sdk/media/lame/LameBuilder;)V", "Companion", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxLame {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LameBuilder.Mode.values().length];
            try {
                iArr[LameBuilder.Mode.STEREO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LameBuilder.Mode.JSTEREO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LameBuilder.Mode.MONO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LameBuilder.Mode.DEFAULT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[LameBuilder.VbrMode.values().length];
            try {
                iArr2[LameBuilder.VbrMode.VBR_OFF.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[LameBuilder.VbrMode.VBR_RH.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[LameBuilder.VbrMode.VBR_ABR.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[LameBuilder.VbrMode.VBR_MTRH.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[LameBuilder.VbrMode.VBR_DEFAUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    static {
        System.loadLibrary("onyx_lame");
    }

    public OnyxLame() {
        initializeDefault();
    }

    private final native int encodeBufferInterleaved(short[] pcm, int samples, byte[] mp3buf);

    private final native void initialize(int inSamplerate, int outChannel, int outSamplerate, int outBitrate, float scaleInput, int mode, int vbrMode, int quality, int vbrQuality, int abrMeanBitrate, int lowpassFreq, int highpassFreq, String id3tagTitle, String id3tagArtist, String id3tagAlbum, String id3tagYear, String id3tagComment);

    private final native void initializeDefault();

    private final native void lameClose();

    private final native int lameEncode(short[] buffer_l, short[] buffer_r, int samples, byte[] mp3buf);

    private final native int lameFlush(byte[] mp3buf);

    /* renamed from: a */
    public final int m33500a(LameBuilder.Mode mode) {
        int i = WhenMappings.$EnumSwitchMapping$0[mode.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 3;
        }
        if (i == 4) {
            return 4;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* renamed from: b */
    public final int m33501b(LameBuilder.VbrMode mode) {
        int i = WhenMappings.$EnumSwitchMapping$1[mode.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 2;
        }
        if (i == 3) {
            return 3;
        }
        if (i == 4) {
            return 4;
        }
        if (i == 5) {
            return 6;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* renamed from: c */
    public final void m33502c(LameBuilder builder) {
        initialize(builder.getInSampleRate(), builder.getOutChannel(), builder.getOutSampleRate(), builder.getOutBitrate(), builder.getScaleInput(), m33500a(builder.getMode()), m33501b(builder.getVbrMode()), builder.getQuality(), builder.getVbrQuality(), builder.getAbrMeanBitrate(), builder.getLowpassFreq(), builder.getHighpassFreq(), builder.getId3tagTitle(), builder.getId3tagArtist(), builder.getId3tagAlbum(), builder.getId3tagYear(), builder.getId3tagComment());
    }

    public final void close() {
        lameClose();
    }

    public final int encode(@NotNull short[] bufferL, @NotNull short[] bufferR, int samples, @NotNull byte[] mp3buf) {
        Intrinsics.checkNotNullParameter(bufferL, "bufferL");
        Intrinsics.checkNotNullParameter(bufferR, "bufferR");
        Intrinsics.checkNotNullParameter(mp3buf, "mp3buf");
        return lameEncode(bufferL, bufferR, samples, mp3buf);
    }

    public final int encodeBufferInterLeaved(@NotNull short[] pcm, int samples, @NotNull byte[] mp3buf) {
        Intrinsics.checkNotNullParameter(pcm, "pcm");
        Intrinsics.checkNotNullParameter(mp3buf, "mp3buf");
        return encodeBufferInterleaved(pcm, samples, mp3buf);
    }

    public final int flush(@NotNull byte[] mp3buf) {
        Intrinsics.checkNotNullParameter(mp3buf, "mp3buf");
        return lameFlush(mp3buf);
    }

    public OnyxLame(@NotNull LameBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        m33502c(builder);
    }
}
