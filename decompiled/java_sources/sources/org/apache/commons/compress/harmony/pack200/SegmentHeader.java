package org.apache.commons.compress.harmony.pack200;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes12.dex */
public class SegmentHeader extends BandSet {

    /* renamed from: K */
    public static final int[] f106772K = {202, 254, 208, 13};

    /* renamed from: L */
    public static final int f106773L = 7;

    /* renamed from: M */
    public static final int f106774M = 150;

    /* renamed from: A */
    public final boolean f106775A;

    /* renamed from: B */
    public final boolean f106776B;

    /* renamed from: C */
    public boolean f106777C;

    /* renamed from: D */
    public boolean f106778D;

    /* renamed from: E */
    public boolean f106779E;

    /* renamed from: F */
    public boolean f106780F;

    /* renamed from: G */
    public boolean f106781G;

    /* renamed from: H */
    public int f106782H;

    /* renamed from: I */
    public int f106783I;

    /* renamed from: J */
    public final C18897b f106784J;

    /* renamed from: e */
    public int f106785e;

    /* renamed from: f */
    public int f106786f;

    /* renamed from: g */
    public int f106787g;

    /* renamed from: h */
    public int f106788h;

    /* renamed from: i */
    public int f106789i;

    /* renamed from: j */
    public int f106790j;

    /* renamed from: k */
    public int f106791k;

    /* renamed from: l */
    public int f106792l;

    /* renamed from: m */
    public int f106793m;

    /* renamed from: n */
    public int f106794n;

    /* renamed from: o */
    public int f106795o;

    /* renamed from: p */
    public int f106796p;

    /* renamed from: q */
    public int f106797q;

    /* renamed from: r */
    public int f106798r;

    /* renamed from: s */
    public final IntList f106799s;

    /* renamed from: t */
    public boolean f106800t;

    /* renamed from: u */
    public int f106801u;

    /* renamed from: v */
    public int f106802v;

    /* renamed from: w */
    public int f106803w;

    /* renamed from: x */
    public int f106804x;

    /* renamed from: y */
    public int f106805y;

    /* renamed from: z */
    public boolean f106806z;

    /* renamed from: org.apache.commons.compress.harmony.pack200.SegmentHeader$b */
    /* loaded from: classes12.dex */
    public class C18897b {

        /* renamed from: a */
        public final int[] f106807a;

        /* renamed from: b */
        public final int[] f106808b;

        /* renamed from: c */
        public int f106809c;

        public C18897b() {
            this.f106807a = new int[8];
            this.f106808b = new int[8];
        }

        /* renamed from: a */
        public void m67010a(int i) {
            int i2;
            int i3 = 0;
            boolean z = false;
            while (true) {
                i2 = this.f106809c;
                if (i3 >= i2) {
                    break;
                }
                if (this.f106807a[i3] == i) {
                    int[] iArr = this.f106808b;
                    iArr[i3] = iArr[i3] + 1;
                    z = true;
                }
                i3++;
            }
            if (z) {
                return;
            }
            int[] iArr2 = this.f106807a;
            iArr2[i2] = i;
            this.f106808b[i2] = 1;
            int i4 = i2 + 1;
            this.f106809c = i4;
            if (i4 > iArr2.length - 1) {
                System.arraycopy(iArr2, 0, new Object[iArr2.length + 8], 0, i4);
            }
        }

        /* renamed from: b */
        public int m67011b() {
            int i = 0;
            for (int i2 = 0; i2 < this.f106809c; i2++) {
                int[] iArr = this.f106808b;
                if (iArr[i2] > iArr[i]) {
                    i = i2;
                }
            }
            return this.f106807a[i];
        }
    }

    public SegmentHeader() {
        super(1, null);
        this.f106799s = new IntList();
        this.f106800t = true;
        this.f106775A = true;
        this.f106776B = true;
        this.f106784J = new C18897b();
    }

    public void addMajorVersion(int i) {
        this.f106784J.m67010a(i);
    }

    public void appendBandCodingSpecifier(int i) {
        this.f106799s.add(i);
    }

    public int getArchive_modtime() {
        return this.f106804x;
    }

    public int getDefaultMajorVersion() {
        return this.f106784J.m67011b();
    }

    public boolean have_all_code_flags() {
        return this.f106800t;
    }

    public boolean have_class_flags_hi() {
        return this.f106778D;
    }

    public boolean have_code_flags_hi() {
        return this.f106781G;
    }

    public boolean have_field_flags_hi() {
        return this.f106779E;
    }

    public boolean have_file_modtime() {
        return true;
    }

    public boolean have_file_options() {
        return true;
    }

    public boolean have_file_size_hi() {
        return this.f106777C;
    }

    public boolean have_method_flags_hi() {
        return this.f106780F;
    }

    /* renamed from: l */
    public final void m67005l() {
        if (this.f106798r > 0 || this.f106799s.size() > 0) {
            this.f106785e |= 1;
        }
        if (this.f106787g > 0 || this.f106788h > 0 || this.f106789i > 0 || this.f106790j > 0) {
            this.f106785e |= 2;
        }
        if (this.f106800t) {
            this.f106785e |= 4;
        }
        if (this.f106805y > 0) {
            this.f106785e |= 16;
        }
        if (this.f106806z) {
            this.f106785e |= 32;
        }
        int i = this.f106785e | 64 | 128;
        this.f106785e = i;
        if (this.f106777C) {
            this.f106785e = i | 256;
        }
        if (this.f106778D) {
            this.f106785e |= 512;
        }
        if (this.f106779E) {
            this.f106785e |= 1024;
        }
        if (this.f106780F) {
            this.f106785e |= 2048;
        }
        if (this.f106781G) {
            this.f106785e |= 4096;
        }
    }

