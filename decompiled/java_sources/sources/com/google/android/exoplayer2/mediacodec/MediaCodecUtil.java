package com.google.android.exoplayer2.mediacodec;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableList;
import com.onyx.android.sdk.data.common.data.template.OfficialTemplateType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

@SuppressLint({"InlinedApi"})
/* loaded from: classes5.dex */
public final class MediaCodecUtil {

    /* renamed from: a */
    public static final String f24838a = "MediaCodecUtil";

    /* renamed from: d */
    public static final String f24841d = "avc1";

    /* renamed from: e */
    public static final String f24842e = "avc2";

    /* renamed from: f */
    public static final String f24843f = "vp09";

    /* renamed from: g */
    public static final String f24844g = "hev1";

    /* renamed from: h */
    public static final String f24845h = "hvc1";

    /* renamed from: i */
    public static final String f24846i = "av01";

    /* renamed from: j */
    public static final String f24847j = "mp4a";

    /* renamed from: b */
    public static final Pattern f24839b = Pattern.compile("^\\D?(\\d+)$");

    /* renamed from: c */
    @GuardedBy("MediaCodecUtil.class")
    public static final HashMap<C4763b, List<MediaCodecInfo>> f24840c = new HashMap<>();

    /* renamed from: k */
    public static int f24848k = -1;

    /* loaded from: classes5.dex */
    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$b */
    /* loaded from: classes5.dex */
    public static final class C4763b {

        /* renamed from: a */
        public final String f24849a;

        /* renamed from: b */
        public final boolean f24850b;

        /* renamed from: c */
        public final boolean f24851c;

        public C4763b(String str, boolean z, boolean z2) {
            this.f24849a = str;
            this.f24850b = z;
            this.f24851c = z2;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != C4763b.class) {
                return false;
            }
            C4763b c4763b = (C4763b) obj;
            return TextUtils.equals(this.f24849a, c4763b.f24849a) && this.f24850b == c4763b.f24850b && this.f24851c == c4763b.f24851c;
        }

