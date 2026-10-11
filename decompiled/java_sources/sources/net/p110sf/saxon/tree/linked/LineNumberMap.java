package net.p110sf.saxon.tree.linked;

import java.util.Arrays;

/* loaded from: classes11.dex */
public class LineNumberMap {

    /* renamed from: a */
    public int[] f102514a = new int[200];

    /* renamed from: b */
    public int[] f102515b = new int[200];

    /* renamed from: c */
    public int[] f102516c = new int[200];

    /* renamed from: d */
    public int f102517d = 0;

    /* renamed from: a */
    public final synchronized void m64538a() {
        this.f102514a = Arrays.copyOf(this.f102514a, this.f102517d);
        this.f102515b = Arrays.copyOf(this.f102515b, this.f102517d);
        this.f102516c = Arrays.copyOf(this.f102516c, this.f102517d);
    }

    public int getColumnNumber(int i) {
        if (this.f102514a.length > this.f102517d) {
            m64538a();
        }
        int binarySearch = Arrays.binarySearch(this.f102514a, i);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
            int[] iArr = this.f102516c;
            if (binarySearch >= iArr.length) {
                binarySearch = iArr.length - 1;
            }
        }
        return this.f102516c[binarySearch];
    }

    public int getLineNumber(int i) {
        if (this.f102514a.length > this.f102517d) {
            m64538a();
        }
        int binarySearch = Arrays.binarySearch(this.f102514a, i);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
            int[] iArr = this.f102515b;
            if (binarySearch > iArr.length - 1) {
                binarySearch = iArr.length - 1;
            }
        }
        return this.f102515b[binarySearch];
    }

    public void setLineAndColumn(int i, int i2, int i3) {
        int[] iArr = this.f102514a;
        int length = iArr.length;
        int i4 = this.f102517d;
        if (length <= i4 + 1) {
            this.f102514a = Arrays.copyOf(iArr, i4 * 2);
            this.f102515b = Arrays.copyOf(this.f102515b, this.f102517d * 2);
            this.f102516c = Arrays.copyOf(this.f102516c, this.f102517d * 2);
        }
        int[] iArr2 = this.f102514a;
        int i5 = this.f102517d;
        iArr2[i5] = i;
        this.f102515b[i5] = i2;
        this.f102516c[i5] = i3;
        this.f102517d = i5 + 1;
    }
}
