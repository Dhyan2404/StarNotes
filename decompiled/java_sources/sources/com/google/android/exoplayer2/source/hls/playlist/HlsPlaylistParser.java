package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMultivariantPlaylist;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.android.material.motion.MotionUtils;
import com.google.common.collect.Iterables;
import com.google.firebase.installations.local.IidStore;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.TreeMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* loaded from: classes5.dex */
public final class HlsPlaylistParser implements ParsingLoadable.Parser<HlsPlaylist> {

    /* renamed from: A0 */
    public static final String f26116A0 = "CLOSED-CAPTIONS";

    /* renamed from: B0 */
    public static final String f26118B0 = "PART";

    /* renamed from: C0 */
    public static final String f26120C0 = "MAP";

    /* renamed from: D0 */
    public static final String f26122D0 = "NONE";

    /* renamed from: E0 */
    public static final String f26124E0 = "AES-128";

    /* renamed from: F0 */
    public static final String f26126F0 = "SAMPLE-AES";

    /* renamed from: G0 */
    public static final String f26128G0 = "SAMPLE-AES-CENC";

    /* renamed from: H0 */
    public static final String f26130H0 = "SAMPLE-AES-CTR";

    /* renamed from: I0 */
    public static final String f26132I0 = "com.microsoft.playready";

    /* renamed from: J */
    public static final String f26134J = "#EXT-X-MEDIA-SEQUENCE";

    /* renamed from: J0 */
    public static final String f26135J0 = "identity";

    /* renamed from: K0 */
    public static final String f26137K0 = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed";

    /* renamed from: L0 */
    public static final String f26139L0 = "com.widevine";

    /* renamed from: M0 */
    public static final String f26141M0 = "YES";

    /* renamed from: N0 */
    public static final String f26143N0 = "NO";

    /* renamed from: O */
    public static final String f26145O = "#EXT-X-START";

    /* renamed from: O0 */
    public static final String f26146O0 = "CLOSED-CAPTIONS=NONE";

    /* renamed from: Q */
    public static final String f26149Q = "#EXT-X-ENDLIST";

    /* renamed from: Z */
    public static final String f26159Z = "#EXT-X-KEY";

    /* renamed from: g */
    public static final String f26167g = "HlsPlaylistParser";

    /* renamed from: h */
    public static final String f26169h = "#EXTM3U";

    /* renamed from: i */
    public static final String f26171i = "#EXT";

    /* renamed from: j */
    public static final String f26173j = "#EXT-X-VERSION";

    /* renamed from: k */
    public static final String f26175k = "#EXT-X-PLAYLIST-TYPE";

    /* renamed from: k0 */
    public static final String f26176k0 = "#EXT-X-SESSION-KEY";

    /* renamed from: l */
    public static final String f26178l = "#EXT-X-DEFINE";

    /* renamed from: m */
    public static final String f26180m = "#EXT-X-SERVER-CONTROL";

    /* renamed from: n */
    public static final String f26182n = "#EXT-X-STREAM-INF";

    /* renamed from: o */
    public static final String f26184o = "#EXT-X-PART-INF";

    /* renamed from: p */
    public static final String f26186p = "#EXT-X-PART";

    /* renamed from: q */
    public static final String f26188q = "#EXT-X-I-FRAME-STREAM-INF";

    /* renamed from: q0 */
    public static final String f26189q0 = "#EXT-X-BYTERANGE";

    /* renamed from: r */
    public static final String f26191r = "#EXT-X-I-FRAMES-ONLY";

    /* renamed from: s */
    public static final String f26193s = "#EXT-X-MEDIA";

    /* renamed from: t */
    public static final String f26195t = "#EXT-X-TARGETDURATION";

    /* renamed from: t0 */
    public static final String f26196t0 = "#EXT-X-GAP";

    /* renamed from: u */
    public static final String f26198u = "#EXT-X-DISCONTINUITY";

    /* renamed from: u0 */
    public static final String f26199u0 = "#EXT-X-SKIP";

    /* renamed from: v */
    public static final String f26201v = "#EXT-X-DISCONTINUITY-SEQUENCE";

    /* renamed from: v0 */
    public static final String f26202v0 = "#EXT-X-PRELOAD-HINT";

    /* renamed from: w */
    public static final String f26204w = "#EXT-X-PROGRAM-DATE-TIME";

    /* renamed from: w0 */
    public static final String f26205w0 = "#EXT-X-RENDITION-REPORT";

    /* renamed from: x */
    public static final String f26207x = "#EXT-X-MAP";

    /* renamed from: x0 */
    public static final String f26208x0 = "AUDIO";

    /* renamed from: y */
    public static final String f26210y = "#EXT-X-INDEPENDENT-SEGMENTS";

    /* renamed from: y0 */
    public static final String f26211y0 = "VIDEO";

    /* renamed from: z */
    public static final String f26213z = "#EXTINF";

    /* renamed from: z0 */
    public static final String f26214z0 = "SUBTITLES";

    /* renamed from: e */
    public final HlsMultivariantPlaylist f26216e;

    /* renamed from: f */
    @Nullable
    public final HlsMediaPlaylist f26217f;

    /* renamed from: P0 */
    public static final Pattern f26148P0 = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* renamed from: Q0 */
    public static final Pattern f26150Q0 = Pattern.compile("VIDEO=\"(.+?)\"");

    /* renamed from: R0 */
    public static final Pattern f26151R0 = Pattern.compile("AUDIO=\"(.+?)\"");

    /* renamed from: S0 */
    public static final Pattern f26152S0 = Pattern.compile("SUBTITLES=\"(.+?)\"");

    /* renamed from: T0 */
    public static final Pattern f26153T0 = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");

    /* renamed from: U0 */
    public static final Pattern f26154U0 = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* renamed from: V0 */
    public static final Pattern f26155V0 = Pattern.compile("CHANNELS=\"(.+?)\"");

    /* renamed from: W0 */
    public static final Pattern f26156W0 = Pattern.compile("CODECS=\"(.+?)\"");

    /* renamed from: X0 */
    public static final Pattern f26157X0 = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* renamed from: Y0 */
    public static final Pattern f26158Y0 = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* renamed from: Z0 */
    public static final Pattern f26160Z0 = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* renamed from: a1 */
    public static final Pattern f26161a1 = Pattern.compile("DURATION=([\\d\\.]+)\\b");

    /* renamed from: b1 */
    public static final Pattern f26162b1 = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");

    /* renamed from: c1 */
    public static final Pattern f26163c1 = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");

    /* renamed from: d1 */
    public static final Pattern f26164d1 = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");

    /* renamed from: e1 */
    public static final Pattern f26165e1 = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");

    /* renamed from: f1 */
    public static final Pattern f26166f1 = m20222b("CAN-SKIP-DATERANGES");

