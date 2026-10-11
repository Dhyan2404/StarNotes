package com.onyx.android.sdk.media.lame;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.SilenceMediaSource;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.gson.internal.bind.TypeAdapters;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\bG\u0018\u00002\u00020\u0001:\u0002jkB\u0007¢\u0006\u0004\bh\u0010iJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0002J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0002J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001eJ\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0002J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0002J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0002J\u0006\u0010&\u001a\u00020%R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b\u0006\u0010+R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010(\u001a\u0004\b-\u0010*\"\u0004\b\b\u0010+R\"\u00100\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010(\u001a\u0004\b/\u0010*\"\u0004\b\n\u0010+R\"\u00104\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010(\u001a\u0004\b2\u0010*\"\u0004\b3\u0010+R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010(\u001a\u0004\b6\u0010*\"\u0004\b\u0004\u0010+R\"\u00109\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010(\u001a\u0004\b8\u0010*\"\u0004\b \u0010+R\"\u0010<\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010(\u001a\u0004\b;\u0010*\"\u0004\b!\u0010+R\"\u0010@\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010(\u001a\u0004\b>\u0010*\"\u0004\b?\u0010+R\"\u0010D\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010(\u001a\u0004\bB\u0010*\"\u0004\bC\u0010+R\"\u0010J\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\b\u001a\u0010IR\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\b\u001d\u0010OR\"\u0010U\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S\"\u0004\b\u001f\u0010TR$\u0010[\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y\"\u0004\b\u000f\u0010ZR$\u0010^\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\\\u0010W\u001a\u0004\b]\u0010Y\"\u0004\b\u0011\u0010ZR$\u0010a\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b_\u0010W\u001a\u0004\b`\u0010Y\"\u0004\b\u0013\u0010ZR$\u0010d\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bb\u0010W\u001a\u0004\bc\u0010Y\"\u0004\b\u0015\u0010ZR$\u0010g\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\be\u0010W\u001a\u0004\bf\u0010Y\"\u0004\b\u0017\u0010Z¨\u0006l"}, m61528d2 = {"Lcom/onyx/android/sdk/media/lame/LameBuilder;", "", "", "quality", "setQuality", "inSampleRate", "setInSampleRate", "outSampleRate", "setOutSampleRate", "bitrate", "setOutBitrate", "channels", "setOutChannels", "", "title", "setId3tagTitle", "artist", "setId3tagArtist", "album", "setId3tagAlbum", "comment", "setId3tagComment", TypeAdapters.C6590r.f36273a, "setId3tagYear", "", "scaleAmount", "setScaleInput", "Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;", Constants.ATTRNAME_MODE, "setMode", "Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;", "setVbrMode", "setVbrQuality", "setAbrMeanBitrate", "freq", "setLowpassFreqency", "setHighpassFreqency", "Lcom/onyx/android/sdk/media/lame/OnyxLame;", PrivilegedApp.f6529f, "a", "I", "getInSampleRate", "()I", "(I)V", "b", "getOutSampleRate", "c", "getOutBitrate", "outBitrate", "d", "getOutChannel", "setOutChannel", "outChannel", "e", "getQuality", C6997f.f39671c, "getVbrQuality", "vbrQuality", C6998g.f39679a, "getAbrMeanBitrate", "abrMeanBitrate", C6999h.f39688c, "getLowpassFreq", "setLowpassFreq", "lowpassFreq", "i", "getHighpassFreq", "setHighpassFreq", "highpassFreq", "j", "F", "getScaleInput", "()F", "(F)V", "scaleInput", C4921e.f26537n, "Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;", "getMode", "()Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;", "(Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;)V", "l", "Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;", "getVbrMode", "()Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;", "(Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;)V", "vbrMode", "m", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getId3tagTitle", "()Ljava/lang/String;", "(Ljava/lang/String;)V", "id3tagTitle", GoogleApiAvailabilityLight.f29016b, "getId3tagArtist", "id3tagArtist", C4921e.f26528e, "getId3tagAlbum", "id3tagAlbum", "p", "getId3tagComment", "id3tagComment", "q", "getId3tagYear", "id3tagYear", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Mode", "VbrMode", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class LameBuilder {

    /* renamed from: b, reason: from kotlin metadata */
    public int outSampleRate;

    /* renamed from: h, reason: from kotlin metadata */
    public int lowpassFreq;

    /* renamed from: i, reason: from kotlin metadata */
    public int highpassFreq;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public String id3tagTitle;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public String id3tagArtist;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public String id3tagAlbum;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public String id3tagComment;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public String id3tagYear;

    /* renamed from: a, reason: from kotlin metadata */
    public int inSampleRate = SilenceMediaSource.f25365n;

    /* renamed from: c, reason: from kotlin metadata */
    public int outBitrate = 128;

    /* renamed from: d, reason: from kotlin metadata */
    public int outChannel = 2;

    /* renamed from: e, reason: from kotlin metadata */
    public int quality = 5;

    /* renamed from: f, reason: from kotlin metadata */
    public int vbrQuality = 5;

    /* renamed from: g, reason: from kotlin metadata */
    public int abrMeanBitrate = 128;

    /* renamed from: j, reason: from kotlin metadata */
    public float scaleInput = 1.0f;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public Mode mode = Mode.DEFAULT;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public VbrMode vbrMode = VbrMode.VBR_OFF;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;", "", "(Ljava/lang/String;I)V", "STEREO", "JSTEREO", "MONO", "DEFAULT", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Mode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Mode[] $VALUES;
        public static final Mode STEREO = new Mode("STEREO", 0);
        public static final Mode JSTEREO = new Mode("JSTEREO", 1);
        public static final Mode MONO = new Mode("MONO", 2);
        public static final Mode DEFAULT = new Mode("DEFAULT", 3);

        private static final /* synthetic */ Mode[] $values() {
            return new Mode[]{STEREO, JSTEREO, MONO, DEFAULT};
        }

        static {
            Mode[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private Mode(String str, int i) {
        }

        @NotNull
        public static EnumEntries<Mode> getEntries() {
            return $ENTRIES;
        }

        public static Mode valueOf(String str) {
            return (Mode) Enum.valueOf(Mode.class, str);
        }

        public static Mode[] values() {
            return (Mode[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;", "", "(Ljava/lang/String;I)V", "VBR_OFF", "VBR_RH", "VBR_MTRH", "VBR_ABR", "VBR_DEFAUT", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class VbrMode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ VbrMode[] $VALUES;
        public static final VbrMode VBR_OFF = new VbrMode("VBR_OFF", 0);
        public static final VbrMode VBR_RH = new VbrMode("VBR_RH", 1);
        public static final VbrMode VBR_MTRH = new VbrMode("VBR_MTRH", 2);
        public static final VbrMode VBR_ABR = new VbrMode("VBR_ABR", 3);
        public static final VbrMode VBR_DEFAUT = new VbrMode("VBR_DEFAUT", 4);

        private static final /* synthetic */ VbrMode[] $values() {
            return new VbrMode[]{VBR_OFF, VBR_RH, VBR_MTRH, VBR_ABR, VBR_DEFAUT};
        }

        static {
            VbrMode[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private VbrMode(String str, int i) {
        }

        @NotNull
        public static EnumEntries<VbrMode> getEntries() {
            return $ENTRIES;
        }

        public static VbrMode valueOf(String str) {
            return (VbrMode) Enum.valueOf(VbrMode.class, str);
        }

        public static VbrMode[] values() {
            return (VbrMode[]) $VALUES.clone();
        }
    }

    @NotNull
    public final OnyxLame build() {
        return new OnyxLame(this);
    }

    public final int getAbrMeanBitrate() {
        return this.abrMeanBitrate;
    }

    public final int getHighpassFreq() {
        return this.highpassFreq;
    }

    @Nullable
    public final String getId3tagAlbum() {
        return this.id3tagAlbum;
    }

    @Nullable
    public final String getId3tagArtist() {
        return this.id3tagArtist;
    }

    @Nullable
    public final String getId3tagComment() {
        return this.id3tagComment;
    }

    @Nullable
    public final String getId3tagTitle() {
        return this.id3tagTitle;
    }

    @Nullable
    public final String getId3tagYear() {
        return this.id3tagYear;
    }

    public final int getInSampleRate() {
        return this.inSampleRate;
    }

    public final int getLowpassFreq() {
        return this.lowpassFreq;
    }

    @NotNull
    public final Mode getMode() {
        return this.mode;
    }

    public final int getOutBitrate() {
        return this.outBitrate;
    }

    public final int getOutChannel() {
        return this.outChannel;
    }

    public final int getOutSampleRate() {
        return this.outSampleRate;
    }

    public final int getQuality() {
        return this.quality;
    }

    public final float getScaleInput() {
        return this.scaleInput;
    }

    @NotNull
    public final VbrMode getVbrMode() {
        return this.vbrMode;
    }

    public final int getVbrQuality() {
        return this.vbrQuality;
    }

    /* renamed from: setAbrMeanBitrate, reason: collision with other method in class */
    public final void m72277setAbrMeanBitrate(int i) {
        this.abrMeanBitrate = i;
    }

    public final void setHighpassFreq(int i) {
        this.highpassFreq = i;
    }

    @NotNull
    public final LameBuilder setHighpassFreqency(int freq) {
        this.highpassFreq = freq;
        return this;
    }

    /* renamed from: setId3tagAlbum, reason: collision with other method in class */
    public final void m72278setId3tagAlbum(@Nullable String str) {
        this.id3tagAlbum = str;
    }

    /* renamed from: setId3tagArtist, reason: collision with other method in class */
    public final void m72279setId3tagArtist(@Nullable String str) {
        this.id3tagArtist = str;
    }

    /* renamed from: setId3tagComment, reason: collision with other method in class */
    public final void m72280setId3tagComment(@Nullable String str) {
        this.id3tagComment = str;
    }

    /* renamed from: setId3tagTitle, reason: collision with other method in class */
    public final void m72281setId3tagTitle(@Nullable String str) {
        this.id3tagTitle = str;
    }

    /* renamed from: setId3tagYear, reason: collision with other method in class */
    public final void m72282setId3tagYear(@Nullable String str) {
        this.id3tagYear = str;
    }

    /* renamed from: setInSampleRate, reason: collision with other method in class */
    public final void m72283setInSampleRate(int i) {
        this.inSampleRate = i;
    }

    public final void setLowpassFreq(int i) {
        this.lowpassFreq = i;
    }

    @NotNull
    public final LameBuilder setLowpassFreqency(int freq) {
        this.lowpassFreq = freq;
        return this;
    }

    /* renamed from: setMode, reason: collision with other method in class */
    public final void m72284setMode(@NotNull Mode mode) {
        Intrinsics.checkNotNullParameter(mode, "<set-?>");
        this.mode = mode;
    }

    /* renamed from: setOutBitrate, reason: collision with other method in class */
    public final void m72285setOutBitrate(int i) {
        this.outBitrate = i;
    }

    public final void setOutChannel(int i) {
        this.outChannel = i;
    }

    @NotNull
    public final LameBuilder setOutChannels(int channels) {
        this.outChannel = channels;
        return this;
    }

    /* renamed from: setOutSampleRate, reason: collision with other method in class */
    public final void m72286setOutSampleRate(int i) {
        this.outSampleRate = i;
    }

    /* renamed from: setQuality, reason: collision with other method in class */
    public final void m72287setQuality(int i) {
        this.quality = i;
    }

    /* renamed from: setScaleInput, reason: collision with other method in class */
    public final void m72288setScaleInput(float f) {
        this.scaleInput = f;
    }

    /* renamed from: setVbrMode, reason: collision with other method in class */
    public final void m72289setVbrMode(@NotNull VbrMode vbrMode) {
        Intrinsics.checkNotNullParameter(vbrMode, "<set-?>");
        this.vbrMode = vbrMode;
    }

    /* renamed from: setVbrQuality, reason: collision with other method in class */
    public final void m72290setVbrQuality(int i) {
        this.vbrQuality = i;
    }

    @NotNull
    public final LameBuilder setAbrMeanBitrate(int bitrate) {
        this.abrMeanBitrate = bitrate;
        return this;
    }

    @NotNull
    public final LameBuilder setId3tagAlbum(@Nullable String album) {
        this.id3tagAlbum = album;
        return this;
    }

    @NotNull
    public final LameBuilder setId3tagArtist(@Nullable String artist) {
        this.id3tagArtist = artist;
        return this;
    }

    @NotNull
    public final LameBuilder setId3tagComment(@Nullable String comment) {
        this.id3tagComment = comment;
        return this;
    }

    @NotNull
    public final LameBuilder setId3tagTitle(@Nullable String title) {
        this.id3tagTitle = title;
        return this;
    }

    @NotNull
    public final LameBuilder setId3tagYear(@Nullable String year) {
        this.id3tagYear = year;
        return this;
    }

    @NotNull
    public final LameBuilder setInSampleRate(int inSampleRate) {
        this.inSampleRate = inSampleRate;
        return this;
    }

    @NotNull
    public final LameBuilder setMode(@NotNull Mode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.mode = mode;
        return this;
    }

    @NotNull
    public final LameBuilder setOutBitrate(int bitrate) {
        this.outBitrate = bitrate;
        return this;
    }

    @NotNull
    public final LameBuilder setOutSampleRate(int outSampleRate) {
        this.outSampleRate = outSampleRate;
        return this;
    }

    @NotNull
    public final LameBuilder setQuality(int quality) {
        this.quality = quality;
        return this;
    }

    @NotNull
    public final LameBuilder setScaleInput(float scaleAmount) {
        this.scaleInput = scaleAmount;
        return this;
    }

    @NotNull
    public final LameBuilder setVbrMode(@NotNull VbrMode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.vbrMode = mode;
        return this;
    }

    @NotNull
    public final LameBuilder setVbrQuality(int quality) {
        this.vbrQuality = quality;
        return this;
    }
}
