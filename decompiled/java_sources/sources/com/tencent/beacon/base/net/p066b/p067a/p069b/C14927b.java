package com.tencent.beacon.base.net.p066b.p067a.p069b;

import com.tencent.beacon.base.net.p066b.p067a.p068a.C14924c;
import com.tencent.beacon.base.net.p066b.p067a.p070c.C14929a;
import com.tencent.beacon.base.net.p066b.p067a.p070c.C14931c;
import java.io.IOException;

/* renamed from: com.tencent.beacon.base.net.b.a.b.b */
/* loaded from: classes10.dex */
public class C14927b {

    /* renamed from: a */
    C14924c f92722a = new C14924c();

    /* renamed from: b */
    C14931c f92723b = new C14931c();

    /* renamed from: c */
    short[] f92724c = new short[192];

    /* renamed from: d */
    short[] f92725d = new short[12];

    /* renamed from: e */
    short[] f92726e = new short[12];

    /* renamed from: f */
    short[] f92727f = new short[12];

    /* renamed from: g */
    short[] f92728g = new short[12];

    /* renamed from: h */
    short[] f92729h = new short[192];

    /* renamed from: i */
    C14929a[] f92730i = new C14929a[4];

    /* renamed from: j */
    short[] f92731j = new short[114];

    /* renamed from: k */
    C14929a f92732k = new C14929a(4);

    /* renamed from: l */
    a f92733l = new a();

    /* renamed from: m */
    a f92734m = new a();

    /* renamed from: n */
    b f92735n = new b();

    /* renamed from: o */
    int f92736o = -1;

    /* renamed from: p */
    int f92737p = -1;

    /* renamed from: q */
    int f92738q;

    public C14927b() {
        for (int i = 0; i < 4; i++) {
            this.f92730i[i] = new C14929a(6);
        }
    }

    /* renamed from: a */
    public boolean m59187a(int i) {
        if (i < 0) {
            return false;
        }
        if (this.f92736o != i) {
            this.f92736o = i;
            int max = Math.max(i, 1);
            this.f92737p = max;
            this.f92722a.m59173a(Math.max(max, 4096));
        }
        return true;
    }

    /* renamed from: com.tencent.beacon.base.net.b.a.b.b$a */
    /* loaded from: classes10.dex */
    public class a {

        /* renamed from: a */
        short[] f92739a = new short[2];

        /* renamed from: b */
        C14929a[] f92740b = new C14929a[16];

        /* renamed from: c */
        C14929a[] f92741c = new C14929a[16];

        /* renamed from: d */
        C14929a f92742d = new C14929a(8);

        /* renamed from: e */
        int f92743e = 0;

        public a() {
        }

        /* renamed from: a */
        public void m59193a(int i) {
            while (true) {
                int i2 = this.f92743e;
                if (i2 >= i) {
                    return;
                }
                this.f92740b[i2] = new C14929a(3);
                this.f92741c[this.f92743e] = new C14929a(3);
                this.f92743e++;
            }
        }

        /* renamed from: a */
        public void m59192a() {
            C14931c.m59259a(this.f92739a);
            for (int i = 0; i < this.f92743e; i++) {
                this.f92740b[i].m59250a();
                this.f92741c[i].m59250a();
            }
            this.f92742d.m59250a();
        }

        /* renamed from: a */
        public int m59191a(C14931c c14931c, int i) throws IOException {
            int m59249a;
            if (c14931c.m59261a(this.f92739a, 0) == 0) {
                return this.f92740b[i].m59249a(c14931c);
            }
            if (c14931c.m59261a(this.f92739a, 1) == 0) {
                m59249a = this.f92741c[i].m59249a(c14931c);
            } else {
                m59249a = this.f92742d.m59249a(c14931c) + 8;
            }
            return m59249a + 8;
        }
    }

    /* renamed from: a */
    public boolean m59188a(int i, int i2, int i3) {
        if (i > 8 || i2 > 4 || i3 > 4) {
            return false;
        }
        this.f92735n.m59196a(i2, i);
        int i4 = 1 << i3;
        this.f92733l.m59193a(i4);
        this.f92734m.m59193a(i4);
        this.f92738q = i4 - 1;
        return true;
    }