        public int hashCode() {
            return ((((this.f24849a.hashCode() + 31) * 31) + (this.f24850b ? 1231 : 1237)) * 31) + (this.f24851c ? 1231 : 1237);
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$c */
    /* loaded from: classes5.dex */
    public interface InterfaceC4764c {
        /* renamed from: a */
        int mo19322a();

        /* renamed from: b */
        boolean mo19323b();

        /* renamed from: c */
        boolean mo19324c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        /* renamed from: d */
        android.media.MediaCodecInfo mo19325d(int i);

        /* renamed from: e */
        boolean mo19326e(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$d */
    /* loaded from: classes5.dex */
    public static final class C4765d implements InterfaceC4764c {
        public C4765d() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4764c
        /* renamed from: a */
        public int mo19322a() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4764c
        /* renamed from: b */
        public boolean mo19323b() {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4764c
        /* renamed from: c */
        public boolean mo19324c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4764c
        /* renamed from: d */
        public android.media.MediaCodecInfo mo19325d(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4764c
        /* renamed from: e */
        public boolean mo19326e(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && MimeTypes.VIDEO_H264.equals(str2);
        }
    }

    @RequiresApi(21)
    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$e */
    /* loaded from: classes5.dex */
    public static final class C4766e implements InterfaceC4764c {

        /* renamed from: a */
        public final int f24852a;

        /* renamed from: b */
        @Nullable
        public android.media.MediaCodecInfo[] f24853b;

        public C4766e(boolean z, boolean z2) {
            this.f24852a = (z || z2) ? 1 : 0;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4764c
        /* renamed from: a */
        public int mo19322a() {
            m19327f();
            return this.f24853b.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4764c
        /* renamed from: b */
        public boolean mo19323b() {
            return true;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4764c
        /* renamed from: c */
        public boolean mo19324c(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4764c
        /* renamed from: d */
        public android.media.MediaCodecInfo mo19325d(int i) {
            m19327f();
            return this.f24853b[i];
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4764c
        /* renamed from: e */
        public boolean mo19326e(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @EnsuresNonNull({"mediaCodecInfos"})
        /* renamed from: f */
        public final void m19327f() {
            if (this.f24853b == null) {
                this.f24853b = new MediaCodecList(this.f24852a).getCodecInfos();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecUtil$f */
    /* loaded from: classes5.dex */
    public interface InterfaceC4767f<T> {
        /* renamed from: a */
        int mo19328a(T t);
    }

    @RequiresApi(29)
    /* renamed from: A */
    public static boolean m19285A(android.media.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    /* renamed from: B */
    public static boolean m19286B(android.media.MediaCodecInfo mediaCodecInfo) {
        if (Util.SDK_INT >= 29) {
            return m19287C(mediaCodecInfo);
        }
        String lowerCase = Ascii.toLowerCase(mediaCodecInfo.getName());
        return (lowerCase.startsWith("omx.google.") || lowerCase.startsWith("c2.android.") || lowerCase.startsWith("c2.google.")) ? false : true;
    }

    @RequiresApi(29)
    /* renamed from: C */
    public static boolean m19287C(android.media.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    /* renamed from: D */
    public static /* synthetic */ int m19288D(MediaCodecInfo mediaCodecInfo) {
        String str = mediaCodecInfo.name;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (Util.SDK_INT >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* renamed from: E */
    public static /* synthetic */ int m19289E(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.name.startsWith("OMX.google") ? 1 : 0;
    }

    /* renamed from: F */
    public static /* synthetic */ int m19290F(Format format, MediaCodecInfo mediaCodecInfo) {
        try {
            return mediaCodecInfo.isFormatSupported(format) ? 1 : 0;
        } catch (DecoderQueryException unused) {
            return -1;
        }
    }

    /* renamed from: G */
    public static /* synthetic */ int m19291G(InterfaceC4767f interfaceC4767f, Object obj, Object obj2) {
        return interfaceC4767f.mo19328a(obj2) - interfaceC4767f.mo19328a(obj);
    }

    /* renamed from: H */
    public static int m19292H(int i) {
        int i2 = 17;
        if (i != 17) {
            i2 = 20;
            if (i != 20) {
                i2 = 23;
                if (i != 23) {
                    i2 = 29;
                    if (i != 29) {
                        i2 = 39;
                        if (i != 39) {
                            i2 = 42;
                            if (i != 42) {
                                switch (i) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i2;
    }

    /* renamed from: I */
    public static <T> void m19293I(List<T> list, final InterfaceC4767f<T> interfaceC4767f) {
        Collections.sort(list, new Comparator() { // from class: com.sunia.HTREnginev2.lij
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m19291G;
                m19291G = MediaCodecUtil.m19291G(MediaCodecUtil.InterfaceC4767f.this, obj, obj2);
                return m19291G;
            }
        });
    }

    /* renamed from: J */
    public static int m19294J(int i) {
        if (i == 10) {
            return 1;
        }
        if (i == 11) {
            return 2;
        }
        if (i == 20) {
            return 4;
        }
        if (i == 21) {
            return 8;
        }
        if (i == 30) {
            return 16;
        }
        if (i == 31) {
            return 32;
        }
        if (i == 40) {
            return 64;
        }
        if (i == 41) {
            return 128;
        }
        if (i == 50) {
            return 256;
        }
        if (i == 51) {
            return 512;
        }
        switch (i) {
            case 60:
                return 2048;
            case 61:
                return 4096;
            case 62:
                return 8192;
            default:
                return -1;
        }
    }

    /* renamed from: K */
    public static int m19295K(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? -1 : 8;
        }
        return 4;
    }

    @VisibleForTesting
    public static synchronized void clearDecoderInfoCache() {
        synchronized (MediaCodecUtil.class) {
            f24840c.clear();
        }
    }

    /* renamed from: e */
    public static void m19300e(String str, List<MediaCodecInfo> list) {
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            if (Util.SDK_INT < 26 && Util.DEVICE.equals("R9") && list.size() == 1 && list.get(0).name.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(MediaCodecInfo.newInstance("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
            }
            m19293I(list, new InterfaceC4767f() { // from class: com.sunia.HTREnginev2.mij
                @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4767f
                /* renamed from: a */
                public final int mo19328a(Object obj) {
                    int m19288D;
                    m19288D = MediaCodecUtil.m19288D((com.google.android.exoplayer2.mediacodec.MediaCodecInfo) obj);
                    return m19288D;
                }
            });
        }
        int i = Util.SDK_INT;
        if (i < 21 && list.size() > 1) {
            String str2 = list.get(0).name;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                m19293I(list, new InterfaceC4767f() { // from class: com.sunia.HTREnginev2.nij
                    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4767f
                    /* renamed from: a */
                    public final int mo19328a(Object obj) {
                        int m19289E;
                        m19289E = MediaCodecUtil.m19289E((com.google.android.exoplayer2.mediacodec.MediaCodecInfo) obj);
                        return m19289E;
                    }
                });
            }
        }
        if (i >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(list.get(0).name)) {
            return;
        }
        list.add(list.remove(0));
    }

    /* renamed from: f */
    public static int m19301f(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    /* renamed from: g */
    public static int m19302g(int i) {
        switch (i) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    @Nullable
    public static String getAlternativeCodecMimeType(Format format) {
        Pair<Integer, Integer> codecProfileAndLevel;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(format.sampleMimeType)) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if (!MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType) || (codecProfileAndLevel = getCodecProfileAndLevel(format)) == null) {
            return null;
        }
        int intValue = ((Integer) codecProfileAndLevel.first).intValue();
        if (intValue == 16 || intValue == 256) {
            return MimeTypes.VIDEO_H265;
        }
        if (intValue == 512) {
            return MimeTypes.VIDEO_H264;
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0075, code lost:
    
        if (r3.equals(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.f24846i) == false) goto L11;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getCodecProfileAndLevel(com.google.android.exoplayer2.Format r6) {
        /*
            java.lang.String r0 = r6.codecs
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.lang.String r2 = "\\."
            java.lang.String[] r0 = r0.split(r2)
            java.lang.String r2 = "video/dolby-vision"
            java.lang.String r3 = r6.sampleMimeType
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L1d
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = m19312q(r6, r0)
            return r6
        L1d:
            r2 = 0
            r3 = r0[r2]
            r3.hashCode()
            int r4 = r3.hashCode()
            r5 = -1
            switch(r4) {
                case 3004662: goto L6f;
                case 3006243: goto L64;
                case 3006244: goto L59;
                case 3199032: goto L4e;
                case 3214780: goto L43;
                case 3356560: goto L38;
                case 3624515: goto L2d;
                default: goto L2b;
            }
        L2b:
            r2 = r5
            goto L78
        L2d:
            java.lang.String r2 = "vp09"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L36
            goto L2b
        L36:
            r2 = 6
            goto L78
        L38:
            java.lang.String r2 = "mp4a"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L41
            goto L2b
        L41:
            r2 = 5
            goto L78
        L43:
            java.lang.String r2 = "hvc1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L4c
            goto L2b
        L4c:
            r2 = 4
            goto L78
        L4e:
            java.lang.String r2 = "hev1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L57
            goto L2b
        L57:
            r2 = 3
            goto L78
        L59:
            java.lang.String r2 = "avc2"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L62
            goto L2b
        L62:
            r2 = 2
            goto L78
        L64:
            java.lang.String r2 = "avc1"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L6d
            goto L2b
        L6d:
            r2 = 1
            goto L78
        L6f:
            java.lang.String r4 = "av01"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L78
            goto L2b
        L78:
            switch(r2) {
                case 0: goto L98;
                case 1: goto L91;
                case 2: goto L91;
                case 3: goto L8a;
                case 4: goto L8a;
                case 5: goto L83;
                case 6: goto L7c;
                default: goto L7b;
            }
        L7b:
            return r1
        L7c:
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = m19314s(r6, r0)
            return r6
        L83:
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = m19307l(r6, r0)
            return r6
        L8a:
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = m19313r(r6, r0)
            return r6
        L91:
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = m19309n(r6, r0)
            return r6
        L98:
            java.lang.String r1 = r6.codecs
            com.google.android.exoplayer2.video.ColorInfo r6 = r6.colorInfo
            android.util.Pair r6 = m19308m(r1, r0, r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(com.google.android.exoplayer2.Format):android.util.Pair");
    }

    @Nullable
    public static MediaCodecInfo getDecoderInfo(String str, boolean z, boolean z2) throws DecoderQueryException {
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(str, z, z2);
        if (decoderInfos.isEmpty()) {
            return null;
        }
        return decoderInfos.get(0);
    }

    public static synchronized List<MediaCodecInfo> getDecoderInfos(String str, boolean z, boolean z2) throws DecoderQueryException {
        synchronized (MediaCodecUtil.class) {
            C4763b c4763b = new C4763b(str, z, z2);
            HashMap<C4763b, List<MediaCodecInfo>> hashMap = f24840c;
            List<MediaCodecInfo> list = hashMap.get(c4763b);
            if (list != null) {
                return list;
            }
            int i = Util.SDK_INT;
            ArrayList<MediaCodecInfo> m19311p = m19311p(c4763b, i >= 21 ? new C4766e(z, z2) : new C4765d());
            if (z && m19311p.isEmpty() && 21 <= i && i <= 23) {
                m19311p = m19311p(c4763b, new C4765d());
                if (!m19311p.isEmpty()) {
                    String str2 = m19311p.get(0).name;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                    sb.append(str);
                    sb.append(". Assuming: ");
                    sb.append(str2);
                    Log.m21493w(f24838a, sb.toString());
                }
            }
            m19300e(str, m19311p);
            ImmutableList copyOf = ImmutableList.copyOf((Collection) m19311p);
            hashMap.put(c4763b, copyOf);
            return copyOf;
        }
    }

    @CheckResult
    public static List<MediaCodecInfo> getDecoderInfosSortedByFormatSupport(List<MediaCodecInfo> list, final Format format) {
        ArrayList arrayList = new ArrayList(list);
        m19293I(arrayList, new InterfaceC4767f() { // from class: com.sunia.HTREnginev2.oij
            @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.InterfaceC4767f
            /* renamed from: a */
            public final int mo19328a(Object obj) {
                int m19290F;
                m19290F = MediaCodecUtil.m19290F(Format.this, (com.google.android.exoplayer2.mediacodec.MediaCodecInfo) obj);
                return m19290F;
            }
        });
        return arrayList;
    }

    @Nullable
    public static MediaCodecInfo getDecryptOnlyDecoderInfo() throws DecoderQueryException {
        return getDecoderInfo(MimeTypes.AUDIO_RAW, false, false);
    }

    /* renamed from: h */
    public static int m19303h(int i) {
        if (i == 1 || i == 2) {
            return 25344;
        }
        switch (i) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    /* renamed from: i */
    public static int m19304i(int i) {
        if (i == 66) {
            return 1;
        }
        if (i == 77) {
            return 2;
        }
        if (i == 88) {
            return 4;
        }
        if (i == 100) {
            return 8;
        }
        if (i == 110) {
            return 16;
        }
        if (i != 122) {
            return i != 244 ? -1 : 64;
        }
        return 32;
    }

    @Nullable
    /* renamed from: j */
    public static Integer m19305j(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case 1537:
                if (str.equals("01")) {
                    c = 0;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c = 1;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c = 2;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c = 3;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c = 4;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c = 5;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c = 6;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c = 7;
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c = '\b';
                    break;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    c = '\t';
                    break;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    c = '\n';
                    break;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    c = 11;
                    break;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    c = '\f';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            case '\n':
                return 1024;
            case 11:
                return 2048;
            case '\f':
                return 4096;
            default:
                return null;
        }
    }

    @Nullable
    /* renamed from: k */
    public static Integer m19306k(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case 1536:
                if (str.equals("00")) {
                    c = 0;
                    break;
                }
                break;
            case 1537:
                if (str.equals("01")) {
                    c = 1;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c = 2;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c = 3;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c = 4;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c = 5;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c = 6;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c = 7;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c = '\b';
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c = '\t';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            default:
                return null;
        }
    }

    @Nullable
    /* renamed from: l */
    public static Pair<Integer, Integer> m19307l(String str, String[] strArr) {
        int m19292H;
        if (strArr.length != 3) {
            String valueOf = String.valueOf(str);
            Log.m21493w(f24838a, valueOf.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf) : new String("Ignoring malformed MP4A codec string: "));
            return null;
        }
        try {
            if (MimeTypes.AUDIO_AAC.equals(MimeTypes.getMimeTypeFromMp4ObjectType(Integer.parseInt(strArr[1], 16))) && (m19292H = m19292H(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair<>(Integer.valueOf(m19292H), 0);
            }
        } catch (NumberFormatException unused) {
            String valueOf2 = String.valueOf(str);
            Log.m21493w(f24838a, valueOf2.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(valueOf2) : new String("Ignoring malformed MP4A codec string: "));
        }
        return null;
    }

    @Nullable
    /* renamed from: m */
    public static Pair<Integer, Integer> m19308m(String str, String[] strArr, @Nullable ColorInfo colorInfo) {
        int i;
        if (strArr.length < 4) {
            String valueOf = String.valueOf(str);
            Log.m21493w(f24838a, valueOf.length() != 0 ? "Ignoring malformed AV1 codec string: ".concat(valueOf) : new String("Ignoring malformed AV1 codec string: "));
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown AV1 profile: ");
                sb.append(parseInt);
                Log.m21493w(f24838a, sb.toString());
                return null;
            }
            if (parseInt3 != 8 && parseInt3 != 10) {
                StringBuilder sb2 = new StringBuilder(34);
                sb2.append("Unknown AV1 bit depth: ");
                sb2.append(parseInt3);
                Log.m21493w(f24838a, sb2.toString());
                return null;
            }
            int i2 = parseInt3 != 8 ? (colorInfo == null || !(colorInfo.hdrStaticInfo != null || (i = colorInfo.colorTransfer) == 7 || i == 6)) ? 2 : 4096 : 1;
            int m19301f = m19301f(parseInt2);
            if (m19301f != -1) {
                return new Pair<>(Integer.valueOf(i2), Integer.valueOf(m19301f));
            }
            StringBuilder sb3 = new StringBuilder(30);
            sb3.append("Unknown AV1 level: ");
            sb3.append(parseInt2);
            Log.m21493w(f24838a, sb3.toString());
            return null;
        } catch (NumberFormatException unused) {
            String valueOf2 = String.valueOf(str);
            Log.m21493w(f24838a, valueOf2.length() != 0 ? "Ignoring malformed AV1 codec string: ".concat(valueOf2) : new String("Ignoring malformed AV1 codec string: "));
            return null;
        }
    }

    public static int maxH264DecodableFrameSize() throws DecoderQueryException {
        if (f24848k == -1) {
            int i = 0;
            MediaCodecInfo decoderInfo = getDecoderInfo(MimeTypes.VIDEO_H264, false, false);
            if (decoderInfo != null) {
                MediaCodecInfo.CodecProfileLevel[] profileLevels = decoderInfo.getProfileLevels();
                int length = profileLevels.length;
                int i2 = 0;
                while (i < length) {
                    i2 = Math.max(m19303h(profileLevels[i].level), i2);
                    i++;
                }
                i = Math.max(i2, Util.SDK_INT >= 21 ? 345600 : 172800);
            }
            f24848k = i;
        }
        return f24848k;
    }

    @Nullable
    /* renamed from: n */
    public static Pair<Integer, Integer> m19309n(String str, String[] strArr) {
        int parseInt;
        int i;
        if (strArr.length < 2) {
            String valueOf = String.valueOf(str);
            Log.m21493w(f24838a, valueOf.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i = Integer.parseInt(strArr[1].substring(0, 2), 16);
                parseInt = Integer.parseInt(strArr[1].substring(4), 16);
            } else {
                if (strArr.length < 3) {
                    String valueOf2 = String.valueOf(str);
                    Log.m21493w(f24838a, valueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf2) : new String("Ignoring malformed AVC codec string: "));
                    return null;
                }
                int parseInt2 = Integer.parseInt(strArr[1]);
                parseInt = Integer.parseInt(strArr[2]);
                i = parseInt2;
            }
            int m19304i = m19304i(i);
            if (m19304i == -1) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown AVC profile: ");
                sb.append(i);
                Log.m21493w(f24838a, sb.toString());
                return null;
            }
            int m19302g = m19302g(parseInt);
            if (m19302g != -1) {
                return new Pair<>(Integer.valueOf(m19304i), Integer.valueOf(m19302g));
            }
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Unknown AVC level: ");
            sb2.append(parseInt);
            Log.m21493w(f24838a, sb2.toString());
            return null;
        } catch (NumberFormatException unused) {
            String valueOf3 = String.valueOf(str);
            Log.m21493w(f24838a, valueOf3.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf3) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    @Nullable
    /* renamed from: o */
    public static String m19310o(android.media.MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals(MimeTypes.VIDEO_DOLBY_VISION)) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals(MimeTypes.AUDIO_ALAC) && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals(MimeTypes.AUDIO_FLAC) && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        return null;
    }

    /* renamed from: p */
    public static ArrayList<MediaCodecInfo> m19311p(C4763b c4763b, InterfaceC4764c interfaceC4764c) throws DecoderQueryException {
        String m19310o;
        String str;
        String str2;
        int i;
        boolean z;
        int i2;
        MediaCodecInfo.CodecCapabilities capabilitiesForType;
        boolean mo19326e;
        boolean mo19324c;
        boolean z2;
        try {
            ArrayList<MediaCodecInfo> arrayList = new ArrayList<>();
            String str3 = c4763b.f24849a;
            int mo19322a = interfaceC4764c.mo19322a();
            boolean mo19323b = interfaceC4764c.mo19323b();
            int i3 = 0;
            while (i3 < mo19322a) {
                android.media.MediaCodecInfo mo19325d = interfaceC4764c.mo19325d(i3);
                if (!m19316u(mo19325d)) {
                    String name = mo19325d.getName();
                    if (m19318w(mo19325d, name, mo19323b, str3) && (m19310o = m19310o(mo19325d, name, str3)) != null) {
                        try {
                            capabilitiesForType = mo19325d.getCapabilitiesForType(m19310o);
                            mo19326e = interfaceC4764c.mo19326e("tunneled-playback", m19310o, capabilitiesForType);
                            mo19324c = interfaceC4764c.mo19324c("tunneled-playback", m19310o, capabilitiesForType);
                            z2 = c4763b.f24851c;
                        } catch (Exception e) {
                            e = e;
                            str = m19310o;
                            str2 = name;
                            i = i3;
                            z = mo19323b;
                            i2 = mo19322a;
                        }
                        if ((z2 || !mo19324c) && (!z2 || mo19326e)) {
                            boolean mo19326e2 = interfaceC4764c.mo19326e("secure-playback", m19310o, capabilitiesForType);
                            boolean mo19324c2 = interfaceC4764c.mo19324c("secure-playback", m19310o, capabilitiesForType);
                            boolean z3 = c4763b.f24850b;
                            if ((z3 || !mo19324c2) && (!z3 || mo19326e2)) {
                                boolean m19319x = m19319x(mo19325d, str3);
                                boolean m19321z = m19321z(mo19325d, str3);
                                boolean m19286B = m19286B(mo19325d);
                                if (!(mo19323b && c4763b.f24850b == mo19326e2) && (mo19323b || c4763b.f24850b)) {
                                    str = m19310o;
                                    str2 = name;
                                    i = i3;
                                    z = mo19323b;
                                    i2 = mo19322a;
                                    if (!z && mo19326e2) {
                                        arrayList.add(MediaCodecInfo.newInstance(String.valueOf(str2).concat(".secure"), str3, str, capabilitiesForType, m19319x, m19321z, m19286B, false, true));
                                        return arrayList;
                                    }
                                    i3 = i + 1;
                                    mo19322a = i2;
                                    mo19323b = z;
                                } else {
                                    str = m19310o;
                                    str2 = name;
                                    i = i3;
                                    z = mo19323b;
                                    i2 = mo19322a;
                                    try {
                                        arrayList.add(MediaCodecInfo.newInstance(name, str3, m19310o, capabilitiesForType, m19319x, m19321z, m19286B, false, false));
                                    } catch (Exception e2) {
                                        e = e2;
                                        if (Util.SDK_INT > 23 || arrayList.isEmpty()) {
                                            String str4 = str2;
                                            StringBuilder sb = new StringBuilder(String.valueOf(str4).length() + 25 + str.length());
                                            sb.append("Failed to query codec ");
                                            sb.append(str4);
                                            sb.append(" (");
                                            sb.append(str);
                                            sb.append(MotionUtils.f31762d);
                                            Log.m21489e(f24838a, sb.toString());
                                            throw e;
                                        }
                                        StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 46);
                                        sb2.append("Skipping codec ");
                                        sb2.append(str2);
                                        sb2.append(" (failed to query capabilities)");
                                        Log.m21489e(f24838a, sb2.toString());
                                        i3 = i + 1;
                                        mo19322a = i2;
                                        mo19323b = z;
                                    }
                                    i3 = i + 1;
                                    mo19322a = i2;
                                    mo19323b = z;
                                }
                            }
                        }
                    }
                }
                i = i3;
                z = mo19323b;
                i2 = mo19322a;
                i3 = i + 1;
                mo19322a = i2;
                mo19323b = z;
            }
            return arrayList;
        } catch (Exception e3) {
            throw new DecoderQueryException(e3);
        }
    }

    @Nullable
    /* renamed from: q */
    public static Pair<Integer, Integer> m19312q(String str, String[] strArr) {
        if (strArr.length < 3) {
            String valueOf = String.valueOf(str);
            Log.m21493w(f24838a, valueOf.length() != 0 ? "Ignoring malformed Dolby Vision codec string: ".concat(valueOf) : new String("Ignoring malformed Dolby Vision codec string: "));
            return null;
        }
        Matcher matcher = f24839b.matcher(strArr[1]);
        if (!matcher.matches()) {
            String valueOf2 = String.valueOf(str);
            Log.m21493w(f24838a, valueOf2.length() != 0 ? "Ignoring malformed Dolby Vision codec string: ".concat(valueOf2) : new String("Ignoring malformed Dolby Vision codec string: "));
            return null;
        }
        String group = matcher.group(1);
        Integer m19306k = m19306k(group);
        if (m19306k == null) {
            String valueOf3 = String.valueOf(group);
            Log.m21493w(f24838a, valueOf3.length() != 0 ? "Unknown Dolby Vision profile string: ".concat(valueOf3) : new String("Unknown Dolby Vision profile string: "));
            return null;
        }
        String str2 = strArr[2];
        Integer m19305j = m19305j(str2);
        if (m19305j != null) {
            return new Pair<>(m19306k, m19305j);
        }
        String valueOf4 = String.valueOf(str2);
        Log.m21493w(f24838a, valueOf4.length() != 0 ? "Unknown Dolby Vision level string: ".concat(valueOf4) : new String("Unknown Dolby Vision level string: "));
        return null;
    }

    @Nullable
    /* renamed from: r */
    public static Pair<Integer, Integer> m19313r(String str, String[] strArr) {
        if (strArr.length < 4) {
            String valueOf = String.valueOf(str);
            Log.m21493w(f24838a, valueOf.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(valueOf) : new String("Ignoring malformed HEVC codec string: "));
            return null;
        }
        int i = 1;
        Matcher matcher = f24839b.matcher(strArr[1]);
        if (!matcher.matches()) {
            String valueOf2 = String.valueOf(str);
            Log.m21493w(f24838a, valueOf2.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(valueOf2) : new String("Ignoring malformed HEVC codec string: "));
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            if (!"2".equals(group)) {
                String valueOf3 = String.valueOf(group);
                Log.m21493w(f24838a, valueOf3.length() != 0 ? "Unknown HEVC profile string: ".concat(valueOf3) : new String("Unknown HEVC profile string: "));
                return null;
            }
            i = 2;
        }
        String str2 = strArr[3];
        Integer m19315t = m19315t(str2);
        if (m19315t != null) {
            return new Pair<>(Integer.valueOf(i), m19315t);
        }
        String valueOf4 = String.valueOf(str2);
        Log.m21493w(f24838a, valueOf4.length() != 0 ? "Unknown HEVC level string: ".concat(valueOf4) : new String("Unknown HEVC level string: "));
        return null;
    }

    @Nullable
    /* renamed from: s */
    public static Pair<Integer, Integer> m19314s(String str, String[] strArr) {
        if (strArr.length < 3) {
            String valueOf = String.valueOf(str);
            Log.m21493w(f24838a, valueOf.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int m19295K = m19295K(parseInt);
            if (m19295K == -1) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown VP9 profile: ");
                sb.append(parseInt);
                Log.m21493w(f24838a, sb.toString());
                return null;
            }
            int m19294J = m19294J(parseInt2);
            if (m19294J != -1) {
                return new Pair<>(Integer.valueOf(m19295K), Integer.valueOf(m19294J));
            }
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Unknown VP9 level: ");
            sb2.append(parseInt2);
            Log.m21493w(f24838a, sb2.toString());
            return null;
        } catch (NumberFormatException unused) {
            String valueOf2 = String.valueOf(str);
            Log.m21493w(f24838a, valueOf2.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(valueOf2) : new String("Ignoring malformed VP9 codec string: "));
            return null;
        }
    }

    @Nullable
    /* renamed from: t */
    public static Integer m19315t(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case 70821:
                if (str.equals("H30")) {
                    c = 0;
                    break;
                }
                break;
            case 70914:
                if (str.equals("H60")) {
                    c = 1;
                    break;
                }
                break;
            case 70917:
                if (str.equals("H63")) {
                    c = 2;
                    break;
                }
                break;
            case OfficialTemplateType.TEMPLATE_TENNIS_TACTICAL_PAPER_HORIZONTAL /* 71007 */:
                if (str.equals("H90")) {
                    c = 3;
                    break;
                }
                break;
            case 71010:
                if (str.equals("H93")) {
                    c = 4;
                    break;
                }
                break;
            case 74665:
                if (str.equals("L30")) {
                    c = 5;
                    break;
                }
                break;
            case 74758:
                if (str.equals("L60")) {
                    c = 6;
                    break;
                }
                break;
            case 74761:
                if (str.equals("L63")) {
                    c = 7;
                    break;
                }
                break;
            case 74851:
                if (str.equals("L90")) {
                    c = '\b';
                    break;
                }
                break;
            case 74854:
                if (str.equals("L93")) {
                    c = '\t';
                    break;
                }
                break;
            case 2193639:
                if (str.equals("H120")) {
                    c = '\n';
                    break;
                }
                break;
            case 2193642:
                if (str.equals("H123")) {
                    c = 11;
                    break;
                }
                break;
            case 2193732:
                if (str.equals("H150")) {
                    c = '\f';
                    break;
                }
                break;
            case 2193735:
                if (str.equals("H153")) {
                    c = '\r';
                    break;
                }
                break;
            case 2193738:
                if (str.equals("H156")) {
                    c = 14;
                    break;
                }
                break;
            case 2193825:
                if (str.equals("H180")) {
                    c = 15;
                    break;
                }
                break;
            case 2193828:
                if (str.equals("H183")) {
                    c = 16;
                    break;
                }
                break;
            case 2193831:
                if (str.equals("H186")) {
                    c = 17;
                    break;
                }
                break;
            case 2312803:
                if (str.equals("L120")) {
                    c = 18;
                    break;
                }
                break;
            case 2312806:
                if (str.equals("L123")) {
                    c = 19;
                    break;
                }
                break;
            case 2312896:
                if (str.equals("L150")) {
                    c = 20;
                    break;
                }
                break;
            case 2312899:
                if (str.equals("L153")) {
                    c = 21;
                    break;
                }
                break;
            case 2312902:
                if (str.equals("L156")) {
                    c = 22;
                    break;
                }
                break;
            case 2312989:
                if (str.equals("L180")) {
                    c = 23;
                    break;
                }
                break;
            case 2312992:
                if (str.equals("L183")) {
                    c = 24;
                    break;
                }
                break;
            case 2312995:
                if (str.equals("L186")) {
                    c = 25;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 2;
            case 1:
                return 8;
            case 2:
                return 32;
            case 3:
                return 128;
            case 4:
                return 512;
            case 5:
                return 1;
            case 6:
                return 4;
            case 7:
                return 16;
            case '\b':
                return 64;
            case '\t':
                return 256;
            case '\n':
                return 2048;
            case 11:
                return 8192;
            case '\f':
                return 32768;
            case '\r':
                return 131072;
            case 14:
                return 524288;
            case 15:
                return 2097152;
            case 16:
                return 8388608;
            case 17:
                return 33554432;
            case 18:
                return 1024;
            case 19:
                return 4096;
            case 20:
                return 16384;
            case 21:
                return 65536;
            case 22:
                return 262144;
            case 23:
                return 1048576;
            case 24:
                return 4194304;
            case 25:
                return 16777216;
            default:
                return null;
        }
    }

    /* renamed from: u */
    public static boolean m19316u(android.media.MediaCodecInfo mediaCodecInfo) {
        return Util.SDK_INT >= 29 && m19317v(mediaCodecInfo);
    }

    @RequiresApi(29)
    /* renamed from: v */
    public static boolean m19317v(android.media.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    /* renamed from: w */
    public static boolean m19318w(android.media.MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z && str.endsWith(".secure"))) {
            return false;
        }
        int i = Util.SDK_INT;
        if (i < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = Util.DEVICE;
            if ("a70".equals(str3) || ("Xiaomi".equals(Util.MANUFACTURER) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = Util.DEVICE;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = Util.DEVICE;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && ManufacturerUtils.f31579b.equals(Util.MANUFACTURER))) {
            String str6 = Util.DEVICE;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i <= 19 && "OMX.SEC.vp8.dec".equals(str) && ManufacturerUtils.f31579b.equals(Util.MANUFACTURER)) {
            String str7 = Util.DEVICE;
            if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i <= 19 && Util.DEVICE.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        return (i <= 23 && MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    public static void warmDecoderInfoCache(String str, boolean z, boolean z2) {
        try {
            getDecoderInfos(str, z, z2);
        } catch (DecoderQueryException e) {
            Log.m21490e(f24838a, "Codec warming failed", e);
        }
    }

    /* renamed from: x */
    public static boolean m19319x(android.media.MediaCodecInfo mediaCodecInfo, String str) {
        return Util.SDK_INT >= 29 ? m19320y(mediaCodecInfo) : !m19321z(mediaCodecInfo, str);
    }

    @RequiresApi(29)
    /* renamed from: y */
    public static boolean m19320y(android.media.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    /* renamed from: z */
    public static boolean m19321z(android.media.MediaCodecInfo mediaCodecInfo, String str) {
        if (Util.SDK_INT >= 29) {
            return m19285A(mediaCodecInfo);
        }
        if (MimeTypes.isAudio(str)) {
            return true;
        }
        String lowerCase = Ascii.toLowerCase(mediaCodecInfo.getName());
        if (lowerCase.startsWith("arc.")) {
            return false;
        }
        if (lowerCase.startsWith("omx.google.") || lowerCase.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((lowerCase.startsWith("omx.sec.") && lowerCase.contains(".sw.")) || lowerCase.equals("omx.qcom.video.decoder.hevcswvdec") || lowerCase.startsWith("c2.android.") || lowerCase.startsWith("c2.google.")) {
            return true;
        }
        return (lowerCase.startsWith("omx.") || lowerCase.startsWith("c2.")) ? false : true;
    }
}
