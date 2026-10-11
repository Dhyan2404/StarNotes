package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;

/* loaded from: classes4.dex */
public final class Version {

    /* renamed from: h */
    public static final Version[] f38448h = m30550a();

    /* renamed from: a */
    public final int f38449a;

    /* renamed from: b */
    public final int f38450b;

    /* renamed from: c */
    public final int f38451c;

    /* renamed from: d */
    public final int f38452d;

    /* renamed from: e */
    public final int f38453e;

    /* renamed from: f */
    public final C6897c f38454f;

    /* renamed from: g */
    public final int f38455g;

    /* renamed from: com.google.zxing.datamatrix.decoder.Version$b */
    /* loaded from: classes4.dex */
    public static final class C6896b {

        /* renamed from: a */
        public final int f38456a;

        /* renamed from: b */
        public final int f38457b;

        /* renamed from: a */
        public int m30552a() {
            return this.f38456a;
        }

        /* renamed from: b */
        public int m30553b() {
            return this.f38457b;
        }

        public C6896b(int i, int i2) {
            this.f38456a = i;
            this.f38457b = i2;
        }
    }

    public Version(int i, int i2, int i3, int i4, int i5, C6897c c6897c) {
        this.f38449a = i;
        this.f38450b = i2;
        this.f38451c = i3;
        this.f38452d = i4;
        this.f38453e = i5;
        this.f38454f = c6897c;
        int m30555b = c6897c.m30555b();
        int i6 = 0;
        for (C6896b c6896b : c6897c.m30554a()) {
            i6 += c6896b.m30552a() * (c6896b.m30553b() + m30555b);
        }
        this.f38455g = i6;
    }

    /* renamed from: a */
    public static Version[] m30550a() {
        int i = 1;
        int i2 = 5;
        Version version = new Version(1, 10, 10, 8, 8, new C6897c(i2, new C6896b(i, 3)));
        Version version2 = new Version(2, 12, 12, 10, 10, new C6897c(7, new C6896b(i, i2)));
        Version version3 = new Version(3, 14, 14, 12, 12, new C6897c(10, new C6896b(i, 8)));
        int i3 = 12;
        Version version4 = new Version(4, 16, 16, 14, 14, new C6897c(i3, new C6896b(i, i3)));
        int i4 = 18;
        Version version5 = new Version(5, 18, 18, 16, 16, new C6897c(14, new C6896b(i, i4)));
        Version version6 = new Version(6, 20, 20, 18, 18, new C6897c(i4, new C6896b(i, 22)));
        Version version7 = new Version(7, 22, 22, 20, 20, new C6897c(20, new C6896b(i, 30)));
        int i5 = 36;
        Version version8 = new Version(8, 24, 24, 22, 22, new C6897c(24, new C6896b(i, i5)));
        Version version9 = new Version(9, 26, 26, 24, 24, new C6897c(28, new C6896b(i, 44)));
        Version version10 = new Version(10, 32, 32, 14, 14, new C6897c(i5, new C6896b(i, 62)));
        int i6 = 42;
        int i7 = 56;
        int i8 = 2;
        int i9 = 4;
        return new Version[]{version, version2, version3, version4, version5, version6, version7, version8, version9, version10, new Version(11, 36, 36, 16, 16, new C6897c(i6, new C6896b(i, 86))), new Version(12, 40, 40, 18, 18, new C6897c(48, new C6896b(i, 114))), new Version(13, 44, 44, 20, 20, new C6897c(i7, new C6896b(i, 144))), new Version(14, 48, 48, 22, 22, new C6897c(68, new C6896b(i, 174))), new Version(15, 52, 52, 24, 24, new C6897c(i6, new C6896b(i8, 102))), new Version(16, 64, 64, 14, 14, new C6897c(i7, new C6896b(i8, 140))), new Version(17, 72, 72, 16, 16, new C6897c(36, new C6896b(i9, 92))), new Version(18, 80, 80, 18, 18, new C6897c(48, new C6896b(i9, 114))), new Version(19, 88, 88, 20, 20, new C6897c(i7, new C6896b(i9, 144))), new Version(20, 96, 96, 22, 22, new C6897c(68, new C6896b(i9, 174))), new Version(21, 104, 104, 24, 24, new C6897c(i7, new C6896b(6, 136))), new Version(22, 120, 120, 18, 18, new C6897c(68, new C6896b(6, 175))), new Version(23, 132, 132, 20, 20, new C6897c(62, new C6896b(8, 163))), new Version(24, 144, 144, 22, 22, new C6897c(62, new C6896b(8, 156), new C6896b(i8, 155))), new Version(25, 8, 18, 6, 16, new C6897c(7, new C6896b(1, 5))), new Version(26, 8, 32, 6, 14, new C6897c(11, new C6896b(1, 10))), new Version(27, 12, 26, 10, 24, new C6897c(14, new C6896b(1, 16))), new Version(28, 12, 36, 10, 16, new C6897c(18, new C6896b(1, 22))), new Version(29, 16, 36, 14, 16, new C6897c(24, new C6896b(1, 32))), new Version(30, 16, 48, 14, 22, new C6897c(28, new C6896b(1, 49)))};
    }

    public static Version getVersionForDimensions(int i, int i2) throws FormatException {
        if ((i & 1) != 0 || (i2 & 1) != 0) {
            throw FormatException.getFormatInstance();
        }
        for (Version version : f38448h) {
            if (version.f38450b == i && version.f38451c == i2) {
                return version;
            }
        }
        throw FormatException.getFormatInstance();
    }

    /* renamed from: b */
    public C6897c m30551b() {
        return this.f38454f;
    }

    public int getDataRegionSizeColumns() {
        return this.f38453e;
    }

    public int getDataRegionSizeRows() {
        return this.f38452d;
    }

    public int getSymbolSizeColumns() {
        return this.f38451c;
    }

    public int getSymbolSizeRows() {
        return this.f38450b;
    }

    public int getTotalCodewords() {
        return this.f38455g;
    }

    public int getVersionNumber() {
        return this.f38449a;
    }

    public String toString() {
        return String.valueOf(this.f38449a);
    }

    /* renamed from: com.google.zxing.datamatrix.decoder.Version$c */
    /* loaded from: classes4.dex */
    public static final class C6897c {

        /* renamed from: a */
        public final int f38458a;

        /* renamed from: b */
        public final C6896b[] f38459b;

        /* renamed from: a */
        public C6896b[] m30554a() {
            return this.f38459b;
        }

        /* renamed from: b */
        public int m30555b() {
            return this.f38458a;
        }

        public C6897c(int i, C6896b c6896b) {
            this.f38458a = i;
            this.f38459b = new C6896b[]{c6896b};
        }

        public C6897c(int i, C6896b c6896b, C6896b c6896b2) {
            this.f38458a = i;
            this.f38459b = new C6896b[]{c6896b, c6896b2};
        }
    }
}