    /* renamed from: g1 */
    public static final Pattern f26168g1 = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");

    /* renamed from: h1 */
    public static final Pattern f26170h1 = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");

    /* renamed from: i1 */
    public static final Pattern f26172i1 = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");

    /* renamed from: j1 */
    public static final Pattern f26174j1 = m20222b("CAN-BLOCK-RELOAD");

    /* renamed from: k1 */
    public static final Pattern f26177k1 = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");

    /* renamed from: l1 */
    public static final Pattern f26179l1 = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");

    /* renamed from: m1 */
    public static final Pattern f26181m1 = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");

    /* renamed from: n1 */
    public static final Pattern f26183n1 = Pattern.compile("LAST-MSN=(\\d+)\\b");

    /* renamed from: o1 */
    public static final Pattern f26185o1 = Pattern.compile("LAST-PART=(\\d+)\\b");

    /* renamed from: p1 */
    public static final Pattern f26187p1 = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");

    /* renamed from: q1 */
    public static final Pattern f26190q1 = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");

    /* renamed from: r1 */
    public static final Pattern f26192r1 = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");

    /* renamed from: s1 */
    public static final Pattern f26194s1 = Pattern.compile("BYTERANGE-START=(\\d+)\\b");

    /* renamed from: t1 */
    public static final Pattern f26197t1 = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");

    /* renamed from: u1 */
    public static final Pattern f26200u1 = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");

    /* renamed from: v1 */
    public static final Pattern f26203v1 = Pattern.compile("KEYFORMAT=\"(.+?)\"");

    /* renamed from: w1 */
    public static final Pattern f26206w1 = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");

    /* renamed from: x1 */
    public static final Pattern f26209x1 = Pattern.compile("URI=\"(.+?)\"");

    /* renamed from: y1 */
    public static final Pattern f26212y1 = Pattern.compile("IV=([^,.*]+)");

    /* renamed from: z1 */
    public static final Pattern f26215z1 = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");

    /* renamed from: A1 */
    public static final Pattern f26117A1 = Pattern.compile("TYPE=(PART|MAP)");

    /* renamed from: B1 */
    public static final Pattern f26119B1 = Pattern.compile("LANGUAGE=\"(.+?)\"");

    /* renamed from: C1 */
    public static final Pattern f26121C1 = Pattern.compile("NAME=\"(.+?)\"");

    /* renamed from: D1 */
    public static final Pattern f26123D1 = Pattern.compile("GROUP-ID=\"(.+?)\"");

    /* renamed from: E1 */
    public static final Pattern f26125E1 = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");

    /* renamed from: F1 */
    public static final Pattern f26127F1 = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");

    /* renamed from: G1 */
    public static final Pattern f26129G1 = m20222b("AUTOSELECT");

    /* renamed from: H1 */
    public static final Pattern f26131H1 = m20222b("DEFAULT");

    /* renamed from: I1 */
    public static final Pattern f26133I1 = m20222b("FORCED");

    /* renamed from: J1 */
    public static final Pattern f26136J1 = m20222b("INDEPENDENT");

    /* renamed from: K1 */
    public static final Pattern f26138K1 = m20222b("GAP");

    /* renamed from: L1 */
    public static final Pattern f26140L1 = m20222b("PRECISE");

    /* renamed from: M1 */
    public static final Pattern f26142M1 = Pattern.compile("VALUE=\"(.+?)\"");

    /* renamed from: N1 */
    public static final Pattern f26144N1 = Pattern.compile("IMPORT=\"(.+?)\"");

    /* renamed from: O1 */
    public static final Pattern f26147O1 = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* loaded from: classes5.dex */
    public static final class DeltaUpdateException extends IOException {
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser$a */
    /* loaded from: classes5.dex */
    public static class C4896a {

        /* renamed from: a */
        public final BufferedReader f26218a;

        /* renamed from: b */
        public final Queue<String> f26219b;

        /* renamed from: c */
        @Nullable
        public String f26220c;

        public C4896a(Queue<String> queue, BufferedReader bufferedReader) {
            this.f26219b = queue;
            this.f26218a = bufferedReader;
        }

        @EnsuresNonNullIf(expression = {Constants.NEXT}, result = true)
        /* renamed from: a */
        public boolean m20247a() throws IOException {
            String trim;
            if (this.f26220c != null) {
                return true;
            }
            if (!this.f26219b.isEmpty()) {
                this.f26220c = (String) Assertions.checkNotNull(this.f26219b.poll());
                return true;
            }
            do {
                String readLine = this.f26218a.readLine();
                this.f26220c = readLine;
                if (readLine == null) {
                    return false;
                }
                trim = readLine.trim();
                this.f26220c = trim;
            } while (trim.isEmpty());
            return true;
        }

        /* renamed from: b */
        public String m20248b() throws IOException {
            if (!m20247a()) {
                throw new NoSuchElementException();
            }
            String str = this.f26220c;
            this.f26220c = null;
            return str;
        }
    }

    public HlsPlaylistParser() {
        this(HlsMultivariantPlaylist.EMPTY, null);
    }

    /* renamed from: A */
    public static int m20220A(BufferedReader bufferedReader, boolean z, int i) throws IOException {
        while (i != -1 && Character.isWhitespace(i) && (z || !Util.isLinebreak(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    /* renamed from: a */
    public static boolean m20221a(BufferedReader bufferedReader) throws IOException {
        int read = bufferedReader.read();
        if (read == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            read = bufferedReader.read();
        }
        int m20220A = m20220A(bufferedReader, true, read);
        for (int i = 0; i < 7; i++) {
            if (m20220A != f26169h.charAt(i)) {
                return false;
            }
            m20220A = bufferedReader.read();
        }
        return Util.isLinebreak(m20220A(bufferedReader, false, m20220A));
    }

    /* renamed from: b */
    public static Pattern m20222b(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 9);
        sb.append(str);
        sb.append("=(");
        sb.append(f26143N0);
        sb.append(IidStore.f35940g);
        sb.append(f26141M0);
        sb.append(MotionUtils.f31762d);
        return Pattern.compile(sb.toString());
    }

    /* renamed from: c */
    public static DrmInitData m20223c(@Nullable String str, DrmInitData.SchemeData[] schemeDataArr) {
        DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
        for (int i = 0; i < schemeDataArr.length; i++) {
            schemeDataArr2[i] = schemeDataArr[i].copyWithData(null);
        }
        return new DrmInitData(str, schemeDataArr2);
    }

    @Nullable
    /* renamed from: d */
    public static String m20224d(long j, @Nullable String str, @Nullable String str2) {
        if (str == null) {
            return null;
        }
        return str2 != null ? str2 : Long.toHexString(j);
    }

    @Nullable
    /* renamed from: e */
    public static HlsMultivariantPlaylist.Variant m20225e(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.audioGroupId)) {
                return variant;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: f */
    public static HlsMultivariantPlaylist.Variant m20226f(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.subtitleGroupId)) {
                return variant;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: g */
    public static HlsMultivariantPlaylist.Variant m20227g(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.videoGroupId)) {
                return variant;
            }
        }
        return null;
    }

