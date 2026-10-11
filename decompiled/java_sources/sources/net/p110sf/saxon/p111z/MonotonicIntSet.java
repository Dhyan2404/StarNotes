package net.p110sf.saxon.p111z;

import java.util.Arrays;
import net.p110sf.saxon.p111z.IntArraySet;

/* loaded from: classes11.dex */
public class MonotonicIntSet extends IntSet {

    /* renamed from: a */
    public int[] f103068a;

    /* renamed from: b */
    public int f103069b;

    public MonotonicIntSet() {
        this.f103068a = new int[4];
        this.f103069b = 0;
    }

    public static MonotonicIntSet make(int[] iArr, int i) {
        return new MonotonicIntSet(iArr, i);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean add(int i) {
        int i2 = this.f103069b;
        if (i2 > 0) {
            int i3 = this.f103068a[i2 - 1];
            if (i == i3) {
                return false;
            }
            if (i < i3) {
                throw new UnsupportedOperationException("Values must be added in monotonic order");
            }
        }
        int[] iArr = this.f103068a;
        if (i2 == iArr.length) {
            this.f103068a = Arrays.copyOf(iArr, i2 == 0 ? 4 : i2 * 2);
        }
        int[] iArr2 = this.f103068a;
        int i4 = this.f103069b;
        this.f103069b = i4 + 1;
        iArr2[i4] = i;
        return true;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public void clear() {
        if (this.f103068a.length > this.f103069b + 20) {
            this.f103068a = new int[4];
        }
        this.f103069b = 0;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean contains(int i) {
        return Arrays.binarySearch(this.f103068a, 0, this.f103069b, i) >= 0;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet copy() {
        MonotonicIntSet monotonicIntSet = new MonotonicIntSet();
        monotonicIntSet.f103068a = Arrays.copyOf(this.f103068a, this.f103069b);
        monotonicIntSet.f103069b = this.f103069b;
        return monotonicIntSet;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MonotonicIntSet)) {
            if (obj instanceof IntSet) {
                IntSet intSet = (IntSet) obj;
                if (this.f103069b == intSet.size() && containsAll(intSet)) {
                    return true;
                }
            }
            return false;
        }
        MonotonicIntSet monotonicIntSet = (MonotonicIntSet) obj;
        if (this.f103069b != monotonicIntSet.f103069b) {
            return false;
        }
        for (int i = 0; i < this.f103069b; i++) {
            if (this.f103068a[i] != monotonicIntSet.f103068a[i]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        IntIterator it2 = iterator();
        int i = 936247625;
        while (it2.hasNext()) {
            i += it2.next();
        }
        return i;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isEmpty() {
        return this.f103069b == 0;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isMutable() {
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntIterator iterator() {
        return new IntArraySet.IntArrayIterator(this.f103068a, this.f103069b);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet mutableCopy() {
        return copy();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public int size() {
        return this.f103069b;
    }

    public String toString() {
        int[] iArr;
        StringBuilder sb = new StringBuilder(this.f103069b * 4);
        int i = 0;
        while (true) {
            int i2 = this.f103069b;
            if (i >= i2) {
                return sb.toString();
            }
            if (i == i2 - 1) {
                sb.append(this.f103068a[i]);
            } else {
                int[] iArr2 = this.f103068a;
                int i3 = iArr2[i];
                int i4 = i + 1;
                if (i3 + 1 != iArr2[i4]) {
                    sb.append(i3);
                    sb.append(",");
                }
                do {
                    iArr = this.f103068a;
                    if (iArr[i4] != iArr[i4 - 1] + 1) {
                        break;
                    }
                    i4++;
                } while (i4 != this.f103069b);
                sb.append(iArr[i]);
                sb.append("-");
                sb.append(this.f103068a[i4 - 1]);
                sb.append(",");
                i = i4;
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0070 A[SYNTHETIC] */
    @Override // net.p110sf.saxon.p111z.IntSet
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.p111z.IntSet union(net.p110sf.saxon.p111z.IntSet r9) {
        /*
            r8 = this;
            int r0 = r8.size()
            if (r0 != 0) goto Lb
            net.sf.saxon.z.IntSet r8 = r9.copy()
            return r8
        Lb:
            boolean r0 = r9.isEmpty()
            if (r0 == 0) goto L16
            net.sf.saxon.z.IntSet r8 = r8.copy()
            return r8
        L16:
            net.sf.saxon.z.IntUniversalSet r0 = net.p110sf.saxon.p111z.IntUniversalSet.getInstance()
            if (r9 != r0) goto L1d
            return r9
        L1d:
            boolean r0 = r9 instanceof net.p110sf.saxon.p111z.IntComplementSet
            if (r0 == 0) goto L26
            net.sf.saxon.z.IntSet r8 = r9.union(r8)
            return r8
        L26:
            boolean r0 = r8.equals(r9)
            if (r0 == 0) goto L31
            net.sf.saxon.z.IntSet r8 = r8.copy()
            return r8
        L31:
            boolean r0 = r9 instanceof net.p110sf.saxon.p111z.MonotonicIntSet
            if (r0 == 0) goto L86
            int r0 = r8.size()
            int r1 = r9.size()
            int r0 = r0 + r1
            int[] r0 = new int[r0]
            int[] r1 = r8.f103068a
            net.sf.saxon.z.MonotonicIntSet r9 = (net.p110sf.saxon.p111z.MonotonicIntSet) r9
            int[] r2 = r9.f103068a
            int r3 = r8.f103069b
            int r4 = r9.f103069b
            r8 = 0
            r9 = r8
            r5 = r9
        L4d:
            r6 = r1[r8]
            r7 = r2[r9]
            if (r6 >= r7) goto L5b
            int r7 = r5 + 1
            int r8 = r8 + 1
            r0[r5] = r6
        L59:
            r5 = r7
            goto L6e
        L5b:
            if (r7 >= r6) goto L65
            int r6 = r5 + 1
            int r9 = r9 + 1
            r0[r5] = r7
            r5 = r6
            goto L6e
        L65:
            int r7 = r5 + 1
            int r8 = r8 + 1
            r0[r5] = r6
            int r9 = r9 + 1
            goto L59
        L6e:
            if (r8 != r3) goto L7a
            int r4 = r4 - r9
            java.lang.System.arraycopy(r2, r9, r0, r5, r4)
            int r5 = r5 + r4
            net.sf.saxon.z.MonotonicIntSet r8 = make(r0, r5)
            return r8
        L7a:
            if (r9 != r4) goto L4d
            int r3 = r3 - r8
            java.lang.System.arraycopy(r1, r8, r0, r5, r3)
            int r5 = r5 + r3
            net.sf.saxon.z.MonotonicIntSet r8 = make(r0, r5)
            return r8
        L86:
            net.sf.saxon.z.IntSet r8 = super.union(r9)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.p111z.MonotonicIntSet.union(net.sf.saxon.z.IntSet):net.sf.saxon.z.IntSet");
    }

    public MonotonicIntSet(int[] iArr, int i) {
        this.f103068a = iArr;
        this.f103069b = i;
    }
}
