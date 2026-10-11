package org.apache.commons.compress.archivers.arj;

import java.util.Arrays;
import org.apache.commons.collections4.IteratorUtils;

/* renamed from: org.apache.commons.compress.archivers.arj.b */
/* loaded from: classes12.dex */
public class C18827b {

    /* renamed from: a */
    public int f105446a;

    /* renamed from: b */
    public int f105447b;

    /* renamed from: c */
    public int f105448c;

    /* renamed from: d */
    public int f105449d;

    /* renamed from: e */
    public int f105450e;

    /* renamed from: f */
    public int f105451f;

    /* renamed from: g */
    public int f105452g;

    /* renamed from: h */
    public int f105453h;

    /* renamed from: i */
    public int f105454i;

    /* renamed from: j */
    public long f105455j;

    /* renamed from: k */
    public int f105456k;

    /* renamed from: l */
    public int f105457l;

    /* renamed from: m */
    public int f105458m;

    /* renamed from: n */
    public int f105459n;

    /* renamed from: o */
    public int f105460o;

    /* renamed from: p */
    public int f105461p;

    /* renamed from: q */
    public int f105462q;

    /* renamed from: r */
    public String f105463r;

    /* renamed from: s */
    public String f105464s;

    /* renamed from: t */
    public byte[] f105465t;

    /* renamed from: org.apache.commons.compress.archivers.arj.b$a */
    /* loaded from: classes12.dex */
    public static class a {

        /* renamed from: a */
        public static final int f105466a = 1;

        /* renamed from: b */
        public static final int f105467b = 2;

        /* renamed from: c */
        public static final int f105468c = 4;

        /* renamed from: d */
        public static final int f105469d = 8;

        /* renamed from: e */
        public static final int f105470e = 16;

        /* renamed from: f */
        public static final int f105471f = 32;

        /* renamed from: g */
        public static final int f105472g = 64;

        /* renamed from: h */
        public static final int f105473h = 128;
    }

    /* renamed from: org.apache.commons.compress.archivers.arj.b$b */
    /* loaded from: classes12.dex */
    public static class b {

        /* renamed from: a */
        public static final int f105474a = 0;

        /* renamed from: b */
        public static final int f105475b = 1;

        /* renamed from: c */
        public static final int f105476c = 2;

        /* renamed from: d */
        public static final int f105477d = 3;

        /* renamed from: e */
        public static final int f105478e = 4;

        /* renamed from: f */
        public static final int f105479f = 5;

        /* renamed from: g */
        public static final int f105480g = 6;

        /* renamed from: h */
        public static final int f105481h = 7;

        /* renamed from: i */
        public static final int f105482i = 8;

        /* renamed from: j */
        public static final int f105483j = 9;

        /* renamed from: k */
        public static final int f105484k = 10;

        /* renamed from: l */
        public static final int f105485l = 11;
    }

    public String toString() {
        return "MainHeader [archiverVersionNumber=" + this.f105446a + ", minVersionToExtract=" + this.f105447b + ", hostOS=" + this.f105448c + ", arjFlags=" + this.f105449d + ", securityVersion=" + this.f105450e + ", fileType=" + this.f105451f + ", reserved=" + this.f105452g + ", dateTimeCreated=" + this.f105453h + ", dateTimeModified=" + this.f105454i + ", archiveSize=" + this.f105455j + ", securityEnvelopeFilePosition=" + this.f105456k + ", fileSpecPosition=" + this.f105457l + ", securityEnvelopeLength=" + this.f105458m + ", encryptionVersion=" + this.f105459n + ", lastChapter=" + this.f105460o + ", arjProtectionFactor=" + this.f105461p + ", arjFlags2=" + this.f105462q + ", name=" + this.f105463r + ", comment=" + this.f105464s + ", extendedHeaderBytes=" + Arrays.toString(this.f105465t) + IteratorUtils.f104924b;
    }
}
