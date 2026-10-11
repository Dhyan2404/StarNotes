package com.tencent.beacon.base.net.p066b.p067a.p069b;

import com.tencent.beacon.base.net.p066b.p067a.InterfaceC14921a;
import com.tencent.beacon.base.net.p066b.p067a.p068a.C14922a;
import com.tencent.beacon.base.net.p066b.p067a.p070c.C14930b;
import com.tencent.beacon.base.net.p066b.p067a.p070c.C14932d;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* renamed from: com.tencent.beacon.base.net.b.a.b.c */
/* loaded from: classes10.dex */
public class C14928c {

    /* renamed from: a */
    static byte[] f92752a;

    /* renamed from: A */
    boolean f92753A;

    /* renamed from: E */
    int f92757E;

    /* renamed from: N */
    long f92766N;

    /* renamed from: O */
    boolean f92767O;

    /* renamed from: P */
    InputStream f92768P;

    /* renamed from: V */
    int f92774V;

    /* renamed from: ba */
    int f92781ba;

    /* renamed from: c */
    byte f92782c;

    /* renamed from: v */
    int f92801v;

    /* renamed from: w */
    int f92802w;

    /* renamed from: x */
    int f92803x;

    /* renamed from: y */
    int f92804y;

    /* renamed from: z */
    int f92805z;

    /* renamed from: b */
    int f92780b = C14926a.m59179a();

    /* renamed from: d */
    int[] f92783d = new int[4];

    /* renamed from: e */
    d[] f92784e = new d[4096];

    /* renamed from: f */
    C14922a f92785f = null;

    /* renamed from: g */
    C14932d f92786g = new C14932d();

    /* renamed from: h */
    short[] f92787h = new short[192];

    /* renamed from: i */
    short[] f92788i = new short[12];

    /* renamed from: j */
    short[] f92789j = new short[12];

    /* renamed from: k */
    short[] f92790k = new short[12];

    /* renamed from: l */
    short[] f92791l = new short[12];

    /* renamed from: m */
    short[] f92792m = new short[192];

    /* renamed from: n */
    C14930b[] f92793n = new C14930b[4];

    /* renamed from: o */
    short[] f92794o = new short[114];

    /* renamed from: p */
    C14930b f92795p = new C14930b(4);

    /* renamed from: q */
    b f92796q = new b();

    /* renamed from: r */
    b f92797r = new b();

    /* renamed from: s */
    c f92798s = new c();

    /* renamed from: t */
    int[] f92799t = new int[548];

    /* renamed from: u */
    int f92800u = 32;

    /* renamed from: B */
    int[] f92754B = new int[256];

    /* renamed from: C */
    int[] f92755C = new int[512];

    /* renamed from: D */
    int[] f92756D = new int[16];

    /* renamed from: F */
    int f92758F = 44;

    /* renamed from: G */
    int f92759G = 2;

    /* renamed from: H */
    int f92760H = 3;

    /* renamed from: I */
    int f92761I = 0;

    /* renamed from: J */
    int f92762J = 3;

    /* renamed from: K */
    int f92763K = 4194304;

    /* renamed from: L */
    int f92764L = -1;

    /* renamed from: M */
    int f92765M = -1;

    /* renamed from: Q */
    int f92769Q = 1;

    /* renamed from: R */
    boolean f92770R = false;

    /* renamed from: S */
    boolean f92771S = false;

    /* renamed from: T */
    int[] f92772T = new int[4];

    /* renamed from: U */
    int[] f92773U = new int[4];

    /* renamed from: W */
    long[] f92775W = new long[1];

    /* renamed from: X */
    long[] f92776X = new long[1];

    /* renamed from: Y */
    boolean[] f92777Y = new boolean[1];

    /* renamed from: Z */
    byte[] f92778Z = new byte[5];

    /* renamed from: aa */
    int[] f92779aa = new int[128];

    /* renamed from: com.tencent.beacon.base.net.b.a.b.c$b */
    /* loaded from: classes10.dex */
    public class b extends a {

        /* renamed from: f */
        int[] f92811f;

        /* renamed from: g */
        int f92812g;

        /* renamed from: h */
        int[] f92813h;

        public b() {
            super();
            this.f92811f = new int[4352];
            this.f92813h = new int[16];
        }

        /* renamed from: a */
        public int m59234a(int i, int i2) {
            return this.f92811f[(i2 * 272) + i];
        }

