package net.p110sf.saxon.value;

import java.util.Arrays;
import java.util.StringTokenizer;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class NestedIntegerValue implements Comparable<NestedIntegerValue> {
    public static NestedIntegerValue ONE = new NestedIntegerValue(new int[]{1});
    public static NestedIntegerValue TWO = new NestedIntegerValue(new int[]{2});

    /* renamed from: e */
    public int[] f102903e;

    public NestedIntegerValue(String str) throws XPathException {
        parse(str);
    }

    public static NestedIntegerValue parse(String str) throws XPathException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            try {
                iArr[i] = Integer.parseInt(stringTokenizer.nextToken());
                i++;
            } catch (NumberFormatException unused) {
                throw new XPathException("Nested integer value has incorrect format: " + str);
            }
        }
        return new NestedIntegerValue(iArr);
    }

    public NestedIntegerValue append(int i) {
        int[] iArr = this.f102903e;
        int[] iArr2 = new int[iArr.length + 1];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        iArr2[this.f102903e.length] = i;
        return new NestedIntegerValue(iArr2);
    }

    public boolean equals(Object obj) {
        return (obj instanceof NestedIntegerValue) && Arrays.equals(this.f102903e, ((NestedIntegerValue) obj).f102903e);
    }

    public int getDepth() {
        return this.f102903e.length;
    }

    public int getLeaf() {
        int[] iArr = this.f102903e;
        if (iArr.length == 0) {
            return -1;
        }
        return iArr[iArr.length - 1];
    }

    public NestedIntegerValue getStem() {
        int[] iArr = this.f102903e;
        if (iArr.length == 0) {
            return null;
        }
        int length = iArr.length - 1;
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        return new NestedIntegerValue(iArr2);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f102903e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0023, code lost:
    
        return java.lang.Integer.signum(r1.length - r5.f102903e.length);
     */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compareTo(net.p110sf.saxon.value.NestedIntegerValue r5) {
        /*
            r4 = this;
            r0 = 0
        L1:
            int[] r1 = r4.f102903e
            int r2 = r1.length
            if (r0 >= r2) goto L1a
            int[] r2 = r5.f102903e
            int r3 = r2.length
            if (r0 >= r3) goto L1a
            r1 = r1[r0]
            r2 = r2[r0]
            if (r1 == r2) goto L17
            if (r1 >= r2) goto L15
            r4 = -1
            return r4
        L15:
            r4 = 1
            return r4
        L17:
            int r0 = r0 + 1
            goto L1
        L1a:
            int r4 = r1.length
            int[] r5 = r5.f102903e
            int r5 = r5.length
            int r4 = r4 - r5
            int r4 = java.lang.Integer.signum(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.value.NestedIntegerValue.compareTo(net.sf.saxon.value.NestedIntegerValue):int");
    }

    public NestedIntegerValue(int[] iArr) {
        this.f102903e = iArr;
    }
}
