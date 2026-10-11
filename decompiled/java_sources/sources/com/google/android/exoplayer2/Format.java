package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.material.motion.MotionUtils;
import com.google.common.base.Joiner;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes5.dex */
public final class Format implements Bundleable {

    /* renamed from: J */
    public static final int f22416J = 20;
    public static final int NO_VALUE = -1;

    /* renamed from: O */
    public static final int f22417O = 21;
    public static final long OFFSET_SAMPLE_RELATIVE = Long.MAX_VALUE;

    /* renamed from: Q */
    public static final int f22418Q = 22;

    /* renamed from: Z */
    public static final int f22419Z = 23;

    /* renamed from: g */
    public static final int f22421g = 0;

    /* renamed from: h */
    public static final int f22422h = 1;

    /* renamed from: i */
    public static final int f22423i = 2;

    /* renamed from: j */
    public static final int f22424j = 3;

    /* renamed from: k */
    public static final int f22425k = 4;

    /* renamed from: k0 */
    public static final int f22426k0 = 24;

    /* renamed from: l */
    public static final int f22427l = 5;

    /* renamed from: m */
    public static final int f22428m = 6;

    /* renamed from: n */
    public static final int f22429n = 7;

    /* renamed from: o */
    public static final int f22430o = 8;

    /* renamed from: p */
    public static final int f22431p = 9;

    /* renamed from: q */
    public static final int f22432q = 10;

    /* renamed from: q0 */
    public static final int f22433q0 = 25;

    /* renamed from: r */
    public static final int f22434r = 11;

    /* renamed from: s */
    public static final int f22435s = 12;

    /* renamed from: t */
    public static final int f22436t = 13;

    /* renamed from: t0 */
    public static final int f22437t0 = 26;

    /* renamed from: u */
    public static final int f22438u = 14;

    /* renamed from: u0 */
    public static final int f22439u0 = 27;

    /* renamed from: v */
    public static final int f22440v = 15;

    /* renamed from: v0 */
    public static final int f22441v0 = 28;

    /* renamed from: w */
    public static final int f22442w = 16;

    /* renamed from: w0 */
    public static final int f22443w0 = 29;

    /* renamed from: x */
    public static final int f22444x = 17;

    /* renamed from: y */
    public static final int f22445y = 18;

    /* renamed from: z */
    public static final int f22446z = 19;
    public final int accessibilityChannel;
    public final int averageBitrate;
    public final int bitrate;
    public final int channelCount;

    @Nullable
    public final String codecs;

    @Nullable
    public final ColorInfo colorInfo;

    @Nullable
    public final String containerMimeType;
    public final int cryptoType;

    @Nullable
    public final DrmInitData drmInitData;

    /* renamed from: e */
    public int f22447e;
    public final int encoderDelay;
    public final int encoderPadding;
    public final float frameRate;
    public final int height;

    /* renamed from: id */
    @Nullable
    public final String f22448id;
    public final List<byte[]> initializationData;

    @Nullable
    public final String label;

    @Nullable
    public final String language;
    public final int maxInputSize;

    @Nullable
    public final Metadata metadata;
    public final int pcmEncoding;
    public final int peakBitrate;
    public final float pixelWidthHeightRatio;

    @Nullable
    public final byte[] projectionData;
    public final int roleFlags;
    public final int rotationDegrees;

    @Nullable
    public final String sampleMimeType;
    public final int sampleRate;
    public final int selectionFlags;
    public final int stereoMode;
    public final long subsampleOffsetUs;
    public final int width;