        /* renamed from: b */
        public void m59235b(int i) {
            this.f92812g = i;
        }

        /* renamed from: c */
        public void m59236c(int i) {
            m59232a(i, this.f92812g, this.f92811f, i * 272);
            this.f92813h[i] = this.f92812g;
        }

        /* renamed from: d */
        public void m59237d(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                m59236c(i2);
            }
        }

        @Override // com.tencent.beacon.base.net.p066b.p067a.p069b.C14928c.a
        /* renamed from: a */
        public void mo59233a(C14932d c14932d, int i, int i2) throws IOException {
            super.mo59233a(c14932d, i, i2);
            int[] iArr = this.f92813h;
            int i3 = iArr[i2] - 1;
            iArr[i2] = i3;
            if (i3 == 0) {
                m59236c(i2);
            }
        }
    }

    /* renamed from: com.tencent.beacon.base.net.b.a.b.c$d */
    /* loaded from: classes10.dex */
    public class d {

        /* renamed from: a */
        public int f92822a;

        /* renamed from: b */
        public boolean f92823b;

        /* renamed from: c */
        public boolean f92824c;

        /* renamed from: d */
        public int f92825d;

        /* renamed from: e */
        public int f92826e;

        /* renamed from: f */
        public int f92827f;

        /* renamed from: g */
        public int f92828g;

        /* renamed from: h */
        public int f92829h;

        /* renamed from: i */
        public int f92830i;

        /* renamed from: j */
        public int f92831j;

        /* renamed from: k */
        public int f92832k;

        /* renamed from: l */
        public int f92833l;

        public d() {
        }

        /* renamed from: a */
        public boolean m59245a() {
            return this.f92829h == 0;
        }

        /* renamed from: b */
        public void m59246b() {
            this.f92829h = -1;
            this.f92823b = false;
        }

        /* renamed from: c */
        public void m59247c() {
            this.f92829h = 0;
            this.f92823b = false;
        }
    }

    static {
        byte[] bArr = new byte[2048];
        f92752a = bArr;
        bArr[0] = 0;
        bArr[1] = 1;
        int i = 2;
        for (int i2 = 2; i2 < 22; i2++) {
            int i3 = 1 << ((i2 >> 1) - 1);
            int i4 = 0;
            while (i4 < i3) {
                f92752a[i] = (byte) i2;
                i4++;
                i++;
            }
        }
    }

    public C14928c() {
        for (int i = 0; i < 4096; i++) {
            this.f92784e[i] = new d();
        }
        for (int i2 = 0; i2 < 4; i2++) {
            this.f92793n[i2] = new C14930b(6);
        }
    }

    /* renamed from: d */
    public static int m59200d(int i) {
        if (i < 2048) {
            return f92752a[i];
        }
        if (i < 2097152) {
            return f92752a[i >> 10] + 20;
        }
        return f92752a[i >> 20] + 40;
    }

    /* renamed from: e */
    public static int m59201e(int i) {
        if (i < 131072) {
            return f92752a[i >> 6] + 12;
        }
        if (i < 134217728) {
            return f92752a[i >> 16] + 32;
        }
        return f92752a[i >> 26] + TarConstants.LF_BLK;
    }

    /* renamed from: a */
    public void m59206a() {
        this.f92780b = C14926a.m59179a();
        this.f92782c = (byte) 0;
        for (int i = 0; i < 4; i++) {
            this.f92783d[i] = 0;
        }
    }

    /* renamed from: b */
    public void m59213b() {
        if (this.f92785f == null) {
            C14922a c14922a = new C14922a();
            c14922a.m59157c(this.f92769Q == 0 ? 2 : 4);
            this.f92785f = c14922a;
        }
        this.f92798s.m59240a(this.f92761I, this.f92762J);
        int i = this.f92763K;
        if (i == this.f92764L && this.f92765M == this.f92800u) {
            return;
        }
        this.f92785f.m59155a(i, 4096, this.f92800u, 274);
        this.f92764L = this.f92763K;
        this.f92765M = this.f92800u;
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0520  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0535  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x064e  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0649 A[EDGE_INSN: B:218:0x0649->B:219:0x0649 BREAK  A[LOOP:15: B:196:0x0559->B:217:0x065f], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x066b  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0530  */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m59216c(int r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.base.net.p066b.p067a.p069b.C14928c.m59216c(int):int");
    }

    /* renamed from: f */
    public int m59221f() throws IOException {
        int i;
        int m59153a = this.f92785f.m59153a(this.f92799t);
        this.f92802w = m59153a;
        if (m59153a > 0) {
            int[] iArr = this.f92799t;
            i = iArr[m59153a - 2];
            if (i == this.f92800u) {
                i += this.f92785f.m59166b(i - 1, iArr[m59153a - 1], 273 - i);
            }
        } else {
            i = 0;
        }
        this.f92803x++;
        return i;
    }

    /* renamed from: g */
    public boolean m59224g(int i) {
        return true;
    }

    /* renamed from: h */
    public void m59225h() {
        this.f92786g.m59276e();
    }

    /* renamed from: i */
    public void m59227i() {
        m59223g();
        m59225h();
    }

    /* renamed from: j */
    public boolean m59229j(int i) {
        if (i < 5 || i > 273) {
            return false;
        }
        this.f92800u = i;
        return true;
    }

    /* renamed from: k */
    public void m59230k(int i) throws IOException {
        if (this.f92770R) {
            this.f92786g.m59272a(this.f92787h, (this.f92780b << 4) + i, 1);
            this.f92786g.m59272a(this.f92788i, this.f92780b, 0);
            this.f92780b = C14926a.m59183d(this.f92780b);
            this.f92796q.mo59233a(this.f92786g, 0, i);
            this.f92793n[C14926a.m59180a(2)].m59256a(this.f92786g, 63);
            this.f92786g.m59270a(67108863, 26);
            this.f92795p.m59258b(this.f92786g, 15);
        }
    }

    /* renamed from: g */
    public void m59223g() {
        C14922a c14922a = this.f92785f;
        if (c14922a == null || !this.f92771S) {
            return;
        }
        c14922a.m59170g();
        this.f92771S = false;
    }

    /* renamed from: h */
    public boolean m59226h(int i) {
        int i2 = 0;
        if (i < 1 || i > 536870912) {
            return false;
        }
        this.f92763K = i;
        while (i > (1 << i2)) {
            i2++;
        }
        this.f92758F = i2 * 2;
        return true;
    }

    /* renamed from: i */
    public boolean m59228i(int i) {
        if (i < 0 || i > 2) {
            return false;
        }
        int i2 = this.f92769Q;
        this.f92769Q = i;
        if (this.f92785f == null || i2 == i) {
            return true;
        }
        this.f92764L = -1;
        this.f92785f = null;
        return true;
    }

    /* renamed from: com.tencent.beacon.base.net.b.a.b.c$a */
    /* loaded from: classes10.dex */
    public class a {

        /* renamed from: a */
        short[] f92806a = new short[2];

        /* renamed from: b */
        C14930b[] f92807b = new C14930b[16];

        /* renamed from: c */
        C14930b[] f92808c = new C14930b[16];

        /* renamed from: d */
        C14930b f92809d = new C14930b(8);

        public a() {
            for (int i = 0; i < 16; i++) {
                this.f92807b[i] = new C14930b(3);
                this.f92808c[i] = new C14930b(3);
            }
        }

        /* renamed from: a */
        public void m59231a(int i) {
            C14932d.m59266a(this.f92806a);
            for (int i2 = 0; i2 < i; i2++) {
                this.f92807b[i2].m59255a();
                this.f92808c[i2].m59255a();
            }
            this.f92809d.m59255a();
        }

        /* renamed from: a */
        public void mo59233a(C14932d c14932d, int i, int i2) throws IOException {
            if (i < 8) {
                c14932d.m59272a(this.f92806a, 0, 0);
                this.f92807b[i2].m59256a(c14932d, i);
                return;
            }
            int i3 = i - 8;
            c14932d.m59272a(this.f92806a, 0, 1);
            if (i3 < 8) {
                c14932d.m59272a(this.f92806a, 1, 0);
                this.f92808c[i2].m59256a(c14932d, i3);
            } else {
                c14932d.m59272a(this.f92806a, 1, 1);
                this.f92809d.m59256a(c14932d, i3 - 8);
            }
        }

        /* renamed from: a */
        public void m59232a(int i, int i2, int[] iArr, int i3) {
            int i4 = 0;
            int m59265a = C14932d.m59265a(this.f92806a[0]);
            int m59267b = C14932d.m59267b(this.f92806a[0]);
            int m59265a2 = C14932d.m59265a(this.f92806a[1]) + m59267b;
            int m59267b2 = m59267b + C14932d.m59267b(this.f92806a[1]);
            while (i4 < 8) {
                if (i4 >= i2) {
                    return;
                }
                iArr[i3 + i4] = this.f92807b[i].m59254a(i4) + m59265a;
                i4++;
            }
            while (i4 < 16) {
                if (i4 >= i2) {
                    return;
                }
                iArr[i3 + i4] = this.f92808c[i].m59254a(i4 - 8) + m59265a2;
                i4++;
            }
            while (i4 < i2) {
                iArr[i3 + i4] = this.f92809d.m59254a((i4 - 8) - 8) + m59267b2;
                i4++;
            }
        }
    }

    /* renamed from: a */
    public int m59203a(int i, int i2) {
        return C14932d.m59265a(this.f92789j[i]) + C14932d.m59265a(this.f92792m[(i << 4) + i2]);
    }

    /* renamed from: d */
    public void m59219d() {
        for (int i = 4; i < 128; i++) {
            int m59200d = m59200d(i);
            int i2 = (m59200d >> 1) - 1;
            this.f92779aa[i] = C14930b.m59252a(this.f92794o, (r4 - m59200d) - 1, i2, i - (((m59200d & 1) | 2) << i2));
        }
        for (int i3 = 0; i3 < 4; i3++) {
            C14930b c14930b = this.f92793n[i3];
            int i4 = i3 << 6;
            for (int i5 = 0; i5 < this.f92758F; i5++) {
                this.f92754B[i4 + i5] = c14930b.m59254a(i5);
            }
            for (int i6 = 14; i6 < this.f92758F; i6++) {
                int[] iArr = this.f92754B;
                int i7 = i4 + i6;
                iArr[i7] = iArr[i7] + ((((i6 >> 1) - 1) - 4) << 6);
            }
            int i8 = i3 * 128;
            int i9 = 0;
            while (i9 < 4) {
                this.f92755C[i8 + i9] = this.f92754B[i4 + i9];
                i9++;
            }
            while (i9 < 128) {
                this.f92755C[i8 + i9] = this.f92754B[m59200d(i9) + i4] + this.f92779aa[i9];
                i9++;
            }
        }
        this.f92781ba = 0;
    }

    /* renamed from: e */
    public void m59220e() {
        m59206a();
        this.f92786g.m59275d();
        C14932d.m59266a(this.f92787h);
        C14932d.m59266a(this.f92792m);
        C14932d.m59266a(this.f92788i);
        C14932d.m59266a(this.f92789j);
        C14932d.m59266a(this.f92790k);
        C14932d.m59266a(this.f92791l);
        C14932d.m59266a(this.f92794o);
        this.f92798s.m59239a();
        for (int i = 0; i < 4; i++) {
            this.f92793n[i].m59255a();
        }
        this.f92796q.m59231a(1 << this.f92759G);
        this.f92797r.m59231a(1 << this.f92759G);
        this.f92795p.m59255a();
        this.f92753A = false;
        this.f92804y = 0;
        this.f92805z = 0;
        this.f92803x = 0;
    }

    /* renamed from: com.tencent.beacon.base.net.b.a.b.c$c */
    /* loaded from: classes10.dex */
    public class c {

        /* renamed from: a */
        a[] f92815a;

        /* renamed from: b */
        int f92816b;

        /* renamed from: c */
        int f92817c;

        /* renamed from: d */
        int f92818d;

        /* renamed from: com.tencent.beacon.base.net.b.a.b.c$c$a */
        /* loaded from: classes10.dex */
        public class a {

            /* renamed from: a */
            short[] f92820a = new short[768];

            public a() {
            }

            /* renamed from: a */
            public void m59242a() {
                C14932d.m59266a(this.f92820a);
            }

            /* renamed from: a */
            public void m59243a(C14932d c14932d, byte b) throws IOException {
                int i = 1;
                for (int i2 = 7; i2 >= 0; i2--) {
                    int i3 = (b >> i2) & 1;
                    c14932d.m59272a(this.f92820a, i, i3);
                    i = (i << 1) | i3;
                }
            }

            /* renamed from: a */
            public void m59244a(C14932d c14932d, byte b, byte b2) throws IOException {
                int i;
                boolean z = true;
                int i2 = 1;
                for (int i3 = 7; i3 >= 0; i3--) {
                    int i4 = (b2 >> i3) & 1;
                    if (z) {
                        int i5 = (b >> i3) & 1;
                        i = ((i5 + 1) << 8) + i2;
                        z = i5 == i4;
                    } else {
                        i = i2;
                    }
                    c14932d.m59272a(this.f92820a, i, i4);
                    i2 = (i2 << 1) | i4;
                }
            }

            /* renamed from: a */
            public int m59241a(boolean z, byte b, byte b2) {
                int i;
                int i2 = 0;
                int i3 = 7;
                if (z) {
                    i = 1;
                    while (i3 >= 0) {
                        int i4 = (b >> i3) & 1;
                        int i5 = (b2 >> i3) & 1;
                        i2 += C14932d.m59268b(this.f92820a[((i4 + 1) << 8) + i], i5);
                        i = (i << 1) | i5;
                        i3--;
                        if (i4 != i5) {
                            break;
                        }
                    }
                } else {
                    i = 1;
                }
                while (i3 >= 0) {
                    int i6 = (b2 >> i3) & 1;
                    i2 += C14932d.m59268b(this.f92820a[i], i6);
                    i = (i << 1) | i6;
                    i3--;
                }
                return i2;
            }
        }

        public c() {
        }

        /* renamed from: a */
        public void m59240a(int i, int i2) {
            if (this.f92815a != null && this.f92816b == i2 && this.f92817c == i) {
                return;
            }
            this.f92817c = i;
            this.f92818d = (1 << i) - 1;
            this.f92816b = i2;
            int i3 = 1 << (i2 + i);
            this.f92815a = new a[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                this.f92815a[i4] = new a();
            }
        }

        /* renamed from: a */
        public void m59239a() {
            int i = 1 << (this.f92816b + this.f92817c);
            for (int i2 = 0; i2 < i; i2++) {
                this.f92815a[i2].m59242a();
            }
        }

        /* renamed from: a */
        public a m59238a(int i, byte b) {
            a[] aVarArr = this.f92815a;
            int i2 = i & this.f92818d;
            int i3 = this.f92816b;
            return aVarArr[(i2 << i3) + ((b & 255) >>> (8 - i3))];
        }
    }

    /* renamed from: a */
    public int m59205a(int i, int i2, int i3, int i4) {
        return this.f92797r.m59234a(i2 - 2, i4) + m59212b(i, i3, i4);
    }

    /* renamed from: f */
    public void m59222f(int i) throws IOException {
        if (i > 0) {
            this.f92785f.m59158d(i);
            this.f92803x += i;
        }
    }

    /* renamed from: a */
    public int m59204a(int i, int i2, int i3) {
        int i4;
        int m59180a = C14926a.m59180a(i2);
        if (i < 128) {
            i4 = this.f92755C[(m59180a * 128) + i];
        } else {
            i4 = this.f92756D[i & 15] + this.f92754B[(m59180a << 6) + m59201e(i)];
        }
        return i4 + this.f92796q.m59234a(i2 - 2, i3);
    }

    /* renamed from: b */
    public int m59212b(int i, int i2, int i3) {
        int m59268b;
        if (i == 0) {
            return C14932d.m59265a(this.f92789j[i2]) + C14932d.m59267b(this.f92792m[(i2 << 4) + i3]);
        }
        int m59267b = C14932d.m59267b(this.f92789j[i2]);
        if (i == 1) {
            m59268b = C14932d.m59265a(this.f92790k[i2]);
        } else {
            m59267b += C14932d.m59267b(this.f92790k[i2]);
            m59268b = C14932d.m59268b(this.f92791l[i2], i - 2);
        }
        return m59267b + m59268b;
    }

    /* renamed from: a */
    public int m59202a(int i) {
        this.f92804y = i;
        d dVar = this.f92784e[i];
        int i2 = dVar.f92828g;
        int i3 = dVar.f92829h;
        while (true) {
            d[] dVarArr = this.f92784e;
            if (dVarArr[i].f92823b) {
                dVarArr[i2].m59246b();
                d[] dVarArr2 = this.f92784e;
                int i4 = i2 - 1;
                dVarArr2[i2].f92828g = i4;
                d dVar2 = dVarArr2[i];
                if (dVar2.f92824c) {
                    d dVar3 = dVarArr2[i4];
                    dVar3.f92823b = false;
                    dVar3.f92828g = dVar2.f92825d;
                    dVar3.f92829h = dVar2.f92826e;
                }
            }
            d[] dVarArr3 = this.f92784e;
            d dVar4 = dVarArr3[i2];
            int i5 = dVar4.f92829h;
            int i6 = dVar4.f92828g;
            dVar4.f92829h = i3;
            dVar4.f92828g = i;
            if (i2 <= 0) {
                d dVar5 = dVarArr3[0];
                this.f92774V = dVar5.f92829h;
                int i7 = dVar5.f92828g;
                this.f92805z = i7;
                return i7;
            }
            i = i2;
            i3 = i5;
            i2 = i6;
        }
    }

    /* renamed from: b */
    public void m59214b(int i) throws IOException {
        m59223g();
        m59230k(i & this.f92760H);
        this.f92786g.m59269a();
        this.f92786g.m59273b();
    }

    /* renamed from: b */
    public void m59215b(OutputStream outputStream) throws IOException {
        this.f92778Z[0] = (byte) ((((this.f92759G * 5) + this.f92761I) * 9) + this.f92762J);
        int i = 0;
        while (i < 4) {
            int i2 = i + 1;
            this.f92778Z[i2] = (byte) (this.f92763K >> (i * 8));
            i = i2;
        }
        outputStream.write(this.f92778Z, 0, 5);
    }

    /* renamed from: a */
    public void m59211a(long[] jArr, long[] jArr2, boolean[] zArr) throws IOException {
        jArr[0] = 0;
        jArr2[0] = 0;
        zArr[0] = true;
        InputStream inputStream = this.f92768P;
        if (inputStream != null) {
            this.f92785f.m59164a(inputStream);
            this.f92785f.mo59156c();
            this.f92771S = true;
            this.f92768P = null;
        }
        if (this.f92767O) {
            return;
        }
        this.f92767O = true;
        long j = this.f92766N;
        if (j == 0) {
            if (this.f92785f.m59165b() == 0) {
                m59214b((int) this.f92766N);
                return;
            }
            m59221f();
            this.f92786g.m59272a(this.f92787h, (this.f92780b << 4) + (((int) this.f92766N) & this.f92760H), 0);
            this.f92780b = C14926a.m59182c(this.f92780b);
            byte m59161a = this.f92785f.m59161a(0 - this.f92803x);
            this.f92798s.m59238a((int) this.f92766N, this.f92782c).m59243a(this.f92786g, m59161a);
            this.f92782c = m59161a;
            this.f92803x--;
            this.f92766N++;
        }
        if (this.f92785f.m59165b() == 0) {
            m59214b((int) this.f92766N);
            return;
        }
        while (true) {
            int m59216c = m59216c((int) this.f92766N);
            int i = this.f92774V;
            int i2 = ((int) this.f92766N) & this.f92760H;
            int i3 = (this.f92780b << 4) + i2;
            if (m59216c == 1 && i == -1) {
                this.f92786g.m59272a(this.f92787h, i3, 0);
                byte m59161a2 = this.f92785f.m59161a(0 - this.f92803x);
                c.a m59238a = this.f92798s.m59238a((int) this.f92766N, this.f92782c);
                if (!C14926a.m59181b(this.f92780b)) {
                    m59238a.m59244a(this.f92786g, this.f92785f.m59161a(((0 - this.f92783d[0]) - 1) - this.f92803x), m59161a2);
                } else {
                    m59238a.m59243a(this.f92786g, m59161a2);
                }
                this.f92782c = m59161a2;
                this.f92780b = C14926a.m59182c(this.f92780b);
            } else {
                this.f92786g.m59272a(this.f92787h, i3, 1);
                if (i < 4) {
                    this.f92786g.m59272a(this.f92788i, this.f92780b, 1);
                    if (i == 0) {
                        this.f92786g.m59272a(this.f92789j, this.f92780b, 0);
                        if (m59216c == 1) {
                            this.f92786g.m59272a(this.f92792m, i3, 0);
                        } else {
                            this.f92786g.m59272a(this.f92792m, i3, 1);
                        }
                    } else {
                        this.f92786g.m59272a(this.f92789j, this.f92780b, 1);
                        if (i == 1) {
                            this.f92786g.m59272a(this.f92790k, this.f92780b, 0);
                        } else {
                            this.f92786g.m59272a(this.f92790k, this.f92780b, 1);
                            this.f92786g.m59272a(this.f92791l, this.f92780b, i - 2);
                        }
                    }
                    if (m59216c == 1) {
                        this.f92780b = C14926a.m59185f(this.f92780b);
                    } else {
                        this.f92797r.mo59233a(this.f92786g, m59216c - 2, i2);
                        this.f92780b = C14926a.m59184e(this.f92780b);
                    }
                    int i4 = this.f92783d[i];
                    if (i != 0) {
                        while (i >= 1) {
                            int[] iArr = this.f92783d;
                            iArr[i] = iArr[i - 1];
                            i--;
                        }
                        this.f92783d[0] = i4;
                    }
                } else {
                    this.f92786g.m59272a(this.f92788i, this.f92780b, 0);
                    this.f92780b = C14926a.m59183d(this.f92780b);
                    this.f92796q.mo59233a(this.f92786g, m59216c - 2, i2);
                    int i5 = i - 4;
                    int m59200d = m59200d(i5);
                    this.f92793n[C14926a.m59180a(m59216c)].m59256a(this.f92786g, m59200d);
                    if (m59200d >= 4) {
                        int i6 = (m59200d >> 1) - 1;
                        int i7 = ((m59200d & 1) | 2) << i6;
                        int i8 = i5 - i7;
                        if (m59200d < 14) {
                            C14930b.m59253a(this.f92794o, (i7 - m59200d) - 1, this.f92786g, i6, i8);
                        } else {
                            this.f92786g.m59270a(i8 >> 4, i6 - 4);
                            this.f92795p.m59258b(this.f92786g, i8 & 15);
                            this.f92757E++;
                        }
                    }
                    for (int i9 = 3; i9 >= 1; i9--) {
                        int[] iArr2 = this.f92783d;
                        iArr2[i9] = iArr2[i9 - 1];
                    }
                    this.f92783d[0] = i5;
                    this.f92781ba++;
                }
                this.f92782c = this.f92785f.m59161a((m59216c - 1) - this.f92803x);
            }
            int i10 = this.f92803x - m59216c;
            this.f92803x = i10;
            this.f92766N += m59216c;
            if (i10 == 0) {
                if (this.f92781ba >= 128) {
                    m59219d();
                }
                if (this.f92757E >= 16) {
                    m59217c();
                }
                jArr[0] = this.f92766N;
                jArr2[0] = this.f92786g.m59274c();
                if (this.f92785f.m59165b() == 0) {
                    m59214b((int) this.f92766N);
                    return;
                } else if (this.f92766N - j >= 4096) {
                    this.f92767O = false;
                    zArr[0] = false;
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public void m59209a(OutputStream outputStream) {
        this.f92786g.m59271a(outputStream);
    }

    /* renamed from: a */
    public void m59207a(InputStream inputStream, OutputStream outputStream, long j, long j2) {
        this.f92768P = inputStream;
        this.f92767O = false;
        m59213b();
        m59209a(outputStream);
        m59220e();
        m59219d();
        m59217c();
        this.f92796q.m59235b((this.f92800u + 1) - 2);
        this.f92796q.m59237d(1 << this.f92759G);
        this.f92797r.m59235b((this.f92800u + 1) - 2);
        this.f92797r.m59237d(1 << this.f92759G);
        this.f92766N = 0L;
    }

    /* renamed from: a */
    public void m59208a(InputStream inputStream, OutputStream outputStream, long j, long j2, InterfaceC14921a interfaceC14921a) throws IOException {
        this.f92771S = false;
        try {
            m59207a(inputStream, outputStream, j, j2);
            while (true) {
                m59211a(this.f92775W, this.f92776X, this.f92777Y);
                if (this.f92777Y[0]) {
                    return;
                }
                if (interfaceC14921a != null) {
                    interfaceC14921a.m59152a(this.f92775W[0], this.f92776X[0]);
                }
            }
        } finally {
            m59227i();
        }
    }

    /* renamed from: a */
    public void m59210a(boolean z) {
        this.f92770R = z;
    }

    /* renamed from: c */
    public void m59217c() {
        for (int i = 0; i < 16; i++) {
            this.f92756D[i] = this.f92795p.m59257b(i);
        }
        this.f92757E = 0;
    }

    /* renamed from: c */
    public boolean m59218c(int i, int i2, int i3) {
        if (i2 < 0 || i2 > 4 || i < 0 || i > 8 || i3 < 0 || i3 > 4) {
            return false;
        }
        this.f92761I = i2;
        this.f92762J = i;
        this.f92759G = i3;
        this.f92760H = (1 << i3) - 1;
        return true;
    }
}
