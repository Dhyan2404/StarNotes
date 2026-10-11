package com.onyx.android.sdk.media.config;

import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0015\b\u0086\b\u0018\u0000 (2\u00020\u0001:\u0001(B7\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b&\u0010'J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\t\u0010\t\u001a\u00020\u0004HÆ\u0003JE\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u0004HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001b\u001a\u0004\b\u001f\u0010\u001dR\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b \u0010\u001b\u001a\u0004\b!\u0010\u001dR\u0017\u0010\u000e\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\"\u0010\u001b\u001a\u0004\b#\u0010\u001dR\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b$\u0010\u001b\u001a\u0004\b%\u0010\u001d¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/media/config/FormatConfig;", "", "", "component1", "", "component2", "component3", "component4", "component5", "component6", "audioMime", "audioSource", "channels", "sampleRate", "bitRate", "audioFormat", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getAudioMime", "()Ljava/lang/String;", "b", "I", "getAudioSource", "()I", "c", "getChannels", "d", "getSampleRate", "e", "getBitRate", C6997f.f39671c, "getAudioFormat", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;IIIII)V", "Companion", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class FormatConfig {

    @NotNull
    public static final String AUDIO_MIME_AAC = "audio/mpeg";

    @NotNull
    public static final String AUDIO_MIME_MP3 = "audio/mpeg";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: g */
    public static final int f42876g = 1;

    /* renamed from: h */
    public static final int f42877h = 16000;

    /* renamed from: i */
    public static final int f42878i = 64000;

    /* renamed from: j */
    public static final int f42879j = 1;

    /* renamed from: k */
    public static final int f42880k = 2;

    /* renamed from: l */
    @NotNull
    public static final String f42881l = "audio/mpeg";

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String audioMime;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final int audioSource;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int channels;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public final int sampleRate;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public final int bitRate;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    public final int audioFormat;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/media/config/FormatConfig$Companion;", "", "()V", "AUDIO_MIME_AAC", "", "AUDIO_MIME_MP3", "DEFAULT_AUDIO_CHANNELS", "", "DEFAULT_AUDIO_ENCODING", "DEFAULT_AUDIO_MIME", "DEFAULT_AUDIO_SOURCE", "DEFAULT_BIT_RATE", "DEFAULT_SAMPLE_RATE", "defaultAudioConfig", "Lcom/onyx/android/sdk/media/config/FormatConfig;", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final FormatConfig defaultAudioConfig() {
            return new FormatConfig("audio/mpeg", 1, 1, 16000, 64000, 2);
        }

        public Companion() {
        }
    }

    public FormatConfig(@NotNull String audioMime, int i, int i2, int i3, int i4, int i5) {
        Intrinsics.checkNotNullParameter(audioMime, "audioMime");
        this.audioMime = audioMime;
        this.audioSource = i;
        this.channels = i2;
        this.sampleRate = i3;
        this.bitRate = i4;
        this.audioFormat = i5;
    }

    public static /* synthetic */ FormatConfig copy$default(FormatConfig formatConfig, String str, int i, int i2, int i3, int i4, int i5, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            str = formatConfig.audioMime;
        }
        if ((i6 & 2) != 0) {
            i = formatConfig.audioSource;
        }
        int i7 = i;
        if ((i6 & 4) != 0) {
            i2 = formatConfig.channels;
        }
        int i8 = i2;
        if ((i6 & 8) != 0) {
            i3 = formatConfig.sampleRate;
        }
        int i9 = i3;
        if ((i6 & 16) != 0) {
            i4 = formatConfig.bitRate;
        }
        int i10 = i4;
        if ((i6 & 32) != 0) {
            i5 = formatConfig.audioFormat;
        }
        return formatConfig.copy(str, i7, i8, i9, i10, i5);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getAudioMime() {
        return this.audioMime;
    }

    /* renamed from: component2, reason: from getter */
    public final int getAudioSource() {
        return this.audioSource;
    }

    /* renamed from: component3, reason: from getter */
    public final int getChannels() {
        return this.channels;
    }

    /* renamed from: component4, reason: from getter */
    public final int getSampleRate() {
        return this.sampleRate;
    }

    /* renamed from: component5, reason: from getter */
    public final int getBitRate() {
        return this.bitRate;
    }

    /* renamed from: component6, reason: from getter */
    public final int getAudioFormat() {
        return this.audioFormat;
    }

    @NotNull
    public final FormatConfig copy(@NotNull String audioMime, int audioSource, int channels, int sampleRate, int bitRate, int audioFormat) {
        Intrinsics.checkNotNullParameter(audioMime, "audioMime");
        return new FormatConfig(audioMime, audioSource, channels, sampleRate, bitRate, audioFormat);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FormatConfig)) {
            return false;
        }
        FormatConfig formatConfig = (FormatConfig) other;
        return Intrinsics.areEqual(this.audioMime, formatConfig.audioMime) && this.audioSource == formatConfig.audioSource && this.channels == formatConfig.channels && this.sampleRate == formatConfig.sampleRate && this.bitRate == formatConfig.bitRate && this.audioFormat == formatConfig.audioFormat;
    }

    public final int getAudioFormat() {
        return this.audioFormat;
    }

    @NotNull
    public final String getAudioMime() {
        return this.audioMime;
    }

    public final int getAudioSource() {
        return this.audioSource;
    }

    public final int getBitRate() {
        return this.bitRate;
    }

    public final int getChannels() {
        return this.channels;
    }

    public final int getSampleRate() {
        return this.sampleRate;
    }

    public int hashCode() {
        return (((((((((this.audioMime.hashCode() * 31) + Integer.hashCode(this.audioSource)) * 31) + Integer.hashCode(this.channels)) * 31) + Integer.hashCode(this.sampleRate)) * 31) + Integer.hashCode(this.bitRate)) * 31) + Integer.hashCode(this.audioFormat);
    }

    @NotNull
    public String toString() {
        return "FormatConfig(audioMime=" + this.audioMime + ", audioSource=" + this.audioSource + ", channels=" + this.channels + ", sampleRate=" + this.sampleRate + ", bitRate=" + this.bitRate + ", audioFormat=" + this.audioFormat + ')';
    }
}