    /* renamed from: m */
    public final void m67006m(OutputStream outputStream) throws IOException, Pack200Exception {
        if ((this.f106785e & 16) > 0) {
            int i = this.f106801u;
            BHSDCodec bHSDCodec = Codec.UNSIGNED5;
            outputStream.write(encodeScalar(i, bHSDCodec));
            outputStream.write(encodeScalar(this.f106802v, bHSDCodec));
            outputStream.write(encodeScalar(this.f106803w, bHSDCodec));
            outputStream.write(encodeScalar(this.f106804x, bHSDCodec));
            outputStream.write(encodeScalar(this.f106805y, bHSDCodec));
        }
    }

    /* renamed from: n */
    public final void m67007n(OutputStream outputStream) throws IOException, Pack200Exception {
        if ((this.f106785e & 1) > 0) {
            int size = this.f106799s.size();
            BHSDCodec bHSDCodec = Codec.UNSIGNED5;
            outputStream.write(encodeScalar(size, bHSDCodec));
            outputStream.write(encodeScalar(this.f106798r, bHSDCodec));
        }
    }

    /* renamed from: o */
    public final void m67008o(OutputStream outputStream) throws IOException, Pack200Exception {
        int m67011b = this.f106784J.m67011b();
        int i = this.f106782H;
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        outputStream.write(encodeScalar(i, bHSDCodec));
        outputStream.write(encodeScalar(0, bHSDCodec));
        outputStream.write(encodeScalar(m67011b, bHSDCodec));
        outputStream.write(encodeScalar(this.f106783I, bHSDCodec));
    }

    /* renamed from: p */
    public final void m67009p(OutputStream outputStream) throws IOException, Pack200Exception {
        int i = this.f106786f;
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        outputStream.write(encodeScalar(i, bHSDCodec));
        if ((this.f106785e & 2) != 0) {
            outputStream.write(encodeScalar(this.f106787g, bHSDCodec));
            outputStream.write(encodeScalar(this.f106788h, bHSDCodec));
            outputStream.write(encodeScalar(this.f106789i, bHSDCodec));
            outputStream.write(encodeScalar(this.f106790j, bHSDCodec));
        }
        outputStream.write(encodeScalar(this.f106791k, bHSDCodec));
        outputStream.write(encodeScalar(this.f106792l, bHSDCodec));
        outputStream.write(encodeScalar(this.f106793m, bHSDCodec));
        outputStream.write(encodeScalar(this.f106794n, bHSDCodec));
        outputStream.write(encodeScalar(this.f106795o, bHSDCodec));
        outputStream.write(encodeScalar(this.f106796p, bHSDCodec));
        outputStream.write(encodeScalar(this.f106797q, bHSDCodec));
    }

    @Override // org.apache.commons.compress.harmony.pack200.BandSet
    public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
        int[] iArr = f106772K;
        BHSDCodec bHSDCodec = Codec.BYTE1;
        outputStream.write(encodeScalar(iArr, bHSDCodec));
        BHSDCodec bHSDCodec2 = Codec.UNSIGNED5;
        outputStream.write(encodeScalar(7, bHSDCodec2));
        outputStream.write(encodeScalar(150, bHSDCodec2));
        m67005l();
        outputStream.write(encodeScalar(this.f106785e, bHSDCodec2));
        m67006m(outputStream);
        m67007n(outputStream);
        m67009p(outputStream);
        m67008o(outputStream);
        if (this.f106799s.size() > 0) {
            outputStream.write(encodeScalar(this.f106799s.toArray(), bHSDCodec));
        }
    }

    public void setAttribute_definition_count(int i) {
        this.f106798r = i;
    }

    public void setClass_count(int i) {
        this.f106783I = i;
    }

    public void setCp_Class_count(int i) {
        this.f106792l = i;
    }

    public void setCp_Descr_count(int i) {
        this.f106794n = i;
    }

    public void setCp_Double_count(int i) {
        this.f106790j = i;
    }

    public void setCp_Field_count(int i) {
        this.f106795o = i;
    }

    public void setCp_Float_count(int i) {
        this.f106788h = i;
    }

    public void setCp_Imethod_count(int i) {
        this.f106797q = i;
    }

    public void setCp_Int_count(int i) {
        this.f106787g = i;
    }

    public void setCp_Long_count(int i) {
        this.f106789i = i;
    }

    public void setCp_Method_count(int i) {
        this.f106796p = i;
    }

    public void setCp_Signature_count(int i) {
        this.f106793m = i;
    }

    public void setCp_String_count(int i) {
        this.f106791k = i;
    }

    public void setCp_Utf8_count(int i) {
        this.f106786f = i;
    }

    public void setDeflate_hint(boolean z) {
        this.f106806z = z;
    }

    public void setFile_count(int i) {
        this.f106805y = i;
    }

    public void setHave_all_code_flags(boolean z) {
        this.f106800t = z;
    }

    public void setHave_class_flags_hi(boolean z) {
        this.f106778D = z;
    }

    public void setHave_code_flags_hi(boolean z) {
        this.f106781G = z;
    }

    public void setHave_field_flags_hi(boolean z) {
        this.f106779E = z;
    }

    public void setHave_method_flags_hi(boolean z) {
        this.f106780F = z;
    }

    public void setIc_count(int i) {
        this.f106782H = i;
    }
}