    /* renamed from: h */
    public static double m20228h(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(m20244x(str, pattern, Collections.emptyMap()));
    }

    @Nullable
    /* renamed from: i */
    public static DrmInitData.SchemeData m20229i(String str, String str2, Map<String, String> map) throws ParserException {
        String m20239s = m20239s(str, f26206w1, "1", map);
        if (f26137K0.equals(str2)) {
            String m20244x = m20244x(str, f26209x1, map);
            return new DrmInitData.SchemeData(C4649C.WIDEVINE_UUID, "video/mp4", Base64.decode(m20244x.substring(m20244x.indexOf(44)), 0));
        }
        if (f26139L0.equals(str2)) {
            return new DrmInitData.SchemeData(C4649C.WIDEVINE_UUID, "hls", Util.getUtf8Bytes(str));
        }
        if (!f26132I0.equals(str2) || !"1".equals(m20239s)) {
            return null;
        }
        String m20244x2 = m20244x(str, f26209x1, map);
        byte[] decode = Base64.decode(m20244x2.substring(m20244x2.indexOf(44)), 0);
        UUID uuid = C4649C.PLAYREADY_UUID;
        return new DrmInitData.SchemeData(uuid, "video/mp4", PsshAtomUtil.buildPsshAtom(uuid, decode));
    }

    /* renamed from: j */
    public static String m20230j(String str) {
        return (f26128G0.equals(str) || f26130H0.equals(str)) ? "cenc" : C4649C.CENC_TYPE_cbcs;
    }

    /* renamed from: k */
    public static int m20231k(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(m20244x(str, pattern, Collections.emptyMap()));
    }

