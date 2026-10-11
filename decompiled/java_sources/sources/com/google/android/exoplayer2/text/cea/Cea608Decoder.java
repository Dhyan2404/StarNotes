package com.google.android.exoplayer2.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.alibaba.fastjson2.JSONB;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.SubtitleInputBuffer;
import com.google.android.exoplayer2.text.SubtitleOutputBuffer;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.sunia.HTREnginev2.vod;
import com.sunia.HTREnginev2.wod;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class Cea608Decoder extends vod {

    /* renamed from: A */
    public static final String f26792A = "Cea608Decoder";

    /* renamed from: B */
    public static final int f26793B = 4;

    /* renamed from: C */
    public static final int f26794C = 2;

    /* renamed from: D */
    public static final int f26795D = 1;

    /* renamed from: E */
    public static final int f26796E = 0;

    /* renamed from: F */
    public static final int f26797F = 1;

    /* renamed from: G */
    public static final int f26798G = 0;

    /* renamed from: H */
    public static final int f26799H = 1;

    /* renamed from: I */
    public static final int f26800I = 0;

    /* renamed from: J */
    public static final int f26801J = 1;

    /* renamed from: K */
    public static final int f26802K = 2;

    /* renamed from: L */
    public static final int f26803L = 3;
    public static final long MIN_DATA_CHANNEL_TIMEOUT_MS = 16000;

    /* renamed from: P */
    public static final int f26807P = 7;

    /* renamed from: Q */
    public static final int f26808Q = 8;

    /* renamed from: R */
    public static final int f26809R = 4;

    /* renamed from: S */
    public static final byte f26810S = -4;

    /* renamed from: T */
    public static final byte f26811T = 32;

    /* renamed from: U */
    public static final byte f26812U = 33;

    /* renamed from: V */
    public static final byte f26813V = 36;

    /* renamed from: W */
    public static final byte f26814W = 37;

    /* renamed from: X */
    public static final byte f26815X = 38;

    /* renamed from: Y */
    public static final byte f26816Y = 39;

    /* renamed from: Z */
    public static final byte f26817Z = 41;

    /* renamed from: a0 */
    public static final byte f26818a0 = 42;

    /* renamed from: b0 */
    public static final byte f26819b0 = 43;

    /* renamed from: c0 */
    public static final byte f26820c0 = 44;

    /* renamed from: d0 */
    public static final byte f26821d0 = 45;

    /* renamed from: e0 */
    public static final byte f26822e0 = 46;

    /* renamed from: f0 */
    public static final byte f26823f0 = 47;

    /* renamed from: j */
    public final int f26830j;

    /* renamed from: k */
    public final int f26831k;

    /* renamed from: l */
    public final int f26832l;

    /* renamed from: m */
    public final long f26833m;

    /* renamed from: p */
    @Nullable
    public List<Cue> f26836p;

    /* renamed from: q */
    @Nullable
    public List<Cue> f26837q;

    /* renamed from: r */
    public int f26838r;

    /* renamed from: s */
    public int f26839s;

    /* renamed from: t */
    public boolean f26840t;

    /* renamed from: u */
    public boolean f26841u;

    /* renamed from: v */
    public byte f26842v;

    /* renamed from: w */
    public byte f26843w;

    /* renamed from: y */
    public boolean f26845y;

    /* renamed from: z */
    public long f26846z;

    /* renamed from: M */
    public static final int[] f26804M = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: N */
    public static final int[] f26805N = {0, 4, 8, 12, 16, 20, 24, 28};

    /* renamed from: O */
    public static final int[] f26806O = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};

    /* renamed from: g0 */
    public static final int[] f26824g0 = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, DataBinderMapperImpl.f53073M3, 209, 241, 9632};

    /* renamed from: h0 */
    public static final int[] f26825h0 = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};

    /* renamed from: i0 */
    public static final int[] f26826i0 = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187};

    /* renamed from: j0 */
    public static final int[] f26827j0 = {195, 227, 205, 204, 236, 210, DataBinderMapperImpl.f53038H3, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};

    /* renamed from: k0 */
    public static final boolean[] f26828k0 = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: i */
    public final ParsableByteArray f26829i = new ParsableByteArray();

    /* renamed from: n */
    public final ArrayList<C4940a> f26834n = new ArrayList<>();

    /* renamed from: o */
    public C4940a f26835o = new C4940a(0, 4);

    /* renamed from: x */
    public int f26844x = 0;

    /* renamed from: com.google.android.exoplayer2.text.cea.Cea608Decoder$a */
    /* loaded from: classes5.dex */
    public static final class C4940a {

        /* renamed from: i */
        public static final int f26847i = 32;

        /* renamed from: j */
        public static final int f26848j = 15;

        /* renamed from: a */
        public final List<a> f26849a = new ArrayList();

        /* renamed from: b */
        public final List<SpannableString> f26850b = new ArrayList();

        /* renamed from: c */
        public final StringBuilder f26851c = new StringBuilder();

        /* renamed from: d */
        public int f26852d;

        /* renamed from: e */
        public int f26853e;

        /* renamed from: f */
        public int f26854f;

        /* renamed from: g */
        public int f26855g;

        /* renamed from: h */
        public int f26856h;

        /* renamed from: com.google.android.exoplayer2.text.cea.Cea608Decoder$a$a */
        /* loaded from: classes5.dex */
        public static class a {

            /* renamed from: a */
            public final int f26857a;

            /* renamed from: b */
            public final boolean f26858b;

            /* renamed from: c */
            public int f26859c;

            public a(int i, boolean z, int i2) {
                this.f26857a = i;
                this.f26858b = z;
                this.f26859c = i2;
            }
        }

        public C4940a(int i, int i2) {
            m20597j(i);
            this.f26856h = i2;
        }

        /* renamed from: n */
        public static void m20589n(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
            if (i3 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
        }

        /* renamed from: o */
        public static void m20590o(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
        }

        /* renamed from: q */
        public static void m20591q(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }

        /* renamed from: e */
        public void m20592e(char c) {
            if (this.f26851c.length() < 32) {
                this.f26851c.append(c);
            }
        }

        /* renamed from: f */
        public void m20593f() {
            int length = this.f26851c.length();
            if (length > 0) {
                this.f26851c.delete(length - 1, length);
                for (int size = this.f26849a.size() - 1; size >= 0; size--) {
                    a aVar = this.f26849a.get(size);
                    int i = aVar.f26859c;
                    if (i != length) {
                        return;
                    }
                    aVar.f26859c = i - 1;
                }
            }
        }

        @Nullable
        /* renamed from: g */
        public Cue m20594g(int i) {
            float f;
            int i2 = this.f26853e + this.f26854f;
            int i3 = 32 - i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.f26850b.size(); i4++) {
                spannableStringBuilder.append(Util.truncateAscii(this.f26850b.get(i4), i3));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(Util.truncateAscii(m20595h(), i3));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i3 - spannableStringBuilder.length();
            int i5 = i2 - length;
            if (i == Integer.MIN_VALUE) {
                i = (this.f26855g != 2 || (Math.abs(i5) >= 3 && length >= 0)) ? (this.f26855g != 2 || i5 <= 0) ? 0 : 2 : 1;
            }
            if (i != 1) {
                if (i == 2) {
                    i2 = 32 - length;
                }
                f = ((i2 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f = 0.5f;
            }
            int i6 = this.f26852d;
            if (i6 > 7) {
                i6 = (i6 - 15) - 2;
            } else if (this.f26855g == 1) {
                i6 -= this.f26856h - 1;
            }
            return new Cue.Builder().setText(spannableStringBuilder).setTextAlignment(Layout.Alignment.ALIGN_NORMAL).setLine(i6, 1).setPosition(f).setPositionAnchor(i).build();
        }

        /* renamed from: h */
        public final SpannableString m20595h() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f26851c);
            int length = spannableStringBuilder.length();
            int i = -1;
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            int i6 = 0;
            boolean z = false;
            while (i5 < this.f26849a.size()) {
                a aVar = this.f26849a.get(i5);
                boolean z2 = aVar.f26858b;
                int i7 = aVar.f26857a;
                if (i7 != 8) {
                    boolean z3 = i7 == 7;
                    if (i7 != 7) {
                        i4 = Cea608Decoder.f26806O[i7];
                    }
                    z = z3;
                }
                int i8 = aVar.f26859c;
                i5++;
                if (i8 != (i5 < this.f26849a.size() ? this.f26849a.get(i5).f26859c : length)) {
                    if (i != -1 && !z2) {
                        m20591q(spannableStringBuilder, i, i8);
                        i = -1;
                    } else if (i == -1 && z2) {
                        i = i8;
                    }
                    if (i2 != -1 && !z) {
                        m20590o(spannableStringBuilder, i2, i8);
                        i2 = -1;
                    } else if (i2 == -1 && z) {
                        i2 = i8;
                    }
                    if (i4 != i3) {
                        m20589n(spannableStringBuilder, i6, i8, i3);
                        i3 = i4;
                        i6 = i8;
                    }
                }
            }
            if (i != -1 && i != length) {
                m20591q(spannableStringBuilder, i, length);
            }
            if (i2 != -1 && i2 != length) {
                m20590o(spannableStringBuilder, i2, length);
            }
            if (i6 != length) {
                m20589n(spannableStringBuilder, i6, length, i3);
            }
            return new SpannableString(spannableStringBuilder);
        }

        /* renamed from: i */
        public boolean m20596i() {
            return this.f26849a.isEmpty() && this.f26850b.isEmpty() && this.f26851c.length() == 0;
        }

        /* renamed from: j */
        public void m20597j(int i) {
            this.f26855g = i;
            this.f26849a.clear();
            this.f26850b.clear();
            this.f26851c.setLength(0);
            this.f26852d = 15;
            this.f26853e = 0;
            this.f26854f = 0;
        }

        /* renamed from: k */
        public void m20598k() {
            this.f26850b.add(m20595h());
            this.f26851c.setLength(0);
            this.f26849a.clear();
            int min = Math.min(this.f26856h, this.f26852d);
            while (this.f26850b.size() >= min) {
                this.f26850b.remove(0);
            }
        }

        /* renamed from: l */
        public void m20599l(int i) {
            this.f26855g = i;
        }

        /* renamed from: m */
        public void m20600m(int i) {
            this.f26856h = i;
        }

        /* renamed from: p */
        public void m20601p(int i, boolean z) {
            this.f26849a.add(new a(i, z, this.f26851c.length()));
        }
    }

    public Cea608Decoder(String str, int i, long j) {
        this.f26833m = j > 0 ? j * 1000 : -9223372036854775807L;
        this.f26830j = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i == 1) {
            this.f26832l = 0;
            this.f26831k = 0;
        } else if (i == 2) {
            this.f26832l = 1;
            this.f26831k = 0;
        } else if (i == 3) {
            this.f26832l = 0;
            this.f26831k = 1;
        } else if (i != 4) {
            Log.m21493w(f26792A, "Invalid channel. Defaulting to CC1.");
            this.f26832l = 0;
            this.f26831k = 0;
        } else {
            this.f26832l = 1;
            this.f26831k = 1;
        }
        m20584z(0);
        m20583y();
        this.f26845y = true;
        this.f26846z = C4649C.TIME_UNSET;
    }

    /* renamed from: c */
    public static char m20558c(byte b) {
        return (char) f26824g0[(b & Byte.MAX_VALUE) - 32];
    }

    /* renamed from: d */
    public static int m20559d(byte b) {
        return (b >> 3) & 1;
    }

    /* renamed from: f */
    public static char m20560f(byte b) {
        return (char) f26826i0[b & 31];
    }

    /* renamed from: g */
    public static char m20561g(byte b) {
        return (char) f26827j0[b & 31];
    }

    /* renamed from: h */
    public static char m20562h(byte b, byte b2) {
        return (b & 1) == 0 ? m20560f(b2) : m20561g(b2);
    }

    /* renamed from: i */
    public static char m20563i(byte b) {
        return (char) f26825h0[b & 15];
    }

    /* renamed from: m */
    public static boolean m20564m(byte b) {
        return (b & 224) == 0;
    }

    /* renamed from: n */
    public static boolean m20565n(byte b, byte b2) {
        return (b & 246) == 18 && (b2 & 224) == 32;
    }

    /* renamed from: o */
    public static boolean m20566o(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & JSONB.Constants.BC_INT32_NUM_MIN) == 32;
    }

    /* renamed from: p */
    public static boolean m20567p(byte b, byte b2) {
        return (b & 246) == 20 && (b2 & JSONB.Constants.BC_INT32_NUM_MIN) == 32;
    }

    /* renamed from: q */
    public static boolean m20568q(byte b, byte b2) {
        return (b & JSONB.Constants.BC_INT32_NUM_MIN) == 16 && (b2 & 192) == 64;
    }

    /* renamed from: r */
    public static boolean m20569r(byte b) {
        return (b & JSONB.Constants.BC_INT32_NUM_MIN) == 16;
    }

    /* renamed from: t */
    public static boolean m20570t(byte b) {
        return (b & 247) == 20;
    }

    /* renamed from: u */
    public static boolean m20571u(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & JSONB.Constants.BC_INT32_NUM_MIN) == 48;
    }

    /* renamed from: v */
    public static boolean m20572v(byte b, byte b2) {
        return (b & 247) == 23 && b2 >= 33 && b2 <= 35;
    }

    /* renamed from: w */
    public static boolean m20573w(byte b) {
        return 1 <= b && b <= 15;
    }

    /* renamed from: A */
    public final void m20574A(int i) {
        this.f26839s = i;
        this.f26835o.m20600m(i);
    }

    /* renamed from: B */
    public final boolean m20575B() {
        return (this.f26833m == C4649C.TIME_UNSET || this.f26846z == C4649C.TIME_UNSET || getPositionUs() - this.f26846z < this.f26833m) ? false : true;
    }

    /* renamed from: C */
    public final boolean m20576C(byte b) {
        if (m20564m(b)) {
            this.f26844x = m20559d(b);
        }
        return this.f26844x == this.f26832l;
    }

    @Override // com.sunia.HTREnginev2.vod
    public Subtitle createSubtitle() {
        List<Cue> list = this.f26836p;
        this.f26837q = list;
        return new wod((List) Assertions.checkNotNull(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0017 A[SYNTHETIC] */
    @Override // com.sunia.HTREnginev2.vod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void decode(com.google.android.exoplayer2.text.SubtitleInputBuffer r10) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.cea.Cea608Decoder.decode(com.google.android.exoplayer2.text.SubtitleInputBuffer):void");
    }

    @Override // com.sunia.HTREnginev2.vod, com.google.android.exoplayer2.decoder.Decoder
    @Nullable
    public /* bridge */ /* synthetic */ SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    /* renamed from: e */
    public final List<Cue> m20577e() {
        int size = this.f26834n.size();
        ArrayList arrayList = new ArrayList(size);
        int i = 2;
        for (int i2 = 0; i2 < size; i2++) {
            Cue m20594g = this.f26834n.get(i2).m20594g(Integer.MIN_VALUE);
            arrayList.add(m20594g);
            if (m20594g != null) {
                i = Math.min(i, m20594g.positionAnchor);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            Cue cue = (Cue) arrayList.get(i3);
            if (cue != null) {
                if (cue.positionAnchor != i) {
                    cue = (Cue) Assertions.checkNotNull(this.f26834n.get(i3).m20594g(i));
                }
                arrayList2.add(cue);
            }
        }
        return arrayList2;
    }

    @Override // com.sunia.HTREnginev2.vod, com.google.android.exoplayer2.decoder.Decoder
    public void flush() {
        super.flush();
        this.f26836p = null;
        this.f26837q = null;
        m20584z(0);
        m20574A(4);
        m20583y();
        this.f26840t = false;
        this.f26841u = false;
        this.f26842v = (byte) 0;
        this.f26843w = (byte) 0;
        this.f26844x = 0;
        this.f26845y = true;
        this.f26846z = C4649C.TIME_UNSET;
    }

    @Override // com.sunia.HTREnginev2.vod, com.google.android.exoplayer2.decoder.Decoder
    public String getName() {
        return f26792A;
    }

    @Override // com.sunia.HTREnginev2.vod
    public boolean isNewSubtitleDataAvailable() {
        return this.f26836p != this.f26837q;
    }

    /* renamed from: j */
    public final void m20578j(byte b) {
        this.f26835o.m20592e(' ');
        this.f26835o.m20601p((b >> 1) & 7, (b & 1) == 1);
    }

    /* renamed from: k */
    public final void m20579k(byte b) {
        if (b == 32) {
            m20584z(2);
            return;
        }
        if (b == 41) {
            m20584z(3);
            return;
        }
        switch (b) {
            case 37:
                m20584z(1);
                m20574A(2);
                return;
            case 38:
                m20584z(1);
                m20574A(3);
                return;
            case 39:
                m20584z(1);
                m20574A(4);
                return;
            default:
                int i = this.f26838r;
                if (i == 0) {
                    return;
                }
                if (b == 33) {
                    this.f26835o.m20593f();
                    return;
                }
                switch (b) {
                    case 44:
                        this.f26836p = Collections.emptyList();
                        int i2 = this.f26838r;
                        if (i2 == 1 || i2 == 3) {
                            m20583y();
                            return;
                        }
                        return;
                    case 45:
                        if (i != 1 || this.f26835o.m20596i()) {
                            return;
                        }
                        this.f26835o.m20598k();
                        return;
                    case 46:
                        m20583y();
                        return;
                    case 47:
                        this.f26836p = m20577e();
                        m20583y();
                        return;
                    default:
                        return;
                }
        }
    }

    /* renamed from: l */
    public final void m20580l(byte b, byte b2) {
        int i = f26804M[b & 7];
        if ((b2 & 32) != 0) {
            i++;
        }
        if (i != this.f26835o.f26852d) {
            if (this.f26838r != 1 && !this.f26835o.m20596i()) {
                C4940a c4940a = new C4940a(this.f26838r, this.f26839s);
                this.f26835o = c4940a;
                this.f26834n.add(c4940a);
            }
            this.f26835o.f26852d = i;
        }
        boolean z = (b2 & 16) == 16;
        boolean z2 = (b2 & 1) == 1;
        int i2 = (b2 >> 1) & 7;
        this.f26835o.m20601p(z ? 8 : i2, z2);
        if (z) {
            this.f26835o.f26853e = f26805N[i2];
        }
    }

    @Override // com.sunia.HTREnginev2.vod
    public /* bridge */ /* synthetic */ void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        super.queueInputBuffer(subtitleInputBuffer);
    }

    @Override // com.sunia.HTREnginev2.vod, com.google.android.exoplayer2.decoder.Decoder
    public void release() {
    }

    /* renamed from: s */
    public final boolean m20581s(boolean z, byte b, byte b2) {
        if (!z || !m20569r(b)) {
            this.f26841u = false;
        } else {
            if (this.f26841u && this.f26842v == b && this.f26843w == b2) {
                this.f26841u = false;
                return true;
            }
            this.f26841u = true;
            this.f26842v = b;
            this.f26843w = b2;
        }
        return false;
    }

    @Override // com.sunia.HTREnginev2.vod, com.google.android.exoplayer2.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j) {
        super.setPositionUs(j);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0018. Please report as an issue. */
    /* renamed from: x */
    public final void m20582x(byte b, byte b2) {
        if (m20573w(b)) {
            this.f26845y = false;
            return;
        }
        if (m20570t(b)) {
            if (b2 != 32 && b2 != 47) {
                switch (b2) {
                    default:
                        switch (b2) {
                            case 41:
                                break;
                            case 42:
                            case 43:
                                this.f26845y = false;
                                return;
                            default:
                                return;
                        }
                    case 37:
                    case 38:
                    case 39:
                        this.f26845y = true;
                }
            }
            this.f26845y = true;
        }
    }

    /* renamed from: y */
    public final void m20583y() {
        this.f26835o.m20597j(this.f26838r);
        this.f26834n.clear();
        this.f26834n.add(this.f26835o);
    }

    /* renamed from: z */
    public final void m20584z(int i) {
        int i2 = this.f26838r;
        if (i2 == i) {
            return;
        }
        this.f26838r = i;
        if (i == 3) {
            for (int i3 = 0; i3 < this.f26834n.size(); i3++) {
                this.f26834n.get(i3).m20599l(i);
            }
            return;
        }
        m20583y();
        if (i2 == 3 || i == 1 || i == 0) {
            this.f26836p = Collections.emptyList();
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sunia.HTREnginev2.vod, com.google.android.exoplayer2.decoder.Decoder
    @Nullable
    public SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        SubtitleOutputBuffer availableOutputBuffer;
        SubtitleOutputBuffer dequeueOutputBuffer = super.dequeueOutputBuffer();
        if (dequeueOutputBuffer != null) {
            return dequeueOutputBuffer;
        }
        if (!m20575B() || (availableOutputBuffer = getAvailableOutputBuffer()) == null) {
            return null;
        }
        this.f26836p = Collections.emptyList();
        this.f26846z = C4649C.TIME_UNSET;
        availableOutputBuffer.setContent(getPositionUs(), createSubtitle(), Long.MAX_VALUE);
        return availableOutputBuffer;
    }
}
