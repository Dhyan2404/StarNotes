package org.apache.commons.compress.archivers.arj;

import java.util.Arrays;
import java.util.Objects;
import org.apache.commons.collections4.IteratorUtils;

/* renamed from: org.apache.commons.compress.archivers.arj.a */
/* loaded from: classes12.dex */
public class C18826a {

    /* renamed from: a */
    public int f105406a;

    /* renamed from: b */
    public int f105407b;

    /* renamed from: c */
    public int f105408c;

    /* renamed from: d */
    public int f105409d;

    /* renamed from: e */
    public int f105410e;

    /* renamed from: f */
    public int f105411f;

    /* renamed from: g */
    public int f105412g;

    /* renamed from: h */
    public int f105413h;

    /* renamed from: i */
    public long f105414i;

    /* renamed from: j */
    public long f105415j;

    /* renamed from: k */
    public long f105416k;

    /* renamed from: l */
    public int f105417l;

    /* renamed from: m */
    public int f105418m;

    /* renamed from: n */
    public int f105419n;

    /* renamed from: o */
    public int f105420o;

    /* renamed from: p */
    public int f105421p;

    /* renamed from: q */
    public int f105422q;

    /* renamed from: r */
    public int f105423r;

    /* renamed from: s */
    public int f105424s;

    /* renamed from: t */
    public String f105425t;

    /* renamed from: u */
    public String f105426u;

    /* renamed from: v */
    public byte[][] f105427v;

    /* renamed from: org.apache.commons.compress.archivers.arj.a$a */
    /* loaded from: classes12.dex */
    public static class a {

        /* renamed from: a */
        public static final int f105428a = 0;

        /* renamed from: b */
        public static final int f105429b = 1;

        /* renamed from: c */
        public static final int f105430c = 2;

        /* renamed from: d */
        public static final int f105431d = 3;

        /* renamed from: e */
        public static final int f105432e = 4;

        /* renamed from: f */
        public static final int f105433f = 5;
    }

    /* renamed from: org.apache.commons.compress.archivers.arj.a$b */
    /* loaded from: classes12.dex */
    public static class b {

        /* renamed from: a */
        public static final int f105434a = 1;

        /* renamed from: b */
        public static final int f105435b = 4;

        /* renamed from: c */
        public static final int f105436c = 8;

        /* renamed from: d */
        public static final int f105437d = 16;

        /* renamed from: e */
        public static final int f105438e = 32;
    }

    /* renamed from: org.apache.commons.compress.archivers.arj.a$c */
    /* loaded from: classes12.dex */
    public static class c {

        /* renamed from: a */
        public static final int f105439a = 0;

        /* renamed from: b */
        public static final int f105440b = 1;

        /* renamed from: c */
        public static final int f105441c = 2;

        /* renamed from: d */
        public static final int f105442d = 3;

        /* renamed from: e */
        public static final int f105443e = 4;

        /* renamed from: f */
        public static final int f105444f = 8;

        /* renamed from: g */
        public static final int f105445g = 9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C18826a c18826a = (C18826a) obj;
        return this.f105406a == c18826a.f105406a && this.f105407b == c18826a.f105407b && this.f105408c == c18826a.f105408c && this.f105409d == c18826a.f105409d && this.f105410e == c18826a.f105410e && this.f105411f == c18826a.f105411f && this.f105412g == c18826a.f105412g && this.f105413h == c18826a.f105413h && this.f105414i == c18826a.f105414i && this.f105415j == c18826a.f105415j && this.f105416k == c18826a.f105416k && this.f105417l == c18826a.f105417l && this.f105418m == c18826a.f105418m && this.f105419n == c18826a.f105419n && this.f105420o == c18826a.f105420o && this.f105421p == c18826a.f105421p && this.f105422q == c18826a.f105422q && this.f105423r == c18826a.f105423r && this.f105424s == c18826a.f105424s && Objects.equals(this.f105425t, c18826a.f105425t) && Objects.equals(this.f105426u, c18826a.f105426u) && Arrays.deepEquals(this.f105427v, c18826a.f105427v);
    }

    public int hashCode() {
        String str = this.f105425t;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "LocalFileHeader [archiverVersionNumber=" + this.f105406a + ", minVersionToExtract=" + this.f105407b + ", hostOS=" + this.f105408c + ", arjFlags=" + this.f105409d + ", method=" + this.f105410e + ", fileType=" + this.f105411f + ", reserved=" + this.f105412g + ", dateTimeModified=" + this.f105413h + ", compressedSize=" + this.f105414i + ", originalSize=" + this.f105415j + ", originalCrc32=" + this.f105416k + ", fileSpecPosition=" + this.f105417l + ", fileAccessMode=" + this.f105418m + ", firstChapter=" + this.f105419n + ", lastChapter=" + this.f105420o + ", extendedFilePosition=" + this.f105421p + ", dateTimeAccessed=" + this.f105422q + ", dateTimeCreated=" + this.f105423r + ", originalSizeEvenForVolumes=" + this.f105424s + ", name=" + this.f105425t + ", comment=" + this.f105426u + ", extendedHeaders=" + Arrays.toString(this.f105427v) + IteratorUtils.f104924b;
    }
}
