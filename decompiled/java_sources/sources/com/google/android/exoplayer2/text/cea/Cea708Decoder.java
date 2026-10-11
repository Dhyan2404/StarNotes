package com.google.android.exoplayer2.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.SubtitleInputBuffer;
import com.google.android.exoplayer2.text.SubtitleOutputBuffer;
import com.google.android.exoplayer2.text.cea.Cea708Decoder;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.sunia.HTREnginev2.vod;
import com.sunia.HTREnginev2.wod;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.text.Typography;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class Cea708Decoder extends vod {

    /* renamed from: A */
    public static final int f26860A = 159;

    /* renamed from: A0 */
    public static final int f26861A0 = 49;

    /* renamed from: B */
    public static final int f26862B = 255;

    /* renamed from: B0 */
    public static final int f26863B0 = 50;

    /* renamed from: C */
    public static final int f26864C = 31;

    /* renamed from: C0 */
    public static final int f26865C0 = 51;

    /* renamed from: D */
    public static final int f26866D = 127;

    /* renamed from: D0 */
    public static final int f26867D0 = 52;

    /* renamed from: E */
    public static final int f26868E = 159;

    /* renamed from: E0 */
    public static final int f26869E0 = 53;

    /* renamed from: F */
    public static final int f26870F = 255;

    /* renamed from: F0 */
    public static final int f26871F0 = 57;

    /* renamed from: G */
    public static final int f26872G = 0;

    /* renamed from: G0 */
    public static final int f26873G0 = 58;

    /* renamed from: H */
    public static final int f26874H = 3;

    /* renamed from: H0 */
    public static final int f26875H0 = 60;

    /* renamed from: I */
    public static final int f26876I = 8;

    /* renamed from: I0 */
    public static final int f26877I0 = 61;

    /* renamed from: J */
    public static final int f26878J = 12;

    /* renamed from: J0 */
    public static final int f26879J0 = 63;

    /* renamed from: K */
    public static final int f26880K = 13;

    /* renamed from: K0 */
    public static final int f26881K0 = 118;

    /* renamed from: L */
    public static final int f26882L = 14;

    /* renamed from: L0 */
    public static final int f26883L0 = 119;

    /* renamed from: M */
    public static final int f26884M = 16;

    /* renamed from: M0 */
    public static final int f26885M0 = 120;

    /* renamed from: N */
    public static final int f26886N = 17;

    /* renamed from: N0 */
    public static final int f26887N0 = 121;

    /* renamed from: O */
    public static final int f26888O = 23;

    /* renamed from: O0 */
    public static final int f26889O0 = 122;

    /* renamed from: P */
    public static final int f26890P = 24;

    /* renamed from: P0 */
    public static final int f26891P0 = 123;

    /* renamed from: Q */
    public static final int f26892Q = 31;

    /* renamed from: Q0 */
    public static final int f26893Q0 = 124;

    /* renamed from: R */
    public static final int f26894R = 128;

    /* renamed from: R0 */
    public static final int f26895R0 = 125;

    /* renamed from: S */
    public static final int f26896S = 129;

    /* renamed from: S0 */
    public static final int f26897S0 = 126;

    /* renamed from: T */
    public static final int f26898T = 130;

    /* renamed from: T0 */
    public static final int f26899T0 = 127;

    /* renamed from: U */
    public static final int f26900U = 131;

    /* renamed from: V */
    public static final int f26901V = 132;

    /* renamed from: W */
    public static final int f26902W = 133;

    /* renamed from: X */
    public static final int f26903X = 134;

    /* renamed from: Y */
    public static final int f26904Y = 135;

    /* renamed from: Z */
    public static final int f26905Z = 136;

    /* renamed from: a0 */
    public static final int f26906a0 = 137;

    /* renamed from: b0 */
    public static final int f26907b0 = 138;

    /* renamed from: c0 */
    public static final int f26908c0 = 139;

    /* renamed from: d0 */
    public static final int f26909d0 = 140;

    /* renamed from: e0 */
    public static final int f26910e0 = 141;

    /* renamed from: f0 */
    public static final int f26911f0 = 142;

    /* renamed from: g0 */
    public static final int f26912g0 = 143;

    /* renamed from: h0 */
    public static final int f26913h0 = 144;

    /* renamed from: i0 */
    public static final int f26914i0 = 145;

    /* renamed from: j0 */
    public static final int f26915j0 = 146;

    /* renamed from: k0 */
    public static final int f26916k0 = 151;

    /* renamed from: l0 */
    public static final int f26917l0 = 152;

    /* renamed from: m0 */
    public static final int f26918m0 = 153;

    /* renamed from: n0 */
    public static final int f26919n0 = 154;

    /* renamed from: o0 */
    public static final int f26920o0 = 155;

    /* renamed from: p0 */
    public static final int f26921p0 = 156;

    /* renamed from: q0 */
    public static final int f26922q0 = 157;

    /* renamed from: r0 */
    public static final int f26923r0 = 158;

    /* renamed from: s0 */
    public static final int f26924s0 = 159;

    /* renamed from: t */
    public static final String f26925t = "Cea708Decoder";

    /* renamed from: t0 */
    public static final int f26926t0 = 127;

    /* renamed from: u */
    public static final int f26927u = 8;

    /* renamed from: u0 */
    public static final int f26928u0 = 32;

    /* renamed from: v */
    public static final int f26929v = 2;

    /* renamed from: v0 */
    public static final int f26930v0 = 33;

    /* renamed from: w */
    public static final int f26931w = 3;

    /* renamed from: w0 */
    public static final int f26932w0 = 37;

    /* renamed from: x */
    public static final int f26933x = 4;

    /* renamed from: x0 */
    public static final int f26934x0 = 42;

    /* renamed from: y */
    public static final int f26935y = 31;

    /* renamed from: y0 */
    public static final int f26936y0 = 44;

    /* renamed from: z */
    public static final int f26937z = 127;

    /* renamed from: z0 */
    public static final int f26938z0 = 48;

    /* renamed from: i */
    public final ParsableByteArray f26939i = new ParsableByteArray();

    /* renamed from: j */
    public final ParsableBitArray f26940j = new ParsableBitArray();

    /* renamed from: k */
    public int f26941k = -1;

    /* renamed from: l */
    public final boolean f26942l;

    /* renamed from: m */
    public final int f26943m;

    /* renamed from: n */
    public final C4942b[] f26944n;

    /* renamed from: o */
    public C4942b f26945o;

    /* renamed from: p */
    @Nullable
    public List<Cue> f26946p;

    /* renamed from: q */
    @Nullable
    public List<Cue> f26947q;

    /* renamed from: r */
    @Nullable
    public C4943c f26948r;

    /* renamed from: s */
    public int f26949s;

    /* renamed from: com.google.android.exoplayer2.text.cea.Cea708Decoder$a */
    /* loaded from: classes5.dex */
    public static final class C4941a {

        /* renamed from: c */
        public static final Comparator<C4941a> f26950c = new Comparator() { // from class: com.sunia.HTREnginev2.tod
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m20621c;
                m20621c = Cea708Decoder.C4941a.m20621c((Cea708Decoder.C4941a) obj, (Cea708Decoder.C4941a) obj2);
                return m20621c;
            }
        };

        /* renamed from: a */
        public final Cue f26951a;

        /* renamed from: b */
        public final int f26952b;

        public C4941a(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
            Cue.Builder size = new Cue.Builder().setText(charSequence).setTextAlignment(alignment).setLine(f, i).setLineAnchor(i2).setPosition(f2).setPositionAnchor(i3).setSize(f3);
            if (z) {
                size.setWindowColor(i4);
            }
            this.f26951a = size.build();
            this.f26952b = i5;
        }

        /* renamed from: c */
        public static /* synthetic */ int m20621c(C4941a c4941a, C4941a c4941a2) {
            return Integer.compare(c4941a2.f26952b, c4941a.f26952b);
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.cea.Cea708Decoder$b */
    /* loaded from: classes5.dex */
    public static final class C4942b {

        /* renamed from: A */
        public static final int f26953A = 15;

        /* renamed from: B */
        public static final int f26954B = 0;

        /* renamed from: C */
        public static final int f26955C = 1;

        /* renamed from: D */
        public static final int f26956D = 2;

        /* renamed from: E */
        public static final int f26957E = 3;

        /* renamed from: F */
        public static final int f26958F = 0;

        /* renamed from: G */
        public static final int f26959G = 1;

        /* renamed from: H */
        public static final int f26960H = 2;

        /* renamed from: I */
        public static final int f26961I = 3;

        /* renamed from: J */
        public static final int f26962J = 0;

        /* renamed from: K */
        public static final int f26963K = 3;

        /* renamed from: L */
        public static final int f26964L = m20623h(2, 2, 2, 0);

        /* renamed from: M */
        public static final int f26965M;

        /* renamed from: N */
        public static final int f26966N;

        /* renamed from: O */
        public static final int f26967O = 1;

        /* renamed from: P */
        public static final int f26968P = 0;

        /* renamed from: Q */
        public static final int f26969Q = 1;

        /* renamed from: R */
        public static final int f26970R = 2;

        /* renamed from: S */
        public static final int f26971S = 3;

        /* renamed from: T */
        public static final int f26972T = 4;

        /* renamed from: U */
        public static final int f26973U = 1;

        /* renamed from: V */
        public static final int[] f26974V;

        /* renamed from: W */
        public static final int[] f26975W;

        /* renamed from: X */
        public static final int[] f26976X;

        /* renamed from: Y */
        public static final boolean[] f26977Y;

        /* renamed from: Z */
        public static final int[] f26978Z;

        /* renamed from: a0 */
        public static final int[] f26979a0;

        /* renamed from: b0 */
        public static final int[] f26980b0;

        /* renamed from: c0 */
        public static final int[] f26981c0;

        /* renamed from: w */
        public static final int f26982w = 99;

        /* renamed from: x */
        public static final int f26983x = 74;

        /* renamed from: y */
        public static final int f26984y = 209;

        /* renamed from: z */
        public static final int f26985z = 4;

        /* renamed from: a */
        public final List<SpannableString> f26986a = new ArrayList();

        /* renamed from: b */
        public final SpannableStringBuilder f26987b = new SpannableStringBuilder();

        /* renamed from: c */
        public boolean f26988c;

        /* renamed from: d */
        public boolean f26989d;

        /* renamed from: e */
        public int f26990e;

        /* renamed from: f */
        public boolean f26991f;

        /* renamed from: g */
        public int f26992g;

        /* renamed from: h */
        public int f26993h;

        /* renamed from: i */
        public int f26994i;

        /* renamed from: j */
        public int f26995j;

        /* renamed from: k */
        public boolean f26996k;

        /* renamed from: l */
        public int f26997l;

        /* renamed from: m */
        public int f26998m;

        /* renamed from: n */
        public int f26999n;

        /* renamed from: o */
        public int f27000o;

        /* renamed from: p */
        public int f27001p;

        /* renamed from: q */
        public int f27002q;

        /* renamed from: r */
        public int f27003r;

        /* renamed from: s */
        public int f27004s;

        /* renamed from: t */
        public int f27005t;

        /* renamed from: u */
        public int f27006u;

        /* renamed from: v */
        public int f27007v;

        static {
            int m20623h = m20623h(0, 0, 0, 0);
            f26965M = m20623h;
            int m20623h2 = m20623h(0, 0, 0, 3);
            f26966N = m20623h2;
            f26974V = new int[]{0, 0, 0, 0, 0, 2, 0};
            f26975W = new int[]{0, 0, 0, 0, 0, 0, 2};
            f26976X = new int[]{3, 3, 3, 3, 3, 3, 1};
            f26977Y = new boolean[]{false, false, false, true, true, true, false};
            f26978Z = new int[]{m20623h, m20623h2, m20623h, m20623h, m20623h2, m20623h, m20623h};
            f26979a0 = new int[]{0, 1, 2, 3, 4, 3, 4};
            f26980b0 = new int[]{0, 0, 0, 0, 0, 3, 3};
            f26981c0 = new int[]{m20623h, m20623h, m20623h, m20623h, m20623h, m20623h2, m20623h2};
        }

        public C4942b() {
            m20633l();
        }

        /* renamed from: g */
        public static int m20622g(int i, int i2, int i3) {
            return m20623h(i, i2, i3, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0029  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0026  */
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m20623h(int r4, int r5, int r6, int r7) {
            /*
                r0 = 0
                r1 = 4
                com.google.android.exoplayer2.util.Assertions.checkIndex(r4, r0, r1)
                com.google.android.exoplayer2.util.Assertions.checkIndex(r5, r0, r1)
                com.google.android.exoplayer2.util.Assertions.checkIndex(r6, r0, r1)
                com.google.android.exoplayer2.util.Assertions.checkIndex(r7, r0, r1)
                r1 = 1
                r2 = 255(0xff, float:3.57E-43)
                if (r7 == 0) goto L21
                if (r7 == r1) goto L21
                r3 = 2
                if (r7 == r3) goto L1e
                r3 = 3
                if (r7 == r3) goto L1c
                goto L21
            L1c:
                r7 = r0
                goto L22
            L1e:
                r7 = 127(0x7f, float:1.78E-43)
                goto L22
            L21:
                r7 = r2
            L22:
                if (r4 <= r1) goto L26
                r4 = r2
                goto L27
            L26:
                r4 = r0
            L27:
                if (r5 <= r1) goto L2b
                r5 = r2
                goto L2c
            L2b:
                r5 = r0
            L2c:
                if (r6 <= r1) goto L2f
                r0 = r2
            L2f:
                int r4 = android.graphics.Color.argb(r7, r4, r5, r0)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.cea.Cea708Decoder.C4942b.m20623h(int, int, int, int):int");
        }

        /* renamed from: a */
        public void m20624a(char c) {
            if (c != '\n') {
                this.f26987b.append(c);
                return;
            }
            this.f26986a.add(m20627d());
            this.f26987b.clear();
            if (this.f27001p != -1) {
                this.f27001p = 0;
            }
            if (this.f27002q != -1) {
                this.f27002q = 0;
            }
            if (this.f27003r != -1) {
                this.f27003r = 0;
            }
            if (this.f27005t != -1) {
                this.f27005t = 0;
            }
            while (true) {
                if ((!this.f26996k || this.f26986a.size() < this.f26995j) && this.f26986a.size() < 15) {
                    return;
                } else {
                    this.f26986a.remove(0);
                }
            }
        }

        /* renamed from: b */
        public void m20625b() {
            int length = this.f26987b.length();
            if (length > 0) {
                this.f26987b.delete(length - 1, length);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00aa  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0071  */
        @androidx.annotation.Nullable
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.android.exoplayer2.text.cea.Cea708Decoder.C4941a m20626c() {
            /*
                Method dump skipped, instructions count: 195
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.cea.Cea708Decoder.C4942b.m20626c():com.google.android.exoplayer2.text.cea.Cea708Decoder$a");
        }

        /* renamed from: d */
        public SpannableString m20627d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f26987b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f27001p != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f27001p, length, 33);
                }
                if (this.f27002q != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f27002q, length, 33);
                }
                if (this.f27003r != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f27004s), this.f27003r, length, 33);
                }
                if (this.f27005t != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f27006u), this.f27005t, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        /* renamed from: e */
        public void m20628e() {
            this.f26986a.clear();
            this.f26987b.clear();
            this.f27001p = -1;
            this.f27002q = -1;
            this.f27003r = -1;
            this.f27005t = -1;
            this.f27007v = 0;
        }

        /* renamed from: f */
        public void m20629f(boolean z, boolean z2, boolean z3, int i, boolean z4, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.f26988c = true;
            this.f26989d = z;
            this.f26996k = z2;
            this.f26990e = i;
            this.f26991f = z4;
            this.f26992g = i2;
            this.f26993h = i3;
            this.f26994i = i6;
            int i9 = i4 + 1;
            if (this.f26995j != i9) {
                this.f26995j = i9;
                while (true) {
                    if ((!z2 || this.f26986a.size() < this.f26995j) && this.f26986a.size() < 15) {
                        break;
                    } else {
                        this.f26986a.remove(0);
                    }
                }
            }
            if (i7 != 0 && this.f26998m != i7) {
                this.f26998m = i7;
                int i10 = i7 - 1;
                m20638q(f26978Z[i10], f26966N, f26977Y[i10], 0, f26975W[i10], f26976X[i10], f26974V[i10]);
            }
            if (i8 == 0 || this.f26999n == i8) {
                return;
            }
            this.f26999n = i8;
            int i11 = i8 - 1;
            m20634m(0, 1, 1, false, false, f26980b0[i11], f26979a0[i11]);
            m20635n(f26964L, f26981c0[i11], f26965M);
        }

        /* renamed from: i */
        public boolean m20630i() {
            return this.f26988c;
        }

        /* renamed from: j */
        public boolean m20631j() {
            return !m20630i() || (this.f26986a.isEmpty() && this.f26987b.length() == 0);
        }

        /* renamed from: k */
        public boolean m20632k() {
            return this.f26989d;
        }

        /* renamed from: l */
        public void m20633l() {
            m20628e();
            this.f26988c = false;
            this.f26989d = false;
            this.f26990e = 4;
            this.f26991f = false;
            this.f26992g = 0;
            this.f26993h = 0;
            this.f26994i = 0;
            this.f26995j = 15;
            this.f26996k = true;
            this.f26997l = 0;
            this.f26998m = 0;
            this.f26999n = 0;
            int i = f26965M;
            this.f27000o = i;
            this.f27004s = f26964L;
            this.f27006u = i;
        }

        /* renamed from: m */
        public void m20634m(int i, int i2, int i3, boolean z, boolean z2, int i4, int i5) {
            if (this.f27001p != -1) {
                if (!z) {
                    this.f26987b.setSpan(new StyleSpan(2), this.f27001p, this.f26987b.length(), 33);
                    this.f27001p = -1;
                }
            } else if (z) {
                this.f27001p = this.f26987b.length();
            }
            if (this.f27002q == -1) {
                if (z2) {
                    this.f27002q = this.f26987b.length();
                }
            } else {
                if (z2) {
                    return;
                }
                this.f26987b.setSpan(new UnderlineSpan(), this.f27002q, this.f26987b.length(), 33);
                this.f27002q = -1;
            }
        }

        /* renamed from: n */
        public void m20635n(int i, int i2, int i3) {
            if (this.f27003r != -1 && this.f27004s != i) {
                this.f26987b.setSpan(new ForegroundColorSpan(this.f27004s), this.f27003r, this.f26987b.length(), 33);
            }
            if (i != f26964L) {
                this.f27003r = this.f26987b.length();
                this.f27004s = i;
            }
            if (this.f27005t != -1 && this.f27006u != i2) {
                this.f26987b.setSpan(new BackgroundColorSpan(this.f27006u), this.f27005t, this.f26987b.length(), 33);
            }
            if (i2 != f26965M) {
                this.f27005t = this.f26987b.length();
                this.f27006u = i2;
            }
        }

        /* renamed from: o */
        public void m20636o(int i, int i2) {
            if (this.f27007v != i) {
                m20624a('\n');
            }
            this.f27007v = i;
        }

        /* renamed from: p */
        public void m20637p(boolean z) {
            this.f26989d = z;
        }

        /* renamed from: q */
        public void m20638q(int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
            this.f27000o = i;
            this.f26997l = i6;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.cea.Cea708Decoder$c */
    /* loaded from: classes5.dex */
    public static final class C4943c {

        /* renamed from: a */
        public final int f27008a;

        /* renamed from: b */
        public final int f27009b;

        /* renamed from: c */
        public final byte[] f27010c;

        /* renamed from: d */
        public int f27011d = 0;

        public C4943c(int i, int i2) {
            this.f27008a = i;
            this.f27009b = i2;
            this.f27010c = new byte[(i2 * 2) - 1];
        }
    }

    public Cea708Decoder(int i, @Nullable List<byte[]> list) {
        this.f26943m = i == -1 ? 1 : i;
        this.f26942l = list != null && CodecSpecificDataUtil.parseCea708InitializationData(list);
        this.f26944n = new C4942b[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.f26944n[i2] = new C4942b();
        }
        this.f26945o = this.f26944n[0];
    }

    /* renamed from: b */
    public final void m20602b() {
        if (this.f26948r == null) {
            return;
        }
        m20617q();
        this.f26948r = null;
    }

    /* renamed from: c */
    public final List<Cue> m20603c() {
        C4941a m20626c;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.f26944n[i].m20631j() && this.f26944n[i].m20632k() && (m20626c = this.f26944n[i].m20626c()) != null) {
                arrayList.add(m20626c);
            }
        }
        Collections.sort(arrayList, C4941a.f26950c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(((C4941a) arrayList.get(i2)).f26951a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    @Override // com.sunia.HTREnginev2.vod
    public Subtitle createSubtitle() {
        List<Cue> list = this.f26946p;
        this.f26947q = list;
        return new wod((List) Assertions.checkNotNull(list));
    }

    /* renamed from: d */
    public final void m20604d(int i) {
        if (i != 0) {
            if (i == 3) {
                this.f26946p = m20603c();
                return;
            }
            if (i == 8) {
                this.f26945o.m20625b();
                return;
            }
            switch (i) {
                case 12:
                    m20618r();
                    return;
                case 13:
                    this.f26945o.m20624a('\n');
                    return;
                case 14:
                    return;
                default:
                    if (i >= 17 && i <= 23) {
                        StringBuilder sb = new StringBuilder(55);
                        sb.append("Currently unsupported COMMAND_EXT1 Command: ");
                        sb.append(i);
                        Log.m21493w(f26925t, sb.toString());
                        this.f26940j.skipBits(8);
                        return;
                    }
                    if (i < 24 || i > 31) {
                        StringBuilder sb2 = new StringBuilder(31);
                        sb2.append("Invalid C0 command: ");
                        sb2.append(i);
                        Log.m21493w(f26925t, sb2.toString());
                        return;
                    }
                    StringBuilder sb3 = new StringBuilder(54);
                    sb3.append("Currently unsupported COMMAND_P16 Command: ");
                    sb3.append(i);
                    Log.m21493w(f26925t, sb3.toString());
                    this.f26940j.skipBits(16);
                    return;
            }
        }
    }

    @Override // com.sunia.HTREnginev2.vod
    public void decode(SubtitleInputBuffer subtitleInputBuffer) {
        ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(subtitleInputBuffer.data);
        this.f26939i.reset(byteBuffer.array(), byteBuffer.limit());
        while (this.f26939i.bytesLeft() >= 3) {
            int readUnsignedByte = this.f26939i.readUnsignedByte() & 7;
            int i = readUnsignedByte & 3;
            boolean z = (readUnsignedByte & 4) == 4;
            byte readUnsignedByte2 = (byte) this.f26939i.readUnsignedByte();
            byte readUnsignedByte3 = (byte) this.f26939i.readUnsignedByte();
            if (i == 2 || i == 3) {
                if (z) {
                    if (i == 3) {
                        m20602b();
                        int i2 = (readUnsignedByte2 & 192) >> 6;
                        int i3 = this.f26941k;
                        if (i3 != -1 && i2 != (i3 + 1) % 4) {
                            m20618r();
                            int i4 = this.f26941k;
                            StringBuilder sb = new StringBuilder(71);
                            sb.append("Sequence number discontinuity. previous=");
                            sb.append(i4);
                            sb.append(" current=");
                            sb.append(i2);
                            Log.m21493w(f26925t, sb.toString());
                        }
                        this.f26941k = i2;
                        int i5 = readUnsignedByte2 & 63;
                        if (i5 == 0) {
                            i5 = 64;
                        }
                        C4943c c4943c = new C4943c(i2, i5);
                        this.f26948r = c4943c;
                        byte[] bArr = c4943c.f27010c;
                        int i6 = c4943c.f27011d;
                        c4943c.f27011d = i6 + 1;
                        bArr[i6] = readUnsignedByte3;
                    } else {
                        Assertions.checkArgument(i == 2);
                        C4943c c4943c2 = this.f26948r;
                        if (c4943c2 == null) {
                            Log.m21489e(f26925t, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c4943c2.f27010c;
                            int i7 = c4943c2.f27011d;
                            int i8 = i7 + 1;
                            bArr2[i7] = readUnsignedByte2;
                            c4943c2.f27011d = i8 + 1;
                            bArr2[i8] = readUnsignedByte3;
                        }
                    }
                    C4943c c4943c3 = this.f26948r;
                    if (c4943c3.f27011d == (c4943c3.f27009b * 2) - 1) {
                        m20602b();
                    }
                }
            }
        }
    }

    @Override // com.sunia.HTREnginev2.vod, com.google.android.exoplayer2.decoder.Decoder
    @Nullable
    public /* bridge */ /* synthetic */ SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    @Override // com.sunia.HTREnginev2.vod, com.google.android.exoplayer2.decoder.Decoder
    @Nullable
    public /* bridge */ /* synthetic */ SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        return super.dequeueOutputBuffer();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    /* renamed from: e */
    public final void m20605e(int i) {
        int i2 = 1;
        switch (i) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i3 = i - 128;
                if (this.f26949s != i3) {
                    this.f26949s = i3;
                    this.f26945o = this.f26944n[i3];
                    return;
                }
                return;
            case 136:
                while (i2 <= 8) {
                    if (this.f26940j.readBit()) {
                        this.f26944n[8 - i2].m20628e();
                    }
                    i2++;
                }
                return;
            case 137:
                for (int i4 = 1; i4 <= 8; i4++) {
                    if (this.f26940j.readBit()) {
                        this.f26944n[8 - i4].m20637p(true);
                    }
                }
                return;
            case 138:
                while (i2 <= 8) {
                    if (this.f26940j.readBit()) {
                        this.f26944n[8 - i2].m20637p(false);
                    }
                    i2++;
                }
                return;
            case 139:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.f26940j.readBit()) {
                        this.f26944n[8 - i5].m20637p(!r0.m20632k());
                    }
                }
                return;
            case 140:
                while (i2 <= 8) {
                    if (this.f26940j.readBit()) {
                        this.f26944n[8 - i2].m20633l();
                    }
                    i2++;
                }
                return;
            case 141:
                this.f26940j.skipBits(8);
                return;
            case 142:
                return;
            case 143:
                m20618r();
                return;
            case 144:
                if (this.f26945o.m20630i()) {
                    m20613m();
                    return;
                } else {
                    this.f26940j.skipBits(16);
                    return;
                }
            case 145:
                if (this.f26945o.m20630i()) {
                    m20614n();
                    return;
                } else {
                    this.f26940j.skipBits(24);
                    return;
                }
            case 146:
                if (this.f26945o.m20630i()) {
                    m20615o();
                    return;
                } else {
                    this.f26940j.skipBits(16);
                    return;
                }
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid C1 command: ");
                sb.append(i);
                Log.m21493w(f26925t, sb.toString());
                return;
            case 151:
                if (this.f26945o.m20630i()) {
                    m20616p();
                    return;
                } else {
                    this.f26940j.skipBits(32);
                    return;
                }
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i6 = i - 152;
                m20608h(i6);
                if (this.f26949s != i6) {
                    this.f26949s = i6;
                    this.f26945o = this.f26944n[i6];
                    return;
                }
                return;
        }
    }

    /* renamed from: f */
    public final void m20606f(int i) {
        if (i <= 7) {
            return;
        }
        if (i <= 15) {
            this.f26940j.skipBits(8);
        } else if (i <= 23) {
            this.f26940j.skipBits(16);
        } else if (i <= 31) {
            this.f26940j.skipBits(24);
        }
    }

    @Override // com.sunia.HTREnginev2.vod, com.google.android.exoplayer2.decoder.Decoder
    public void flush() {
        super.flush();
        this.f26946p = null;
        this.f26947q = null;
        this.f26949s = 0;
        this.f26945o = this.f26944n[0];
        m20618r();
        this.f26948r = null;
    }

    /* renamed from: g */
    public final void m20607g(int i) {
        if (i <= 135) {
            this.f26940j.skipBits(32);
            return;
        }
        if (i <= 143) {
            this.f26940j.skipBits(40);
        } else if (i <= 159) {
            this.f26940j.skipBits(2);
            this.f26940j.skipBits(this.f26940j.readBits(6) * 8);
        }
    }

    @Override // com.sunia.HTREnginev2.vod, com.google.android.exoplayer2.decoder.Decoder
    public String getName() {
        return f26925t;
    }

    /* renamed from: h */
    public final void m20608h(int i) {
        C4942b c4942b = this.f26944n[i];
        this.f26940j.skipBits(2);
        boolean readBit = this.f26940j.readBit();
        boolean readBit2 = this.f26940j.readBit();
        boolean readBit3 = this.f26940j.readBit();
        int readBits = this.f26940j.readBits(3);
        boolean readBit4 = this.f26940j.readBit();
        int readBits2 = this.f26940j.readBits(7);
        int readBits3 = this.f26940j.readBits(8);
        int readBits4 = this.f26940j.readBits(4);
        int readBits5 = this.f26940j.readBits(4);
        this.f26940j.skipBits(2);
        int readBits6 = this.f26940j.readBits(6);
        this.f26940j.skipBits(2);
        c4942b.m20629f(readBit, readBit2, readBit3, readBits, readBit4, readBits2, readBits3, readBits5, readBits6, readBits4, this.f26940j.readBits(3), this.f26940j.readBits(3));
    }

    /* renamed from: i */
    public final void m20609i(int i) {
        if (i == 127) {
            this.f26945o.m20624a((char) 9835);
        } else {
            this.f26945o.m20624a((char) (i & 255));
        }
    }

    @Override // com.sunia.HTREnginev2.vod
    public boolean isNewSubtitleDataAvailable() {
        return this.f26946p != this.f26947q;
    }

    /* renamed from: j */
    public final void m20610j(int i) {
        this.f26945o.m20624a((char) (i & 255));
    }

    /* renamed from: k */
    public final void m20611k(int i) {
        if (i == 32) {
            this.f26945o.m20624a(' ');
            return;
        }
        if (i == 33) {
            this.f26945o.m20624a((char) 160);
            return;
        }
        if (i == 37) {
            this.f26945o.m20624a(Typography.ellipsis);
            return;
        }
        if (i == 42) {
            this.f26945o.m20624a((char) 352);
            return;
        }
        if (i == 44) {
            this.f26945o.m20624a((char) 338);
            return;
        }
        if (i == 63) {
            this.f26945o.m20624a((char) 376);
            return;
        }
        if (i == 57) {
            this.f26945o.m20624a(Typography.tm);
            return;
        }
        if (i == 58) {
            this.f26945o.m20624a((char) 353);
            return;
        }
        if (i == 60) {
            this.f26945o.m20624a((char) 339);
            return;
        }
        if (i == 61) {
            this.f26945o.m20624a((char) 8480);
            return;
        }
        switch (i) {
            case 48:
                this.f26945o.m20624a((char) 9608);
                return;
            case 49:
                this.f26945o.m20624a(Typography.leftSingleQuote);
                return;
            case 50:
                this.f26945o.m20624a(Typography.rightSingleQuote);
                return;
            case 51:
                this.f26945o.m20624a(Typography.leftDoubleQuote);
                return;
            case 52:
                this.f26945o.m20624a(Typography.rightDoubleQuote);
                return;
            case 53:
                this.f26945o.m20624a(Typography.bullet);
                return;
            default:
                switch (i) {
                    case 118:
                        this.f26945o.m20624a((char) 8539);
                        return;
                    case 119:
                        this.f26945o.m20624a((char) 8540);
                        return;
                    case 120:
                        this.f26945o.m20624a((char) 8541);
                        return;
                    case 121:
                        this.f26945o.m20624a((char) 8542);
                        return;
                    case 122:
                        this.f26945o.m20624a((char) 9474);
                        return;
                    case 123:
                        this.f26945o.m20624a((char) 9488);
                        return;
                    case 124:
                        this.f26945o.m20624a((char) 9492);
                        return;
                    case 125:
                        this.f26945o.m20624a((char) 9472);
                        return;
                    case 126:
                        this.f26945o.m20624a((char) 9496);
                        return;
                    case 127:
                        this.f26945o.m20624a((char) 9484);
                        return;
                    default:
                        StringBuilder sb = new StringBuilder(33);
                        sb.append("Invalid G2 character: ");
                        sb.append(i);
                        Log.m21493w(f26925t, sb.toString());
                        return;
                }
        }
    }

    /* renamed from: l */
    public final void m20612l(int i) {
        if (i == 160) {
            this.f26945o.m20624a((char) 13252);
            return;
        }
        StringBuilder sb = new StringBuilder(33);
        sb.append("Invalid G3 character: ");
        sb.append(i);
        Log.m21493w(f26925t, sb.toString());
        this.f26945o.m20624a(NameUtil.USCORE);
    }

    /* renamed from: m */
    public final void m20613m() {
        this.f26945o.m20634m(this.f26940j.readBits(4), this.f26940j.readBits(2), this.f26940j.readBits(2), this.f26940j.readBit(), this.f26940j.readBit(), this.f26940j.readBits(3), this.f26940j.readBits(3));
    }

    /* renamed from: n */
    public final void m20614n() {
        int m20623h = C4942b.m20623h(this.f26940j.readBits(2), this.f26940j.readBits(2), this.f26940j.readBits(2), this.f26940j.readBits(2));
        int m20623h2 = C4942b.m20623h(this.f26940j.readBits(2), this.f26940j.readBits(2), this.f26940j.readBits(2), this.f26940j.readBits(2));
        this.f26940j.skipBits(2);
        this.f26945o.m20635n(m20623h, m20623h2, C4942b.m20622g(this.f26940j.readBits(2), this.f26940j.readBits(2), this.f26940j.readBits(2)));
    }

    /* renamed from: o */
    public final void m20615o() {
        this.f26940j.skipBits(4);
        int readBits = this.f26940j.readBits(4);
        this.f26940j.skipBits(2);
        this.f26945o.m20636o(readBits, this.f26940j.readBits(6));
    }

    /* renamed from: p */
    public final void m20616p() {
        int m20623h = C4942b.m20623h(this.f26940j.readBits(2), this.f26940j.readBits(2), this.f26940j.readBits(2), this.f26940j.readBits(2));
        int readBits = this.f26940j.readBits(2);
        int m20622g = C4942b.m20622g(this.f26940j.readBits(2), this.f26940j.readBits(2), this.f26940j.readBits(2));
        if (this.f26940j.readBit()) {
            readBits |= 4;
        }
        boolean readBit = this.f26940j.readBit();
        int readBits2 = this.f26940j.readBits(2);
        int readBits3 = this.f26940j.readBits(2);
        int readBits4 = this.f26940j.readBits(2);
        this.f26940j.skipBits(8);
        this.f26945o.m20638q(m20623h, m20622g, readBit, readBits, readBits2, readBits3, readBits4);
    }

    @RequiresNonNull({"currentDtvCcPacket"})
    /* renamed from: q */
    public final void m20617q() {
        C4943c c4943c = this.f26948r;
        int i = c4943c.f27011d;
        int i2 = c4943c.f27009b;
        if (i != (i2 * 2) - 1) {
            int i3 = c4943c.f27008a;
            StringBuilder sb = new StringBuilder(115);
            sb.append("DtvCcPacket ended prematurely; size is ");
            sb.append((i2 * 2) - 1);
            sb.append(", but current index is ");
            sb.append(i);
            sb.append(" (sequence number ");
            sb.append(i3);
            sb.append(");");
            Log.m21487d(f26925t, sb.toString());
        }
        ParsableBitArray parsableBitArray = this.f26940j;
        C4943c c4943c2 = this.f26948r;
        parsableBitArray.reset(c4943c2.f27010c, c4943c2.f27011d);
        int readBits = this.f26940j.readBits(3);
        int readBits2 = this.f26940j.readBits(5);
        if (readBits == 7) {
            this.f26940j.skipBits(2);
            readBits = this.f26940j.readBits(6);
            if (readBits < 7) {
                StringBuilder sb2 = new StringBuilder(44);
                sb2.append("Invalid extended service number: ");
                sb2.append(readBits);
                Log.m21493w(f26925t, sb2.toString());
            }
        }
        if (readBits2 == 0) {
            if (readBits != 0) {
                StringBuilder sb3 = new StringBuilder(59);
                sb3.append("serviceNumber is non-zero (");
                sb3.append(readBits);
                sb3.append(") when blockSize is 0");
                Log.m21493w(f26925t, sb3.toString());
                return;
            }
            return;
        }
        if (readBits != this.f26943m) {
            return;
        }
        int position = this.f26940j.getPosition() + (readBits2 * 8);
        boolean z = false;
        while (this.f26940j.bitsLeft() > 0 && this.f26940j.getPosition() < position) {
            int readBits3 = this.f26940j.readBits(8);
            if (readBits3 == 16) {
                int readBits4 = this.f26940j.readBits(8);
                if (readBits4 <= 31) {
                    m20606f(readBits4);
                } else {
                    if (readBits4 <= 127) {
                        m20611k(readBits4);
                    } else if (readBits4 <= 159) {
                        m20607g(readBits4);
                    } else if (readBits4 <= 255) {
                        m20612l(readBits4);
                    } else {
                        StringBuilder sb4 = new StringBuilder(37);
                        sb4.append("Invalid extended command: ");
                        sb4.append(readBits4);
                        Log.m21493w(f26925t, sb4.toString());
                    }
                    z = true;
                }
            } else if (readBits3 <= 31) {
                m20604d(readBits3);
            } else {
                if (readBits3 <= 127) {
                    m20609i(readBits3);
                } else if (readBits3 <= 159) {
                    m20605e(readBits3);
                } else if (readBits3 <= 255) {
                    m20610j(readBits3);
                } else {
                    StringBuilder sb5 = new StringBuilder(33);
                    sb5.append("Invalid base command: ");
                    sb5.append(readBits3);
                    Log.m21493w(f26925t, sb5.toString());
                }
                z = true;
            }
        }
        if (z) {
            this.f26946p = m20603c();
        }
    }

    @Override // com.sunia.HTREnginev2.vod
    public /* bridge */ /* synthetic */ void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        super.queueInputBuffer(subtitleInputBuffer);
    }

    /* renamed from: r */
    public final void m20618r() {
        for (int i = 0; i < 8; i++) {
            this.f26944n[i].m20633l();
        }
    }

    @Override // com.sunia.HTREnginev2.vod, com.google.android.exoplayer2.decoder.Decoder
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }

    @Override // com.sunia.HTREnginev2.vod, com.google.android.exoplayer2.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j) {
        super.setPositionUs(j);
    }
}
