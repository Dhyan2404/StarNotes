package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.source.rtsp.MediaDescription;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;

/* renamed from: com.google.android.exoplayer2.source.rtsp.c */
/* loaded from: classes5.dex */
public final class C4919c {

    /* renamed from: c */
    public static final String f26514c = "profile-level-id";

    /* renamed from: d */
    public static final String f26515d = "sprop-parameter-sets";

    /* renamed from: e */
    public static final String f26516e = "mp4a.40.";

    /* renamed from: f */
    public static final String f26517f = "avc1.";

    /* renamed from: g */
    public static final String f26518g = "*";

    /* renamed from: a */
    public final RtpPayloadFormat f26519a;

    /* renamed from: b */
    public final Uri f26520b;

    public C4919c(MediaDescription mediaDescription, Uri uri) {
        Assertions.checkArgument(mediaDescription.f26266i.containsKey(SessionDescription.f26438n));
        this.f26519a = m20487b(mediaDescription);
        this.f26520b = m20486a(uri, (String) Util.castNonNull(mediaDescription.f26266i.get(SessionDescription.f26438n)));
    }

    /* renamed from: a */
    public static Uri m20486a(Uri uri, String str) {
        Uri parse = Uri.parse(str);
        return parse.isAbsolute() ? parse : str.equals("*") ? uri : uri.buildUpon().appendEncodedPath(str).build();
    }

    @VisibleForTesting
    /* renamed from: b */
    public static RtpPayloadFormat m20487b(MediaDescription mediaDescription) {
        int i;
        char c;
        Format.Builder builder = new Format.Builder();
        int i2 = mediaDescription.f26262e;
        if (i2 > 0) {
            builder.setAverageBitrate(i2);
        }
        MediaDescription.RtpMapAttribute rtpMapAttribute = mediaDescription.f26267j;
        int i3 = rtpMapAttribute.payloadType;
        String mimeTypeFromRtpMediaType = RtpPayloadFormat.getMimeTypeFromRtpMediaType(rtpMapAttribute.mediaEncoding);
        builder.setSampleMimeType(mimeTypeFromRtpMediaType);
        int i4 = mediaDescription.f26267j.clockRate;
        if ("audio".equals(mediaDescription.f26258a)) {
            i = m20489d(mediaDescription.f26267j.encodingParameters, mimeTypeFromRtpMediaType);
            builder.setSampleRate(i4).setChannelCount(i);
        } else {
            i = -1;
        }
        ImmutableMap<String, String> m20264a = mediaDescription.m20264a();
        int hashCode = mimeTypeFromRtpMediaType.hashCode();
        if (hashCode == -53558318) {
            if (mimeTypeFromRtpMediaType.equals(MimeTypes.AUDIO_AAC)) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode != 187078296) {
            if (hashCode == 1331836730 && mimeTypeFromRtpMediaType.equals(MimeTypes.VIDEO_H264)) {
                c = 1;
            }
            c = 65535;
        } else {
            if (mimeTypeFromRtpMediaType.equals(MimeTypes.AUDIO_AC3)) {
                c = 2;
            }
            c = 65535;
        }
        if (c == 0) {
            Assertions.checkArgument(i != -1);
            Assertions.checkArgument(!m20264a.isEmpty());
            m20490e(builder, m20264a, i, i4);
        } else if (c == 1) {
            Assertions.checkArgument(!m20264a.isEmpty());
            m20491f(builder, m20264a);
        }
        Assertions.checkArgument(i4 > 0);
        return new RtpPayloadFormat(builder.build(), i3, i4, m20264a);
    }

    /* renamed from: c */
    public static byte[] m20488c(String str) {
        byte[] decode = Base64.decode(str, 0);
        int length = decode.length;
        byte[] bArr = NalUnitUtil.NAL_START_CODE;
        byte[] bArr2 = new byte[length + bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(decode, 0, bArr2, bArr.length, decode.length);
        return bArr2;
    }

    /* renamed from: d */
    public static int m20489d(int i, String str) {
        return i != -1 ? i : str.equals(MimeTypes.AUDIO_AC3) ? 6 : 1;
    }

    /* renamed from: e */
    public static void m20490e(Format.Builder builder, ImmutableMap<String, String> immutableMap, int i, int i2) {
        Assertions.checkArgument(immutableMap.containsKey(f26514c));
        String valueOf = String.valueOf((String) Assertions.checkNotNull(immutableMap.get(f26514c)));
        builder.setCodecs(valueOf.length() != 0 ? "mp4a.40.".concat(valueOf) : new String("mp4a.40."));
        builder.setInitializationData(ImmutableList.m26162of(AacUtil.buildAacLcAudioSpecificConfig(i2, i)));
    }

    /* renamed from: f */
    public static void m20491f(Format.Builder builder, ImmutableMap<String, String> immutableMap) {
        Assertions.checkArgument(immutableMap.containsKey(f26515d));
        String[] split = Util.split((String) Assertions.checkNotNull(immutableMap.get(f26515d)), ",");
        Assertions.checkArgument(split.length == 2);
        ImmutableList m26163of = ImmutableList.m26163of(m20488c(split[0]), m20488c(split[1]));
        builder.setInitializationData(m26163of);
        byte[] bArr = m26163of.get(0);
        NalUnitUtil.SpsData parseSpsNalUnit = NalUnitUtil.parseSpsNalUnit(bArr, NalUnitUtil.NAL_START_CODE.length, bArr.length);
        builder.setPixelWidthHeightRatio(parseSpsNalUnit.pixelWidthHeightRatio);
        builder.setHeight(parseSpsNalUnit.height);
        builder.setWidth(parseSpsNalUnit.width);
        String str = immutableMap.get(f26514c);
        if (str != null) {
            builder.setCodecs(str.length() != 0 ? f26517f.concat(str) : new String(f26517f));
        } else {
            builder.setCodecs(CodecSpecificDataUtil.buildAvcCodecString(parseSpsNalUnit.profileIdc, parseSpsNalUnit.constraintsFlagsAndReservedZero2Bits, parseSpsNalUnit.levelIdc));
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C4919c.class != obj.getClass()) {
            return false;
        }
        C4919c c4919c = (C4919c) obj;
        return this.f26519a.equals(c4919c.f26519a) && this.f26520b.equals(c4919c.f26520b);
    }

    public int hashCode() {
        return ((217 + this.f26519a.hashCode()) * 31) + this.f26520b.hashCode();
    }
}