    /* renamed from: f */
    public static final Format f22420f = new Builder().build();
    public static final Bundleable.Creator<Format> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.btg
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            Format m17827c;
            m17827c = Format.m17827c(bundle);
            return m17827c;
        }
    };

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: A */
        public int f22449A;

        /* renamed from: B */
        public int f22450B;

        /* renamed from: C */
        public int f22451C;

        /* renamed from: D */
        public int f22452D;

        /* renamed from: a */
        @Nullable
        public String f22453a;

        /* renamed from: b */
        @Nullable
        public String f22454b;

        /* renamed from: c */
        @Nullable
        public String f22455c;

        /* renamed from: d */
        public int f22456d;

        /* renamed from: e */
        public int f22457e;

        /* renamed from: f */
        public int f22458f;

        /* renamed from: g */
        public int f22459g;

        /* renamed from: h */
        @Nullable
        public String f22460h;

        /* renamed from: i */
        @Nullable
        public Metadata f22461i;

        /* renamed from: j */
        @Nullable
        public String f22462j;

        /* renamed from: k */
        @Nullable
        public String f22463k;

        /* renamed from: l */
        public int f22464l;

        /* renamed from: m */
        @Nullable
        public List<byte[]> f22465m;

        /* renamed from: n */
        @Nullable
        public DrmInitData f22466n;

        /* renamed from: o */
        public long f22467o;

        /* renamed from: p */
        public int f22468p;

        /* renamed from: q */
        public int f22469q;

        /* renamed from: r */
        public float f22470r;

        /* renamed from: s */
        public int f22471s;

        /* renamed from: t */
        public float f22472t;

        /* renamed from: u */
        @Nullable
        public byte[] f22473u;

        /* renamed from: v */
        public int f22474v;

        /* renamed from: w */
        @Nullable
        public ColorInfo f22475w;

        /* renamed from: x */
        public int f22476x;

        /* renamed from: y */
        public int f22477y;

        /* renamed from: z */
        public int f22478z;

        public Format build() {
            return new Format(this);
        }

        public Builder setAccessibilityChannel(int i) {
            this.f22451C = i;
            return this;
        }

        public Builder setAverageBitrate(int i) {
            this.f22458f = i;
            return this;
        }

        public Builder setChannelCount(int i) {
            this.f22476x = i;
            return this;
        }

        public Builder setCodecs(@Nullable String str) {
            this.f22460h = str;
            return this;
        }

        public Builder setColorInfo(@Nullable ColorInfo colorInfo) {
            this.f22475w = colorInfo;
            return this;
        }

        public Builder setContainerMimeType(@Nullable String str) {
            this.f22462j = str;
            return this;
        }

        public Builder setCryptoType(int i) {
            this.f22452D = i;
            return this;
        }

        public Builder setDrmInitData(@Nullable DrmInitData drmInitData) {
            this.f22466n = drmInitData;
            return this;
        }

        public Builder setEncoderDelay(int i) {
            this.f22449A = i;
            return this;
        }

        public Builder setEncoderPadding(int i) {
            this.f22450B = i;
            return this;
        }

        public Builder setFrameRate(float f) {
            this.f22470r = f;
            return this;
        }

        public Builder setHeight(int i) {
            this.f22469q = i;
            return this;
        }

        public Builder setId(@Nullable String str) {
            this.f22453a = str;
            return this;
        }

        public Builder setInitializationData(@Nullable List<byte[]> list) {
            this.f22465m = list;
            return this;
        }

        public Builder setLabel(@Nullable String str) {
            this.f22454b = str;
            return this;
        }

        public Builder setLanguage(@Nullable String str) {
            this.f22455c = str;
            return this;
        }

        public Builder setMaxInputSize(int i) {
            this.f22464l = i;
            return this;
        }

        public Builder setMetadata(@Nullable Metadata metadata) {
            this.f22461i = metadata;
            return this;
        }

        public Builder setPcmEncoding(int i) {
            this.f22478z = i;
            return this;
        }

        public Builder setPeakBitrate(int i) {
            this.f22459g = i;
            return this;
        }

        public Builder setPixelWidthHeightRatio(float f) {
            this.f22472t = f;
            return this;
        }

        public Builder setProjectionData(@Nullable byte[] bArr) {
            this.f22473u = bArr;
            return this;
        }

        public Builder setRoleFlags(int i) {
            this.f22457e = i;
            return this;
        }

        public Builder setRotationDegrees(int i) {
            this.f22471s = i;
            return this;
        }

        public Builder setSampleMimeType(@Nullable String str) {
            this.f22463k = str;
            return this;
        }

        public Builder setSampleRate(int i) {
            this.f22477y = i;
            return this;
        }

        public Builder setSelectionFlags(int i) {
            this.f22456d = i;
            return this;
        }

        public Builder setStereoMode(int i) {
            this.f22474v = i;
            return this;
        }

        public Builder setSubsampleOffsetUs(long j) {
            this.f22467o = j;
            return this;
        }

        public Builder setWidth(int i) {
            this.f22468p = i;
            return this;
        }

        public Builder() {
            this.f22458f = -1;
            this.f22459g = -1;
            this.f22464l = -1;
            this.f22467o = Long.MAX_VALUE;
            this.f22468p = -1;
            this.f22469q = -1;
            this.f22470r = -1.0f;
            this.f22472t = 1.0f;
            this.f22474v = -1;
            this.f22476x = -1;
            this.f22477y = -1;
            this.f22478z = -1;
            this.f22451C = -1;
            this.f22452D = 0;
        }

        public Builder setId(int i) {
            this.f22453a = Integer.toString(i);
            return this;
        }

        public Builder(Format format) {
            this.f22453a = format.f22448id;
            this.f22454b = format.label;
            this.f22455c = format.language;
            this.f22456d = format.selectionFlags;
            this.f22457e = format.roleFlags;
            this.f22458f = format.averageBitrate;
            this.f22459g = format.peakBitrate;
            this.f22460h = format.codecs;
            this.f22461i = format.metadata;
            this.f22462j = format.containerMimeType;
            this.f22463k = format.sampleMimeType;
            this.f22464l = format.maxInputSize;
            this.f22465m = format.initializationData;
            this.f22466n = format.drmInitData;
            this.f22467o = format.subsampleOffsetUs;
            this.f22468p = format.width;
            this.f22469q = format.height;
            this.f22470r = format.frameRate;
            this.f22471s = format.rotationDegrees;
            this.f22472t = format.pixelWidthHeightRatio;
            this.f22473u = format.projectionData;
            this.f22474v = format.stereoMode;
            this.f22475w = format.colorInfo;
            this.f22476x = format.channelCount;
            this.f22477y = format.sampleRate;
            this.f22478z = format.pcmEncoding;
            this.f22449A = format.encoderDelay;
            this.f22450B = format.encoderPadding;
            this.f22451C = format.accessibilityChannel;
            this.f22452D = format.cryptoType;
        }
    }

    @Nullable
    /* renamed from: b */
    public static <T> T m17826b(@Nullable T t, @Nullable T t2) {
        return t != null ? t : t2;
    }

    /* renamed from: c */
    public static Format m17827c(Bundle bundle) {
        Builder builder = new Builder();
        BundleableUtil.ensureClassLoader(bundle);
        int i = 0;
        String string = bundle.getString(m17828d(0));
        Format format = f22420f;
        builder.setId((String) m17826b(string, format.f22448id)).setLabel((String) m17826b(bundle.getString(m17828d(1)), format.label)).setLanguage((String) m17826b(bundle.getString(m17828d(2)), format.language)).setSelectionFlags(bundle.getInt(m17828d(3), format.selectionFlags)).setRoleFlags(bundle.getInt(m17828d(4), format.roleFlags)).setAverageBitrate(bundle.getInt(m17828d(5), format.averageBitrate)).setPeakBitrate(bundle.getInt(m17828d(6), format.peakBitrate)).setCodecs((String) m17826b(bundle.getString(m17828d(7)), format.codecs)).setMetadata((Metadata) m17826b((Metadata) bundle.getParcelable(m17828d(8)), format.metadata)).setContainerMimeType((String) m17826b(bundle.getString(m17828d(9)), format.containerMimeType)).setSampleMimeType((String) m17826b(bundle.getString(m17828d(10)), format.sampleMimeType)).setMaxInputSize(bundle.getInt(m17828d(11), format.maxInputSize));
        ArrayList arrayList = new ArrayList();
        while (true) {
            byte[] byteArray = bundle.getByteArray(m17829e(i));
            if (byteArray == null) {
                Builder drmInitData = builder.setInitializationData(arrayList).setDrmInitData((DrmInitData) bundle.getParcelable(m17828d(13)));
                String m17828d = m17828d(14);
                Format format2 = f22420f;
                drmInitData.setSubsampleOffsetUs(bundle.getLong(m17828d, format2.subsampleOffsetUs)).setWidth(bundle.getInt(m17828d(15), format2.width)).setHeight(bundle.getInt(m17828d(16), format2.height)).setFrameRate(bundle.getFloat(m17828d(17), format2.frameRate)).setRotationDegrees(bundle.getInt(m17828d(18), format2.rotationDegrees)).setPixelWidthHeightRatio(bundle.getFloat(m17828d(19), format2.pixelWidthHeightRatio)).setProjectionData(bundle.getByteArray(m17828d(20))).setStereoMode(bundle.getInt(m17828d(21), format2.stereoMode)).setColorInfo((ColorInfo) BundleableUtil.fromNullableBundle(ColorInfo.CREATOR, bundle.getBundle(m17828d(22)))).setChannelCount(bundle.getInt(m17828d(23), format2.channelCount)).setSampleRate(bundle.getInt(m17828d(24), format2.sampleRate)).setPcmEncoding(bundle.getInt(m17828d(25), format2.pcmEncoding)).setEncoderDelay(bundle.getInt(m17828d(26), format2.encoderDelay)).setEncoderPadding(bundle.getInt(m17828d(27), format2.encoderPadding)).setAccessibilityChannel(bundle.getInt(m17828d(28), format2.accessibilityChannel)).setCryptoType(bundle.getInt(m17828d(29), format2.cryptoType));
                return builder.build();
            }
            arrayList.add(byteArray);
            i++;
        }
    }

    @Deprecated
    public static Format createAudioSampleFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, int i3, int i4, @Nullable List<byte[]> list, @Nullable DrmInitData drmInitData, int i5, @Nullable String str4) {
        return new Builder().setId(str).setLanguage(str4).setSelectionFlags(i5).setAverageBitrate(i).setPeakBitrate(i).setCodecs(str3).setSampleMimeType(str2).setMaxInputSize(i2).setInitializationData(list).setDrmInitData(drmInitData).setChannelCount(i3).setSampleRate(i4).build();
    }

    @Deprecated
    public static Format createContainerFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i, int i2, int i3, @Nullable String str6) {
        return new Builder().setId(str).setLabel(str2).setLanguage(str6).setSelectionFlags(i2).setRoleFlags(i3).setAverageBitrate(i).setPeakBitrate(i).setCodecs(str5).setContainerMimeType(str3).setSampleMimeType(str4).build();
    }

    @Deprecated
    public static Format createSampleFormat(@Nullable String str, @Nullable String str2) {
        return new Builder().setId(str).setSampleMimeType(str2).build();
    }

    @Deprecated
    public static Format createVideoSampleFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, int i3, int i4, float f, @Nullable List<byte[]> list, @Nullable DrmInitData drmInitData) {
        return new Builder().setId(str).setAverageBitrate(i).setPeakBitrate(i).setCodecs(str3).setSampleMimeType(str2).setMaxInputSize(i2).setInitializationData(list).setDrmInitData(drmInitData).setWidth(i3).setHeight(i4).setFrameRate(f).build();
    }

    /* renamed from: d */
    public static String m17828d(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: e */
    public static String m17829e(int i) {
        String m17828d = m17828d(12);
        String num = Integer.toString(i, 36);
        StringBuilder sb = new StringBuilder(String.valueOf(m17828d).length() + 1 + String.valueOf(num).length());
        sb.append(m17828d);
        sb.append("_");
        sb.append(num);
        return sb.toString();
    }

    public static String toLogString(@Nullable Format format) {
        if (format == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("id=");
        sb.append(format.f22448id);
        sb.append(", mimeType=");
        sb.append(format.sampleMimeType);
        if (format.bitrate != -1) {
            sb.append(", bitrate=");
            sb.append(format.bitrate);
        }
        if (format.codecs != null) {
            sb.append(", codecs=");
            sb.append(format.codecs);
        }
        if (format.drmInitData != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i = 0;
            while (true) {
                DrmInitData drmInitData = format.drmInitData;
                if (i >= drmInitData.schemeDataCount) {
                    break;
                }
                UUID uuid = drmInitData.get(i).uuid;
                if (uuid.equals(C4649C.COMMON_PSSH_UUID)) {
                    linkedHashSet.add("cenc");
                } else if (uuid.equals(C4649C.CLEARKEY_UUID)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(C4649C.PLAYREADY_UUID)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(C4649C.WIDEVINE_UUID)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(C4649C.UUID_NIL)) {
                    linkedHashSet.add("universal");
                } else {
                    String valueOf = String.valueOf(uuid);
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 10);
                    sb2.append("unknown (");
                    sb2.append(valueOf);
                    sb2.append(MotionUtils.f31762d);
                    linkedHashSet.add(sb2.toString());
                }
                i++;
            }
            sb.append(", drm=[");
            Joiner.m25798on(',').appendTo(sb, (Iterable<? extends Object>) linkedHashSet);
            sb.append(']');
        }
        if (format.width != -1 && format.height != -1) {
            sb.append(", res=");
            sb.append(format.width);
            sb.append("x");
            sb.append(format.height);
        }
        if (format.frameRate != -1.0f) {
            sb.append(", fps=");
            sb.append(format.frameRate);
        }
        if (format.channelCount != -1) {
            sb.append(", channels=");
            sb.append(format.channelCount);
        }
        if (format.sampleRate != -1) {
            sb.append(", sample_rate=");
            sb.append(format.sampleRate);
        }
        if (format.language != null) {
            sb.append(", language=");
            sb.append(format.language);
        }
        if (format.label != null) {
            sb.append(", label=");
            sb.append(format.label);
        }
        if (format.selectionFlags != 0) {
            ArrayList arrayList = new ArrayList();
            if ((format.selectionFlags & 4) != 0) {
                arrayList.add("auto");
            }
            if ((format.selectionFlags & 1) != 0) {
                arrayList.add("default");
            }
            if ((format.selectionFlags & 2) != 0) {
                arrayList.add("forced");
            }
            sb.append(", selectionFlags=[");
            Joiner.m25798on(',').appendTo(sb, (Iterable<? extends Object>) arrayList);
            sb.append(IteratorUtils.f104924b);
        }
        if (format.roleFlags != 0) {
            ArrayList arrayList2 = new ArrayList();
            if ((format.roleFlags & 1) != 0) {
                arrayList2.add("main");
            }
            if ((format.roleFlags & 2) != 0) {
                arrayList2.add("alt");
            }
            if ((format.roleFlags & 4) != 0) {
                arrayList2.add("supplementary");
            }
            if ((format.roleFlags & 8) != 0) {
                arrayList2.add("commentary");
            }
            if ((format.roleFlags & 16) != 0) {
                arrayList2.add("dub");
            }
            if ((format.roleFlags & 32) != 0) {
                arrayList2.add("emergency");
            }
            if ((format.roleFlags & 64) != 0) {
                arrayList2.add("caption");
            }
            if ((format.roleFlags & 128) != 0) {
                arrayList2.add("subtitle");
            }
            if ((format.roleFlags & 256) != 0) {
                arrayList2.add("sign");
            }
            if ((format.roleFlags & 512) != 0) {
                arrayList2.add("describes-video");
            }
            if ((format.roleFlags & 1024) != 0) {
                arrayList2.add("describes-music");
            }
            if ((format.roleFlags & 2048) != 0) {
                arrayList2.add("enhanced-intelligibility");
            }
            if ((format.roleFlags & 4096) != 0) {
                arrayList2.add("transcribes-dialog");
            }
            if ((format.roleFlags & 8192) != 0) {
                arrayList2.add("easy-read");
            }
            if ((format.roleFlags & 16384) != 0) {
                arrayList2.add("trick-play");
            }
            sb.append(", roleFlags=[");
            Joiner.m25798on(',').appendTo(sb, (Iterable<? extends Object>) arrayList2);
            sb.append(IteratorUtils.f104924b);
        }
        return sb.toString();
    }

    public Builder buildUpon() {
        return new Builder();
    }

    @Deprecated
    public Format copyWithBitrate(int i) {
        return buildUpon().setAverageBitrate(i).setPeakBitrate(i).build();
    }

    public Format copyWithCryptoType(int i) {
        return buildUpon().setCryptoType(i).build();
    }

    @Deprecated
    public Format copyWithDrmInitData(@Nullable DrmInitData drmInitData) {
        return buildUpon().setDrmInitData(drmInitData).build();
    }

    @Deprecated
    public Format copyWithFrameRate(float f) {
        return buildUpon().setFrameRate(f).build();
    }

    @Deprecated
    public Format copyWithGaplessInfo(int i, int i2) {
        return buildUpon().setEncoderDelay(i).setEncoderPadding(i2).build();
    }

    @Deprecated
    public Format copyWithLabel(@Nullable String str) {
        return buildUpon().setLabel(str).build();
    }

    @Deprecated
    public Format copyWithManifestFormatInfo(Format format) {
        return withManifestFormatInfo(format);
    }

    @Deprecated
    public Format copyWithMaxInputSize(int i) {
        return buildUpon().setMaxInputSize(i).build();
    }

    @Deprecated
    public Format copyWithMetadata(@Nullable Metadata metadata) {
        return buildUpon().setMetadata(metadata).build();
    }

    @Deprecated
    public Format copyWithSubsampleOffsetUs(long j) {
        return buildUpon().setSubsampleOffsetUs(j).build();
    }

    @Deprecated
    public Format copyWithVideoSize(int i, int i2) {
        return buildUpon().setWidth(i).setHeight(i2).build();
    }

    public boolean equals(@Nullable Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj == null || Format.class != obj.getClass()) {
            return false;
        }
        Format format = (Format) obj;
        int i2 = this.f22447e;
        if (i2 == 0 || (i = format.f22447e) == 0 || i2 == i) {
            return this.selectionFlags == format.selectionFlags && this.roleFlags == format.roleFlags && this.averageBitrate == format.averageBitrate && this.peakBitrate == format.peakBitrate && this.maxInputSize == format.maxInputSize && this.subsampleOffsetUs == format.subsampleOffsetUs && this.width == format.width && this.height == format.height && this.rotationDegrees == format.rotationDegrees && this.stereoMode == format.stereoMode && this.channelCount == format.channelCount && this.sampleRate == format.sampleRate && this.pcmEncoding == format.pcmEncoding && this.encoderDelay == format.encoderDelay && this.encoderPadding == format.encoderPadding && this.accessibilityChannel == format.accessibilityChannel && this.cryptoType == format.cryptoType && Float.compare(this.frameRate, format.frameRate) == 0 && Float.compare(this.pixelWidthHeightRatio, format.pixelWidthHeightRatio) == 0 && Util.areEqual(this.f22448id, format.f22448id) && Util.areEqual(this.label, format.label) && Util.areEqual(this.codecs, format.codecs) && Util.areEqual(this.containerMimeType, format.containerMimeType) && Util.areEqual(this.sampleMimeType, format.sampleMimeType) && Util.areEqual(this.language, format.language) && Arrays.equals(this.projectionData, format.projectionData) && Util.areEqual(this.metadata, format.metadata) && Util.areEqual(this.colorInfo, format.colorInfo) && Util.areEqual(this.drmInitData, format.drmInitData) && initializationDataEquals(format);
        }
        return false;
    }

    public int getPixelCount() {
        int i;
        int i2 = this.width;
        if (i2 == -1 || (i = this.height) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public int hashCode() {
        if (this.f22447e == 0) {
            String str = this.f22448id;
            int hashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.label;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.language;
            int hashCode3 = (((((((((hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.selectionFlags) * 31) + this.roleFlags) * 31) + this.averageBitrate) * 31) + this.peakBitrate) * 31;
            String str4 = this.codecs;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Metadata metadata = this.metadata;
            int hashCode5 = (hashCode4 + (metadata == null ? 0 : metadata.hashCode())) * 31;
            String str5 = this.containerMimeType;
            int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.sampleMimeType;
            this.f22447e = ((((((((((((((((((((((((((((((hashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.maxInputSize) * 31) + ((int) this.subsampleOffsetUs)) * 31) + this.width) * 31) + this.height) * 31) + Float.floatToIntBits(this.frameRate)) * 31) + this.rotationDegrees) * 31) + Float.floatToIntBits(this.pixelWidthHeightRatio)) * 31) + this.stereoMode) * 31) + this.channelCount) * 31) + this.sampleRate) * 31) + this.pcmEncoding) * 31) + this.encoderDelay) * 31) + this.encoderPadding) * 31) + this.accessibilityChannel) * 31) + this.cryptoType;
        }
        return this.f22447e;
    }

    public boolean initializationDataEquals(Format format) {
        if (this.initializationData.size() != format.initializationData.size()) {
            return false;
        }
        for (int i = 0; i < this.initializationData.size(); i++) {
            if (!Arrays.equals(this.initializationData.get(i), format.initializationData.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(m17828d(0), this.f22448id);
        bundle.putString(m17828d(1), this.label);
        bundle.putString(m17828d(2), this.language);
        bundle.putInt(m17828d(3), this.selectionFlags);
        bundle.putInt(m17828d(4), this.roleFlags);
        bundle.putInt(m17828d(5), this.averageBitrate);
        bundle.putInt(m17828d(6), this.peakBitrate);
        bundle.putString(m17828d(7), this.codecs);
        bundle.putParcelable(m17828d(8), this.metadata);
        bundle.putString(m17828d(9), this.containerMimeType);
        bundle.putString(m17828d(10), this.sampleMimeType);
        bundle.putInt(m17828d(11), this.maxInputSize);
        for (int i = 0; i < this.initializationData.size(); i++) {
            bundle.putByteArray(m17829e(i), this.initializationData.get(i));
        }
        bundle.putParcelable(m17828d(13), this.drmInitData);
        bundle.putLong(m17828d(14), this.subsampleOffsetUs);
        bundle.putInt(m17828d(15), this.width);
        bundle.putInt(m17828d(16), this.height);
        bundle.putFloat(m17828d(17), this.frameRate);
        bundle.putInt(m17828d(18), this.rotationDegrees);
        bundle.putFloat(m17828d(19), this.pixelWidthHeightRatio);
        bundle.putByteArray(m17828d(20), this.projectionData);
        bundle.putInt(m17828d(21), this.stereoMode);
        bundle.putBundle(m17828d(22), BundleableUtil.toNullableBundle(this.colorInfo));
        bundle.putInt(m17828d(23), this.channelCount);
        bundle.putInt(m17828d(24), this.sampleRate);
        bundle.putInt(m17828d(25), this.pcmEncoding);
        bundle.putInt(m17828d(26), this.encoderDelay);
        bundle.putInt(m17828d(27), this.encoderPadding);
        bundle.putInt(m17828d(28), this.accessibilityChannel);
        bundle.putInt(m17828d(29), this.cryptoType);
        return bundle;
    }

    public String toString() {
        String str = this.f22448id;
        String str2 = this.label;
        String str3 = this.containerMimeType;
        String str4 = this.sampleMimeType;
        String str5 = this.codecs;
        int i = this.bitrate;
        String str6 = this.language;
        int i2 = this.width;
        int i3 = this.height;
        float f = this.frameRate;
        int i4 = this.channelCount;
        int i5 = this.sampleRate;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length());
        sb.append("Format(");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str4);
        sb.append(", ");
        sb.append(str5);
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(str6);
        sb.append(", [");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(f);
        sb.append("], [");
        sb.append(i4);
        sb.append(", ");
        sb.append(i5);
        sb.append("])");
        return sb.toString();
    }

    public Format withManifestFormatInfo(Format format) {
        String str;
        if (this == format) {
            return this;
        }
        int trackType = MimeTypes.getTrackType(this.sampleMimeType);
        String str2 = format.f22448id;
        String str3 = format.label;
        if (str3 == null) {
            str3 = this.label;
        }
        String str4 = this.language;
        if ((trackType == 3 || trackType == 1) && (str = format.language) != null) {
            str4 = str;
        }
        int i = this.averageBitrate;
        if (i == -1) {
            i = format.averageBitrate;
        }
        int i2 = this.peakBitrate;
        if (i2 == -1) {
            i2 = format.peakBitrate;
        }
        String str5 = this.codecs;
        if (str5 == null) {
            String codecsOfType = Util.getCodecsOfType(format.codecs, trackType);
            if (Util.splitCodecs(codecsOfType).length == 1) {
                str5 = codecsOfType;
            }
        }
        Metadata metadata = this.metadata;
        Metadata copyWithAppendedEntriesFrom = metadata == null ? format.metadata : metadata.copyWithAppendedEntriesFrom(format.metadata);
        float f = this.frameRate;
        if (f == -1.0f && trackType == 2) {
            f = format.frameRate;
        }
        return buildUpon().setId(str2).setLabel(str3).setLanguage(str4).setSelectionFlags(this.selectionFlags | format.selectionFlags).setRoleFlags(this.roleFlags | format.roleFlags).setAverageBitrate(i).setPeakBitrate(i2).setCodecs(str5).setMetadata(copyWithAppendedEntriesFrom).setDrmInitData(DrmInitData.createSessionCreationData(format.drmInitData, this.drmInitData)).setFrameRate(f).build();
    }

    public Format(Builder builder) {
        this.f22448id = builder.f22453a;
        this.label = builder.f22454b;
        this.language = Util.normalizeLanguageCode(builder.f22455c);
        this.selectionFlags = builder.f22456d;
        this.roleFlags = builder.f22457e;
        int i = builder.f22458f;
        this.averageBitrate = i;
        int i2 = builder.f22459g;
        this.peakBitrate = i2;
        this.bitrate = i2 != -1 ? i2 : i;
        this.codecs = builder.f22460h;
        this.metadata = builder.f22461i;
        this.containerMimeType = builder.f22462j;
        this.sampleMimeType = builder.f22463k;
        this.maxInputSize = builder.f22464l;
        this.initializationData = builder.f22465m == null ? Collections.emptyList() : builder.f22465m;
        DrmInitData drmInitData = builder.f22466n;
        this.drmInitData = drmInitData;
        this.subsampleOffsetUs = builder.f22467o;
        this.width = builder.f22468p;
        this.height = builder.f22469q;
        this.frameRate = builder.f22470r;
        this.rotationDegrees = builder.f22471s == -1 ? 0 : builder.f22471s;
        this.pixelWidthHeightRatio = builder.f22472t == -1.0f ? 1.0f : builder.f22472t;
        this.projectionData = builder.f22473u;
        this.stereoMode = builder.f22474v;
        this.colorInfo = builder.f22475w;
        this.channelCount = builder.f22476x;
        this.sampleRate = builder.f22477y;
        this.pcmEncoding = builder.f22478z;
        this.encoderDelay = builder.f22449A == -1 ? 0 : builder.f22449A;
        this.encoderPadding = builder.f22450B != -1 ? builder.f22450B : 0;
        this.accessibilityChannel = builder.f22451C;
        if (builder.f22452D == 0 && drmInitData != null) {
            this.cryptoType = 1;
        } else {
            this.cryptoType = builder.f22452D;
        }
    }

    @Deprecated
    public static Format createVideoSampleFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, int i3, int i4, float f, @Nullable List<byte[]> list, int i5, float f2, @Nullable DrmInitData drmInitData) {
        return new Builder().setId(str).setAverageBitrate(i).setPeakBitrate(i).setCodecs(str3).setSampleMimeType(str2).setMaxInputSize(i2).setInitializationData(list).setDrmInitData(drmInitData).setWidth(i3).setHeight(i4).setFrameRate(f).setRotationDegrees(i5).setPixelWidthHeightRatio(f2).build();
    }

    @Deprecated
    public static Format createAudioSampleFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, int i, int i2, int i3, int i4, int i5, @Nullable List<byte[]> list, @Nullable DrmInitData drmInitData, int i6, @Nullable String str4) {
        return new Builder().setId(str).setLanguage(str4).setSelectionFlags(i6).setAverageBitrate(i).setPeakBitrate(i).setCodecs(str3).setSampleMimeType(str2).setMaxInputSize(i2).setInitializationData(list).setDrmInitData(drmInitData).setChannelCount(i3).setSampleRate(i4).setPcmEncoding(i5).build();
    }
}