    /* renamed from: com.tencent.beacon.base.net.b.a.b.b$b */
    /* loaded from: classes10.dex */
    public class b {

        /* renamed from: a */
        a[] f92745a;

        /* renamed from: b */
        int f92746b;

        /* renamed from: c */
        int f92747c;

        /* renamed from: d */
        int f92748d;

        /* renamed from: com.tencent.beacon.base.net.b.a.b.b$b$a */
        /* loaded from: classes10.dex */
        public class a {

            /* renamed from: a */
            short[] f92750a = new short[768];

            public a() {
            }

            /* renamed from: a */
            public void m59199a() {
                C14931c.m59259a(this.f92750a);
            }

            /* renamed from: a */
            public byte m59197a(C14931c c14931c) throws IOException {
                int i = 1;
                do {
                    i = c14931c.m59261a(this.f92750a, i) | (i << 1);
                } while (i < 256);
                return (byte) i;
            }

            /* renamed from: a */
            public byte m59198a(C14931c c14931c, byte b) throws IOException {
                int i = 1;
                while (true) {
                    int i2 = (b >> 7) & 1;
                    b = (byte) (b << 1);
                    int m59261a = c14931c.m59261a(this.f92750a, ((i2 + 1) << 8) + i);
                    i = (i << 1) | m59261a;
                    if (i2 != m59261a) {
                        while (i < 256) {
                            i = (i << 1) | c14931c.m59261a(this.f92750a, i);
                        }
                    } else if (i >= 256) {
                        break;
                    }
                }
                return (byte) i;
            }
        }

        public b() {
        }

        /* renamed from: a */
        public void m59196a(int i, int i2) {
            if (this.f92745a != null && this.f92746b == i2 && this.f92747c == i) {
                return;
            }
            this.f92747c = i;
            this.f92748d = (1 << i) - 1;
            this.f92746b = i2;
            int i3 = 1 << (i2 + i);
            this.f92745a = new a[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                this.f92745a[i4] = new a();
            }
        }

        /* renamed from: a */
        public void m59195a() {
            int i = 1 << (this.f92746b + this.f92747c);
            for (int i2 = 0; i2 < i; i2++) {
                this.f92745a[i2].m59199a();
            }
        }

        /* renamed from: a */
        public a m59194a(int i, byte b) {
            a[] aVarArr = this.f92745a;
            int i2 = i & this.f92748d;
            int i3 = this.f92746b;
            return aVarArr[(i2 << i3) + ((b & 255) >>> (8 - i3))];
        }
    }

    /* renamed from: a */
    public void m59186a() throws IOException {
        this.f92722a.m59176a(false);
        C14931c.m59259a(this.f92724c);
        C14931c.m59259a(this.f92729h);
        C14931c.m59259a(this.f92725d);
        C14931c.m59259a(this.f92726e);
        C14931c.m59259a(this.f92727f);
        C14931c.m59259a(this.f92728g);
        C14931c.m59259a(this.f92731j);
        this.f92735n.m59195a();
        for (int i = 0; i < 4; i++) {
            this.f92730i[i].m59250a();
        }
        this.f92733l.m59192a();
        this.f92734m.m59192a();
        this.f92732k.m59250a();
        this.f92723b.m59262a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0115, code lost:
    
        r17.f92722a.m59171a();
        r17.f92722a.m59178b();
        r17.f92723b.m59264b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0124, code lost:
    
        return true;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b4  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m59189a(java.io.InputStream r18, java.io.OutputStream r19, long r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.base.net.p066b.p067a.p069b.C14927b.m59189a(java.io.InputStream, java.io.OutputStream, long):boolean");
    }

    /* renamed from: a */
    public boolean m59190a(byte[] bArr) {
        if (bArr.length < 5) {
            return false;
        }
        int i = bArr[0] & 255;
        int i2 = i % 9;
        int i3 = i / 9;
        int i4 = i3 % 5;
        int i5 = i3 / 5;
        int i6 = 0;
        int i7 = 0;
        while (i6 < 4) {
            int i8 = i6 + 1;
            i7 += (bArr[i8] & 255) << (i6 * 8);
            i6 = i8;
        }
        if (m59188a(i2, i4, i5)) {
            return m59187a(i7);
        }
        return false;
    }
}
