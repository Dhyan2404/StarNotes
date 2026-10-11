package com.google.android.exoplayer2.source.dash.manifest;

import java.util.Locale;

/* loaded from: classes5.dex */
public final class UrlTemplate {

    /* renamed from: e */
    public static final String f25860e = "RepresentationID";

    /* renamed from: f */
    public static final String f25861f = "Number";

    /* renamed from: g */
    public static final String f25862g = "Bandwidth";

    /* renamed from: h */
    public static final String f25863h = "Time";

    /* renamed from: i */
    public static final String f25864i = "$$";

    /* renamed from: j */
    public static final String f25865j = "%01d";

    /* renamed from: k */
    public static final int f25866k = 1;

    /* renamed from: l */
    public static final int f25867l = 2;

    /* renamed from: m */
    public static final int f25868m = 3;

    /* renamed from: n */
    public static final int f25869n = 4;

    /* renamed from: a */
    public final String[] f25870a;

    /* renamed from: b */
    public final int[] f25871b;

    /* renamed from: c */
    public final String[] f25872c;

    /* renamed from: d */
    public final int f25873d;

    public UrlTemplate(String[] strArr, int[] iArr, String[] strArr2, int i) {
        this.f25870a = strArr;
        this.f25871b = iArr;
        this.f25872c = strArr2;
        this.f25873d = i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e8, code lost:
    
        switch(r6) {
            case 0: goto L59;
            case 1: goto L58;
            case 2: goto L57;
            default: goto L70;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0103, code lost:
    
        r13[r3] = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x010d, code lost:
    
        r14[r3] = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0107, code lost:
    
        r13[r3] = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x010b, code lost:
    
        r13[r3] = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f3, code lost:
    
        if (r11.length() == 0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f5, code lost:
    
        r11 = "Invalid template: ".concat(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0102, code lost:
    
        throw new java.lang.IllegalArgumentException(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00fa, code lost:
    
        r11 = new java.lang.String("Invalid template: ");
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m20034a(java.lang.String r11, java.lang.String[] r12, int[] r13, java.lang.String[] r14) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.manifest.UrlTemplate.m20034a(java.lang.String, java.lang.String[], int[], java.lang.String[]):int");
    }

    public static UrlTemplate compile(String str) {
        String[] strArr = new String[5];
        int[] iArr = new int[4];
        String[] strArr2 = new String[4];
        return new UrlTemplate(strArr, iArr, strArr2, m20034a(str, strArr, iArr, strArr2));
    }

    public String buildUri(String str, long j, int i, long j2) {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (true) {
            int i3 = this.f25873d;
            if (i2 >= i3) {
                sb.append(this.f25870a[i3]);
                return sb.toString();
            }
            sb.append(this.f25870a[i2]);
            int i4 = this.f25871b[i2];
            if (i4 == 1) {
                sb.append(str);
            } else if (i4 == 2) {
                sb.append(String.format(Locale.US, this.f25872c[i2], Long.valueOf(j)));
            } else if (i4 == 3) {
                sb.append(String.format(Locale.US, this.f25872c[i2], Integer.valueOf(i)));
            } else if (i4 == 4) {
                sb.append(String.format(Locale.US, this.f25872c[i2], Long.valueOf(j2)));
            }
            i2++;
        }
    }
}