    /* renamed from: l */
    public static long m20232l(String str, Pattern pattern) throws ParserException {
        return Long.parseLong(m20244x(str, pattern, Collections.emptyMap()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    public static HlsMediaPlaylist m20233m(HlsMultivariantPlaylist hlsMultivariantPlaylist, @Nullable HlsMediaPlaylist hlsMediaPlaylist, C4896a c4896a, String str) throws IOException {
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        long j;
        boolean z;
        int i;
        HlsMediaPlaylist.Part part;
        int i2;
        String m20240t;
        long j2;
        long j3;
        long j4;
        long j5;
        boolean z2;
        Object obj;
        HlsMultivariantPlaylist hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
        HlsMediaPlaylist hlsMediaPlaylist2 = hlsMediaPlaylist;
        boolean z3 = hlsMultivariantPlaylist2.hasIndependentSegments;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        HlsMediaPlaylist.ServerControl serverControl = new HlsMediaPlaylist.ServerControl(C4649C.TIME_UNSET, false, C4649C.TIME_UNSET, C4649C.TIME_UNSET, false);
        TreeMap treeMap = new TreeMap();
        boolean z4 = false;
        String str3 = "";
        boolean z5 = z3;
        HlsMediaPlaylist.ServerControl serverControl2 = serverControl;
        int i3 = 0;
        boolean z6 = false;
        boolean z7 = false;
        int i4 = 0;
        boolean z8 = false;
        boolean z9 = false;
        int i5 = 0;
        boolean z10 = false;
        String str4 = str3;
        String str5 = null;
        long j6 = C4649C.TIME_UNSET;
        long j7 = 0;
        long j8 = 0;
        int i6 = 1;
        long j9 = C4649C.TIME_UNSET;
        long j10 = C4649C.TIME_UNSET;
        DrmInitData drmInitData = null;
        long j11 = 0;
        Object obj2 = null;
        long j12 = 0;
        long j13 = -1;
        String str6 = null;
        String str7 = null;
        long j14 = 0;
        long j15 = 0;
        HlsMediaPlaylist.Segment segment = null;
        long j16 = 0;
        long j17 = 0;
        ArrayList arrayList7 = arrayList4;
        HlsMediaPlaylist.Part part2 = null;
        while (c4896a.m20247a()) {
            String m20248b = c4896a.m20248b();
            if (m20248b.startsWith(f26171i)) {
                arrayList6.add(m20248b);
            }
            if (m20248b.startsWith(f26175k)) {
                String m20244x = m20244x(m20248b, f26164d1, hashMap);
                if ("VOD".equals(m20244x)) {
                    i3 = 1;
                } else if ("EVENT".equals(m20244x)) {
                    i3 = 2;
                }
            } else if (m20248b.equals(f26191r)) {
                z10 = true;
            } else if (m20248b.startsWith(f26145O)) {
                j6 = (long) (m20228h(m20248b, f26187p1) * 1000000.0d);
                z6 = m20235o(m20248b, f26140L1, z4);
            } else if (m20248b.startsWith(f26180m)) {
                serverControl2 = m20243w(m20248b);
            } else if (m20248b.startsWith(f26184o)) {
                j10 = (long) (m20228h(m20248b, f26162b1) * 1000000.0d);
            } else if (m20248b.startsWith(f26207x)) {
                String m20244x2 = m20244x(m20248b, f26209x1, hashMap);
                String m20240t2 = m20240t(m20248b, f26192r1, hashMap);
                if (m20240t2 != null) {
                    String[] split = Util.split(m20240t2, "@");
                    j13 = Long.parseLong(split[z4 ? 1 : 0]);
                    if (split.length > 1) {
                        j11 = Long.parseLong(split[1]);
                    }
                }
                if (j13 == -1) {
                    j11 = 0;
                }
                String str8 = str6;
                if (str5 != null && str8 == null) {
                    throw ParserException.createForMalformedManifest("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                }
                segment = new HlsMediaPlaylist.Segment(m20244x2, j11, j13, str5, str8);
                if (j13 != -1) {
                    j11 += j13;
                }
                str6 = str8;
                j13 = -1;
            } else {
                String str9 = str6;
                if (m20248b.startsWith(f26195t)) {
                    j9 = 1000000 * m20231k(m20248b, f26160Z0);
                } else {
                    if (m20248b.startsWith(f26134J)) {
                        j15 = m20232l(m20248b, f26177k1);
                        str6 = str9;
                        j8 = j15;
                    } else if (m20248b.startsWith(f26173j)) {
                        i6 = m20231k(m20248b, f26163c1);
                    } else {
                        if (m20248b.startsWith(f26178l)) {
                            String m20240t3 = m20240t(m20248b, f26144N1, hashMap);
                            if (m20240t3 != null) {
                                String str10 = hlsMultivariantPlaylist2.variableDefinitions.get(m20240t3);
                                if (str10 != null) {
                                    hashMap.put(m20240t3, str10);
                                }
                            } else {
                                hashMap.put(m20244x(m20248b, f26121C1, hashMap), m20244x(m20248b, f26142M1, hashMap));
                            }
                            arrayList = arrayList7;
                            arrayList2 = arrayList6;
                            str2 = str7;
                            j = j15;
                            z = false;
                            i = i3;
                        } else if (m20248b.startsWith(f26213z)) {
                            j16 = m20245y(m20248b, f26179l1);
                            str4 = m20239s(m20248b, f26181m1, str3, hashMap);
                        } else {
                            String str11 = str3;
                            if (m20248b.startsWith(f26199u0)) {
                                int m20231k = m20231k(m20248b, f26168g1);
                                Assertions.checkState(hlsMediaPlaylist2 != null && arrayList3.isEmpty());
                                int i7 = (int) (j8 - ((HlsMediaPlaylist) Util.castNonNull(hlsMediaPlaylist)).mediaSequence);
                                int i8 = m20231k + i7;
                                if (i7 < 0 || i8 > hlsMediaPlaylist2.segments.size()) {
                                    throw new DeltaUpdateException();
                                }
                                str3 = str11;
                                String str12 = str9;
                                long j18 = j14;
                                while (i7 < i8) {
                                    HlsMediaPlaylist.Segment segment2 = hlsMediaPlaylist2.segments.get(i7);
                                    ArrayList arrayList8 = arrayList7;
                                    ArrayList arrayList9 = arrayList6;
                                    if (j8 != hlsMediaPlaylist2.mediaSequence) {
                                        segment2 = segment2.copyWith(j18, (hlsMediaPlaylist2.discontinuitySequence - i4) + segment2.relativeDiscontinuitySequence);
                                    }
                                    arrayList3.add(segment2);
                                    j18 += segment2.durationUs;
                                    long j19 = segment2.byteRangeLength;
                                    if (j19 != -1) {
                                        i2 = i8;
                                        j11 = segment2.byteRangeOffset + j19;
                                    } else {
                                        i2 = i8;
                                    }
                                    int i9 = segment2.relativeDiscontinuitySequence;
                                    HlsMediaPlaylist.Segment segment3 = segment2.initializationSegment;
                                    DrmInitData drmInitData2 = segment2.drmInitData;
                                    String str13 = segment2.fullSegmentEncryptionKeyUri;
                                    String str14 = segment2.encryptionIV;
                                    if (str14 == null || !str14.equals(Long.toHexString(j15))) {
                                        str12 = segment2.encryptionIV;
                                    }
                                    j15++;
                                    i7++;
                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                    obj2 = drmInitData2;
                                    str5 = str13;
                                    j12 = j18;
                                    i8 = i2;
                                    i5 = i9;
                                    segment = segment3;
                                    arrayList7 = arrayList8;
                                    arrayList6 = arrayList9;
                                }
                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                j14 = j18;
                                str6 = str12;
                            } else {
                                ArrayList arrayList10 = arrayList7;
                                arrayList2 = arrayList6;
                                str3 = str11;
                                if (m20248b.startsWith(f26159Z)) {
                                    String m20244x3 = m20244x(m20248b, f26200u1, hashMap);
                                    String m20239s = m20239s(m20248b, f26203v1, "identity", hashMap);
                                    if ("NONE".equals(m20244x3)) {
                                        treeMap.clear();
                                        m20240t = null;
                                        str5 = null;
                                    } else {
                                        m20240t = m20240t(m20248b, f26212y1, hashMap);
                                        if (!"identity".equals(m20239s)) {
                                            String str15 = str7;
                                            str7 = str15 == null ? m20230j(m20244x3) : str15;
                                            DrmInitData.SchemeData m20229i = m20229i(m20248b, m20239s, hashMap);
                                            if (m20229i != null) {
                                                treeMap.put(m20239s, m20229i);
                                                str5 = null;
                                            }
                                        } else if (f26124E0.equals(m20244x3)) {
                                            str5 = m20244x(m20248b, f26209x1, hashMap);
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            str6 = m20240t;
                                        }
                                        str5 = null;
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        str6 = m20240t;
                                    }
                                    obj2 = str5;
                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                    str6 = m20240t;
                                } else {
                                    String str16 = str7;
                                    if (m20248b.startsWith(f26189q0)) {
                                        String[] split2 = Util.split(m20244x(m20248b, f26190q1, hashMap), "@");
                                        j13 = Long.parseLong(split2[0]);
                                        if (split2.length > 1) {
                                            j11 = Long.parseLong(split2[1]);
                                        }
                                    } else if (m20248b.startsWith(f26201v)) {
                                        i4 = Integer.parseInt(m20248b.substring(m20248b.indexOf(58) + 1));
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        str7 = str16;
                                        str6 = str9;
                                        arrayList7 = arrayList10;
                                        arrayList6 = arrayList2;
                                        z4 = false;
                                        z7 = true;
                                    } else if (m20248b.equals(f26198u)) {
                                        i5++;
                                    } else {
                                        if (m20248b.startsWith(f26204w)) {
                                            if (j7 == 0) {
                                                j7 = Util.msToUs(Util.parseXsDateTime(m20248b.substring(m20248b.indexOf(58) + 1))) - j14;
                                            } else {
                                                i = i3;
                                                str2 = str16;
                                            }
                                        } else if (m20248b.equals(f26196t0)) {
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            str7 = str16;
                                            str6 = str9;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z4 = false;
                                            z9 = true;
                                        } else if (m20248b.equals(f26210y)) {
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            str7 = str16;
                                            str6 = str9;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z4 = false;
                                            z5 = true;
                                        } else if (m20248b.equals(f26149Q)) {
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            str7 = str16;
                                            str6 = str9;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z4 = false;
                                            z8 = true;
                                        } else if (m20248b.startsWith(f26205w0)) {
                                            i = i3;
                                            str2 = str16;
                                            arrayList5.add(new HlsMediaPlaylist.RenditionReport(Uri.parse(UriUtil.resolve(str, m20244x(m20248b, f26209x1, hashMap))), m20238r(m20248b, f26183n1, -1L), m20237q(m20248b, f26185o1, -1)));
                                        } else {
                                            i = i3;
                                            str2 = str16;
                                            if (!m20248b.startsWith(f26202v0)) {
                                                j = j15;
                                                if (m20248b.startsWith(f26186p)) {
                                                    String m20224d = m20224d(j, str5, str9);
                                                    String m20244x4 = m20244x(m20248b, f26209x1, hashMap);
                                                    long m20228h = (long) (m20228h(m20248b, f26161a1) * 1000000.0d);
                                                    HlsMediaPlaylist.Part part3 = part2;
                                                    boolean m20235o = m20235o(m20248b, f26136J1, false) | (z5 && arrayList10.isEmpty());
                                                    boolean m20235o2 = m20235o(m20248b, f26138K1, false);
                                                    String m20240t4 = m20240t(m20248b, f26192r1, hashMap);
                                                    if (m20240t4 != null) {
                                                        String[] split3 = Util.split(m20240t4, "@");
                                                        j3 = Long.parseLong(split3[0]);
                                                        if (split3.length > 1) {
                                                            j17 = Long.parseLong(split3[1]);
                                                        }
                                                        j2 = -1;
                                                    } else {
                                                        j2 = -1;
                                                        j3 = -1;
                                                    }
                                                    if (j3 == j2) {
                                                        j17 = 0;
                                                    }
                                                    if (obj2 == null && !treeMap.isEmpty()) {
                                                        DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                        DrmInitData drmInitData3 = new DrmInitData(str2, schemeDataArr);
                                                        if (drmInitData == null) {
                                                            drmInitData = m20223c(str2, schemeDataArr);
                                                        }
                                                        obj2 = drmInitData3;
                                                    }
                                                    arrayList10.add(new HlsMediaPlaylist.Part(m20244x4, segment, m20228h, i5, j12, obj2, str5, m20224d, j17, j3, m20235o2, m20235o, false));
                                                    j12 += m20228h;
                                                    if (j3 != j2) {
                                                        j17 += j3;
                                                    }
                                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                    str6 = str9;
                                                    i3 = i;
                                                    part2 = part3;
                                                    j15 = j;
                                                    str7 = str2;
                                                    arrayList7 = arrayList10;
                                                    arrayList6 = arrayList2;
                                                } else {
                                                    part = part2;
                                                    arrayList = arrayList10;
                                                    if (m20248b.startsWith("#")) {
                                                        z = false;
                                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                        str6 = str9;
                                                        i3 = i;
                                                        part2 = part;
                                                        j15 = j;
                                                        str7 = str2;
                                                        arrayList7 = arrayList;
                                                        arrayList6 = arrayList2;
                                                        z4 = z;
                                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                    } else {
                                                        String m20224d2 = m20224d(j, str5, str9);
                                                        long j20 = j + 1;
                                                        String m20246z = m20246z(m20248b, hashMap);
                                                        HlsMediaPlaylist.Segment segment4 = (HlsMediaPlaylist.Segment) hashMap2.get(m20246z);
                                                        if (j13 == -1) {
                                                            j4 = 0;
                                                        } else {
                                                            if (z10 && segment == null && segment4 == null) {
                                                                segment4 = new HlsMediaPlaylist.Segment(m20246z, 0L, j11, null, null);
                                                                hashMap2.put(m20246z, segment4);
                                                            }
                                                            j4 = j11;
                                                        }
                                                        if (obj2 != null || treeMap.isEmpty()) {
                                                            j5 = j20;
                                                            z2 = false;
                                                            obj = obj2;
                                                        } else {
                                                            j5 = j20;
                                                            z2 = false;
                                                            DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                            obj = new DrmInitData(str2, schemeDataArr2);
                                                            if (drmInitData == null) {
                                                                drmInitData = m20223c(str2, schemeDataArr2);
                                                            }
                                                        }
                                                        arrayList3.add(new HlsMediaPlaylist.Segment(m20246z, segment != null ? segment : segment4, str4, j16, i5, j14, obj, str5, m20224d2, j4, j13, z9, arrayList));
                                                        j12 = j14 + j16;
                                                        arrayList7 = new ArrayList();
                                                        if (j13 != -1) {
                                                            j4 += j13;
                                                        }
                                                        j11 = j4;
                                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                        z9 = z2;
                                                        str6 = str9;
                                                        obj2 = obj;
                                                        str4 = str3;
                                                        j14 = j12;
                                                        i3 = i;
                                                        part2 = part;
                                                        arrayList6 = arrayList2;
                                                        j13 = -1;
                                                        j16 = 0;
                                                        str7 = str2;
                                                        j15 = j5;
                                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                        z4 = z9;
                                                    }
                                                }
                                            } else if (part2 == null && f26118B0.equals(m20244x(m20248b, f26117A1, hashMap))) {
                                                String m20244x5 = m20244x(m20248b, f26209x1, hashMap);
                                                long m20238r = m20238r(m20248b, f26194s1, -1L);
                                                long m20238r2 = m20238r(m20248b, f26197t1, -1L);
                                                long j21 = j15;
                                                String m20224d3 = m20224d(j21, str5, str9);
                                                if (obj2 == null && !treeMap.isEmpty()) {
                                                    DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                    DrmInitData drmInitData4 = new DrmInitData(str2, schemeDataArr3);
                                                    if (drmInitData == null) {
                                                        drmInitData = m20223c(str2, schemeDataArr3);
                                                    }
                                                    obj2 = drmInitData4;
                                                }
                                                if (m20238r == -1 || m20238r2 != -1) {
                                                    part2 = new HlsMediaPlaylist.Part(m20244x5, segment, 0L, i5, j12, obj2, str5, m20224d3, m20238r != -1 ? m20238r : 0L, m20238r2, false, false, true);
                                                }
                                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                j15 = j21;
                                                str6 = str9;
                                                arrayList7 = arrayList10;
                                                i3 = i;
                                                arrayList6 = arrayList2;
                                                str7 = str2;
                                            }
                                        }
                                        arrayList = arrayList10;
                                        j = j15;
                                        z = false;
                                    }
                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                    str7 = str16;
                                    str6 = str9;
                                }
                                arrayList7 = arrayList10;
                                arrayList6 = arrayList2;
                            }
                        }
                        part = part2;
                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                        str6 = str9;
                        i3 = i;
                        part2 = part;
                        j15 = j;
                        str7 = str2;
                        arrayList7 = arrayList;
                        arrayList6 = arrayList2;
                        z4 = z;
                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                    }
                    z4 = false;
                }
                str6 = str9;
                z4 = false;
            }
        }
        int i10 = i3;
        HlsMediaPlaylist.Part part4 = part2;
        ArrayList arrayList11 = arrayList7;
        ArrayList arrayList12 = arrayList6;
        int i11 = z4 ? 1 : 0;
        HashMap hashMap3 = new HashMap();
        for (int i12 = i11; i12 < arrayList5.size(); i12++) {
            HlsMediaPlaylist.RenditionReport renditionReport = (HlsMediaPlaylist.RenditionReport) arrayList5.get(i12);
            long j22 = renditionReport.lastMediaSequence;
            if (j22 == -1) {
                j22 = (j8 + arrayList3.size()) - (arrayList11.isEmpty() ? 1L : 0L);
            }
            int i13 = renditionReport.lastPartIndex;
            if (i13 == -1 && j10 != C4649C.TIME_UNSET) {
                i13 = (arrayList11.isEmpty() ? ((HlsMediaPlaylist.Segment) Iterables.getLast(arrayList3)).parts : arrayList11).size() - 1;
            }
            Uri uri = renditionReport.playlistUri;
            hashMap3.put(uri, new HlsMediaPlaylist.RenditionReport(uri, j22, i13));
        }
        if (part4 != null) {
            arrayList11.add(part4);
        }
        return new HlsMediaPlaylist(i10, str, arrayList12, j6, z6, j7, z7, i4, j8, i6, j9, j10, z5, z8, j7 != 0, drmInitData, arrayList3, arrayList11, serverControl2, hashMap3);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:85:0x0363. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    /* renamed from: n */
    public static HlsMultivariantPlaylist m20234n(C4896a c4896a, String str) throws IOException {
        char c;
        Format format;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        ArrayList arrayList3;
        int parseInt;
        String str3;
        String str4;
        boolean z;
        int i;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        int i2;
        int i3;
        ArrayList arrayList9;
        ArrayList arrayList10;
        Uri resolveToUri;
        HashMap hashMap;
        int i4;
        String str5 = str;
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        ArrayList arrayList16 = new ArrayList();
        ArrayList arrayList17 = new ArrayList();
        ArrayList arrayList18 = new ArrayList();
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            boolean m20247a = c4896a.m20247a();
            String str6 = MimeTypes.APPLICATION_M3U8;
            if (!m20247a) {
                HashMap hashMap4 = hashMap2;
                ArrayList arrayList19 = arrayList16;
                ArrayList arrayList20 = arrayList12;
                ArrayList arrayList21 = arrayList13;
                ArrayList arrayList22 = arrayList14;
                ArrayList arrayList23 = arrayList15;
                ArrayList arrayList24 = arrayList18;
                boolean z4 = z2;
                ArrayList arrayList25 = arrayList17;
                ArrayList arrayList26 = new ArrayList();
                HashSet hashSet = new HashSet();
                for (int i5 = 0; i5 < arrayList11.size(); i5++) {
                    HlsMultivariantPlaylist.Variant variant = (HlsMultivariantPlaylist.Variant) arrayList11.get(i5);
                    if (hashSet.add(variant.url)) {
                        Assertions.checkState(variant.format.metadata == null);
                        arrayList26.add(variant.copyWithFormat(variant.format.buildUpon().setMetadata(new Metadata(new HlsTrackMetadataEntry(null, null, (List) Assertions.checkNotNull((ArrayList) hashMap4.get(variant.url))))).build()));
                    }
                }
                Uri uri = null;
                ArrayList arrayList27 = null;
                Format format2 = null;
                int i6 = 0;
                while (i6 < arrayList19.size()) {
                    ArrayList arrayList28 = arrayList19;
                    String str7 = (String) arrayList28.get(i6);
                    String m20244x = m20244x(str7, f26123D1, hashMap3);
                    String m20244x2 = m20244x(str7, f26121C1, hashMap3);
                    Format.Builder builder = new Format.Builder();
                    StringBuilder sb = new StringBuilder(String.valueOf(m20244x).length() + 1 + String.valueOf(m20244x2).length());
                    sb.append(m20244x);
                    sb.append(":");
                    sb.append(m20244x2);
                    Format.Builder language = builder.setId(sb.toString()).setLabel(m20244x2).setContainerMimeType(str6).setSelectionFlags(m20242v(str7)).setRoleFlags(m20241u(str7, hashMap3)).setLanguage(m20240t(str7, f26119B1, hashMap3));
                    String m20240t = m20240t(str7, f26209x1, hashMap3);
                    Uri resolveToUri2 = m20240t == null ? uri : UriUtil.resolveToUri(str, m20240t);
                    arrayList19 = arrayList28;
                    String str8 = str6;
                    Metadata metadata = new Metadata(new HlsTrackMetadataEntry(m20244x, m20244x2, Collections.emptyList()));
                    String m20244x3 = m20244x(str7, f26215z1, hashMap3);
                    m20244x3.hashCode();
                    switch (m20244x3.hashCode()) {
                        case -959297733:
                            if (m20244x3.equals(f26214z0)) {
                                c = 0;
                                break;
                            }
                            break;
                        case -333210994:
                            if (m20244x3.equals(f26116A0)) {
                                c = 1;
                                break;
                            }
                            break;
                        case 62628790:
                            if (m20244x3.equals("AUDIO")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 81665115:
                            if (m20244x3.equals(f26211y0)) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    c = 65535;
                    switch (c) {
                        case 0:
                            format = format2;
                            arrayList = arrayList21;
                            arrayList2 = arrayList20;
                            HlsMultivariantPlaylist.Variant m20226f = m20226f(arrayList11, m20244x);
                            if (m20226f != null) {
                                String codecsOfType = Util.getCodecsOfType(m20226f.format.codecs, 3);
                                language.setCodecs(codecsOfType);
                                str2 = MimeTypes.getMediaMimeType(codecsOfType);
                            } else {
                                str2 = null;
                            }
                            if (str2 == null) {
                                str2 = MimeTypes.TEXT_VTT;
                            }
                            language.setSampleMimeType(str2).setMetadata(metadata);
                            if (resolveToUri2 != null) {
                                HlsMultivariantPlaylist.Rendition rendition = new HlsMultivariantPlaylist.Rendition(resolveToUri2, language.build(), m20244x, m20244x2);
                                arrayList3 = arrayList22;
                                arrayList3.add(rendition);
                                break;
                            } else {
                                arrayList3 = arrayList22;
                                Log.m21493w(f26167g, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                                break;
                            }
                        case 1:
                            format = format2;
                            arrayList = arrayList21;
                            arrayList2 = arrayList20;
                            String m20244x4 = m20244x(str7, f26127F1, hashMap3);
                            if (m20244x4.startsWith("CC")) {
                                parseInt = Integer.parseInt(m20244x4.substring(2));
                                str3 = MimeTypes.APPLICATION_CEA608;
                            } else {
                                parseInt = Integer.parseInt(m20244x4.substring(7));
                                str3 = MimeTypes.APPLICATION_CEA708;
                            }
                            if (arrayList27 == null) {
                                arrayList27 = new ArrayList();
                            }
                            language.setSampleMimeType(str3).setAccessibilityChannel(parseInt);
                            arrayList27.add(language.build());
                            arrayList3 = arrayList22;
                            break;
                        case 2:
                            arrayList2 = arrayList20;
                            HlsMultivariantPlaylist.Variant m20225e = m20225e(arrayList11, m20244x);
                            if (m20225e != null) {
                                format = format2;
                                String codecsOfType2 = Util.getCodecsOfType(m20225e.format.codecs, 1);
                                language.setCodecs(codecsOfType2);
                                str4 = MimeTypes.getMediaMimeType(codecsOfType2);
                            } else {
                                format = format2;
                                str4 = null;
                            }
                            String m20240t2 = m20240t(str7, f26155V0, hashMap3);
                            if (m20240t2 != null) {
                                language.setChannelCount(Integer.parseInt(Util.splitAtFirst(m20240t2, "/")[0]));
                                if (MimeTypes.AUDIO_E_AC3.equals(str4) && m20240t2.endsWith("/JOC")) {
                                    language.setCodecs(MimeTypes.CODEC_E_AC3_JOC);
                                    str4 = MimeTypes.AUDIO_E_AC3_JOC;
                                }
                            }
                            language.setSampleMimeType(str4);
                            if (resolveToUri2 != null) {
                                language.setMetadata(metadata);
                                arrayList = arrayList21;
                                arrayList.add(new HlsMultivariantPlaylist.Rendition(resolveToUri2, language.build(), m20244x, m20244x2));
                            } else {
                                arrayList = arrayList21;
                                if (m20225e != null) {
                                    format = language.build();
                                }
                            }
                            arrayList3 = arrayList22;
                            break;
                        case 3:
                            HlsMultivariantPlaylist.Variant m20227g = m20227g(arrayList11, m20244x);
                            if (m20227g != null) {
                                Format format3 = m20227g.format;
                                String codecsOfType3 = Util.getCodecsOfType(format3.codecs, 2);
                                language.setCodecs(codecsOfType3).setSampleMimeType(MimeTypes.getMediaMimeType(codecsOfType3)).setWidth(format3.width).setHeight(format3.height).setFrameRate(format3.frameRate);
                            }
                            if (resolveToUri2 != null) {
                                language.setMetadata(metadata);
                                arrayList2 = arrayList20;
                                arrayList2.add(new HlsMultivariantPlaylist.Rendition(resolveToUri2, language.build(), m20244x, m20244x2));
                                format = format2;
                                arrayList3 = arrayList22;
                                arrayList = arrayList21;
                                break;
                            }
                        default:
                            format = format2;
                            arrayList3 = arrayList22;
                            arrayList = arrayList21;
                            arrayList2 = arrayList20;
                            break;
                    }
                    i6++;
                    arrayList22 = arrayList3;
                    arrayList21 = arrayList;
                    arrayList20 = arrayList2;
                    str6 = str8;
                    format2 = format;
                    uri = null;
                }
                return new HlsMultivariantPlaylist(str, arrayList24, arrayList26, arrayList20, arrayList21, arrayList22, arrayList23, format2, z3 ? Collections.emptyList() : arrayList27, z4, hashMap3, arrayList25);
            }
            String m20248b = c4896a.m20248b();
            if (m20248b.startsWith(f26171i)) {
                arrayList18.add(m20248b);
            }
            boolean startsWith = m20248b.startsWith(f26188q);
            boolean z5 = z2;
            if (m20248b.startsWith(f26178l)) {
                hashMap3.put(m20244x(m20248b, f26121C1, hashMap3), m20244x(m20248b, f26142M1, hashMap3));
            } else {
                if (m20248b.equals(f26210y)) {
                    hashMap = hashMap2;
                    arrayList10 = arrayList16;
                    arrayList9 = arrayList12;
                    arrayList8 = arrayList13;
                    arrayList7 = arrayList14;
                    arrayList5 = arrayList15;
                    arrayList6 = arrayList18;
                    arrayList4 = arrayList17;
                    z2 = true;
                } else if (m20248b.startsWith(f26193s)) {
                    arrayList16.add(m20248b);
                } else if (m20248b.startsWith(f26176k0)) {
                    DrmInitData.SchemeData m20229i = m20229i(m20248b, m20239s(m20248b, f26203v1, "identity", hashMap3), hashMap3);
                    if (m20229i != null) {
                        arrayList17.add(new DrmInitData(m20230j(m20244x(m20248b, f26200u1, hashMap3)), m20229i));
                    }
                } else if (m20248b.startsWith(f26182n) || startsWith) {
                    boolean contains = z3 | m20248b.contains(f26146O0);
                    if (startsWith) {
                        i = 16384;
                        z = contains;
                    } else {
                        z = contains;
                        i = 0;
                    }
                    int m20231k = m20231k(m20248b, f26154U0);
                    arrayList4 = arrayList17;
                    arrayList5 = arrayList15;
                    int m20237q = m20237q(m20248b, f26148P0, -1);
                    String m20240t3 = m20240t(m20248b, f26156W0, hashMap3);
                    arrayList6 = arrayList18;
                    String m20240t4 = m20240t(m20248b, f26157X0, hashMap3);
                    if (m20240t4 != null) {
                        arrayList7 = arrayList14;
                        String[] split = Util.split(m20240t4, "x");
                        int parseInt2 = Integer.parseInt(split[0]);
                        int parseInt3 = Integer.parseInt(split[1]);
                        if (parseInt2 <= 0 || parseInt3 <= 0) {
                            parseInt3 = -1;
                            i4 = -1;
                        } else {
                            i4 = parseInt2;
                        }
                        arrayList8 = arrayList13;
                        i3 = parseInt3;
                        i2 = i4;
                    } else {
                        arrayList7 = arrayList14;
                        arrayList8 = arrayList13;
                        i2 = -1;
                        i3 = -1;
                    }
                    String m20240t5 = m20240t(m20248b, f26158Y0, hashMap3);
                    float parseFloat = m20240t5 != null ? Float.parseFloat(m20240t5) : -1.0f;
                    arrayList9 = arrayList12;
                    String m20240t6 = m20240t(m20248b, f26150Q0, hashMap3);
                    arrayList10 = arrayList16;
                    String m20240t7 = m20240t(m20248b, f26151R0, hashMap3);
                    HashMap hashMap5 = hashMap2;
                    String m20240t8 = m20240t(m20248b, f26152S0, hashMap3);
                    String m20240t9 = m20240t(m20248b, f26153T0, hashMap3);
                    if (startsWith) {
                        resolveToUri = UriUtil.resolveToUri(str5, m20244x(m20248b, f26209x1, hashMap3));
                    } else {
                        if (!c4896a.m20247a()) {
                            throw ParserException.createForMalformedManifest("#EXT-X-STREAM-INF must be followed by another line", null);
                        }
                        resolveToUri = UriUtil.resolveToUri(str5, m20246z(c4896a.m20248b(), hashMap3));
                    }
                    arrayList11.add(new HlsMultivariantPlaylist.Variant(resolveToUri, new Format.Builder().setId(arrayList11.size()).setContainerMimeType(MimeTypes.APPLICATION_M3U8).setCodecs(m20240t3).setAverageBitrate(m20237q).setPeakBitrate(m20231k).setWidth(i2).setHeight(i3).setFrameRate(parseFloat).setRoleFlags(i).build(), m20240t6, m20240t7, m20240t8, m20240t9));
                    hashMap = hashMap5;
                    ArrayList arrayList29 = (ArrayList) hashMap.get(resolveToUri);
                    if (arrayList29 == null) {
                        arrayList29 = new ArrayList();
                        hashMap.put(resolveToUri, arrayList29);
                    }
                    arrayList29.add(new HlsTrackMetadataEntry.VariantInfo(m20237q, m20231k, m20240t6, m20240t7, m20240t8, m20240t9));
                    z2 = z5;
                    z3 = z;
                }
                hashMap2 = hashMap;
                arrayList17 = arrayList4;
                arrayList15 = arrayList5;
                arrayList18 = arrayList6;
                arrayList14 = arrayList7;
                arrayList13 = arrayList8;
                arrayList12 = arrayList9;
                arrayList16 = arrayList10;
                str5 = str;
            }
            hashMap = hashMap2;
            arrayList10 = arrayList16;
            arrayList9 = arrayList12;
            arrayList8 = arrayList13;
            arrayList7 = arrayList14;
            arrayList5 = arrayList15;
            arrayList6 = arrayList18;
            arrayList4 = arrayList17;
            z2 = z5;
            hashMap2 = hashMap;
            arrayList17 = arrayList4;
            arrayList15 = arrayList5;
            arrayList18 = arrayList6;
            arrayList14 = arrayList7;
            arrayList13 = arrayList8;
            arrayList12 = arrayList9;
            arrayList16 = arrayList10;
            str5 = str;
        }
    }

    /* renamed from: o */
    public static boolean m20235o(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? f26141M0.equals(matcher.group(1)) : z;
    }

    /* renamed from: p */
    public static double m20236p(String str, Pattern pattern, double d) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Double.parseDouble((String) Assertions.checkNotNull(matcher.group(1))) : d;
    }

    /* renamed from: q */
    public static int m20237q(String str, Pattern pattern, int i) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1))) : i;
    }

    /* renamed from: r */
    public static long m20238r(String str, Pattern pattern, long j) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Long.parseLong((String) Assertions.checkNotNull(matcher.group(1))) : j;
    }

    /* renamed from: s */
    public static String m20239s(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = (String) Assertions.checkNotNull(matcher.group(1));
        }
        return (map.isEmpty() || str2 == null) ? str2 : m20246z(str2, map);
    }

    @Nullable
    /* renamed from: t */
    public static String m20240t(String str, Pattern pattern, Map<String, String> map) {
        return m20239s(str, pattern, null, map);
    }

    /* renamed from: u */
    public static int m20241u(String str, Map<String, String> map) {
        String m20240t = m20240t(str, f26125E1, map);
        if (TextUtils.isEmpty(m20240t)) {
            return 0;
        }
        String[] split = Util.split(m20240t, ",");
        int i = Util.contains(split, "public.accessibility.describes-video") ? 512 : 0;
        if (Util.contains(split, "public.accessibility.transcribes-spoken-dialog")) {
            i |= 4096;
        }
        if (Util.contains(split, "public.accessibility.describes-music-and-sound")) {
            i |= 1024;
        }
        return Util.contains(split, "public.easy-to-read") ? i | 8192 : i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* renamed from: v */
    public static int m20242v(String str) {
        boolean m20235o = m20235o(str, f26131H1, false);
        ?? r0 = m20235o;
        if (m20235o(str, f26133I1, false)) {
            r0 = (m20235o ? 1 : 0) | 2;
        }
        return m20235o(str, f26129G1, false) ? r0 | 4 : r0;
    }

    /* renamed from: w */
    public static HlsMediaPlaylist.ServerControl m20243w(String str) {
        double m20236p = m20236p(str, f26165e1, -9.223372036854776E18d);
        long j = C4649C.TIME_UNSET;
        long j2 = m20236p == -9.223372036854776E18d ? -9223372036854775807L : (long) (m20236p * 1000000.0d);
        boolean m20235o = m20235o(str, f26166f1, false);
        double m20236p2 = m20236p(str, f26170h1, -9.223372036854776E18d);
        long j3 = m20236p2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (m20236p2 * 1000000.0d);
        double m20236p3 = m20236p(str, f26172i1, -9.223372036854776E18d);
        if (m20236p3 != -9.223372036854776E18d) {
            j = (long) (m20236p3 * 1000000.0d);
        }
        return new HlsMediaPlaylist.ServerControl(j2, m20235o, j3, j, m20235o(str, f26174j1, false));
    }

    /* renamed from: x */
    public static String m20244x(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String m20240t = m20240t(str, pattern, map);
        if (m20240t != null) {
            return m20240t;
        }
        String pattern2 = pattern.pattern();
        StringBuilder sb = new StringBuilder(String.valueOf(pattern2).length() + 19 + String.valueOf(str).length());
        sb.append("Couldn't match ");
        sb.append(pattern2);
        sb.append(CloudStorageConstants.OPERATION_IN);
        sb.append(str);
        throw ParserException.createForMalformedManifest(sb.toString(), null);
    }

    /* renamed from: y */
    public static long m20245y(String str, Pattern pattern) throws ParserException {
        return new BigDecimal(m20244x(str, pattern, Collections.emptyMap())).multiply(new BigDecimal(1000000L)).longValue();
    }

    /* renamed from: z */
    public static String m20246z(String str, Map<String, String> map) {
        Matcher matcher = f26147O1.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            if (map.containsKey(group)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(group)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public HlsPlaylistParser(HlsMultivariantPlaylist hlsMultivariantPlaylist, @Nullable HlsMediaPlaylist hlsMediaPlaylist) {
        this.f26216e = hlsMultivariantPlaylist;
        this.f26217f = hlsMediaPlaylist;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws IOException {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (m20221a(bufferedReader)) {
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        trim = readLine.trim();
                        if (!trim.isEmpty()) {
                            if (trim.startsWith(f26182n)) {
                                arrayDeque.add(trim);
                                return m20234n(new C4896a(arrayDeque, bufferedReader), uri.toString());
                            }
                            if (trim.startsWith(f26195t) || trim.startsWith(f26134J) || trim.startsWith(f26213z) || trim.startsWith(f26159Z) || trim.startsWith(f26189q0) || trim.equals(f26198u) || trim.equals(f26201v) || trim.equals(f26149Q)) {
                                break;
                            }
                            arrayDeque.add(trim);
                        }
                    } else {
                        Util.closeQuietly(bufferedReader);
                        throw ParserException.createForMalformedManifest("Failed to parse the playlist, could not identify any tags.", null);
                    }
                }
                arrayDeque.add(trim);
                return m20233m(this.f26216e, this.f26217f, new C4896a(arrayDeque, bufferedReader), uri.toString());
            }
            throw ParserException.createForMalformedManifest("Input does not start with the #EXTM3U header.", null);
        } finally {
            Util.closeQuietly(bufferedReader);
        }
    }
}
