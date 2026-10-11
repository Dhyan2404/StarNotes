package net.p110sf.saxon.tree.linked;

import java.util.Arrays;

/* loaded from: classes11.dex */
public class SystemIdMap {

    /* renamed from: a */
    public int[] f102541a = new int[4];

    /* renamed from: b */
    public String[] f102542b = new String[4];

    /* renamed from: c */
    public int f102543c = 0;

    public String getSystemId(int i) {
        if (this.f102543c == 0) {
            return null;
        }
        int i2 = 1;
        while (true) {
            int i3 = this.f102543c;
            if (i2 >= i3) {
                return this.f102542b[i3 - 1];
            }
            if (this.f102541a[i2] > i) {
                return this.f102542b[i2 - 1];
            }
            i2++;
        }
    }

    public void setSystemId(int i, String str) {
        int i2 = this.f102543c;
        if (i2 > 0) {
            if (str.equals(this.f102542b[i2 - 1])) {
                return;
            }
            if (i <= this.f102541a[this.f102543c - 1]) {
                throw new IllegalArgumentException("System IDs of nodes are immutable");
            }
        }
        int[] iArr = this.f102541a;
        int length = iArr.length;
        int i3 = this.f102543c;
        if (length <= i3 + 1) {
            this.f102541a = Arrays.copyOf(iArr, i3 * 2);
            this.f102542b = (String[]) Arrays.copyOf(this.f102542b, this.f102543c * 2);
        }
        int[] iArr2 = this.f102541a;
        int i4 = this.f102543c;
        iArr2[i4] = i;
        this.f102542b[i4] = str;
        this.f102543c = i4 + 1;
    }
}
