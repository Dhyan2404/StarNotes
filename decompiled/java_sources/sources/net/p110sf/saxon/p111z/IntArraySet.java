package net.p110sf.saxon.p111z;

import java.util.Arrays;

/* loaded from: classes11.dex */
public class IntArraySet extends IntSet {
    public static final int[] EMPTY_INT_ARRAY = new int[0];

    /* renamed from: a */
    public int[] f102977a;

    /* renamed from: b */
    public int f102978b;

    /* loaded from: classes11.dex */
    public static class IntArrayIterator implements IntIterator {

        /* renamed from: a */
        public final int[] f102979a;

        /* renamed from: b */
        public final int f102980b;

        /* renamed from: c */
        public int f102981c = 0;

        public IntArrayIterator(int[] iArr, int i) {
            this.f102979a = iArr;
            this.f102980b = i;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return this.f102981c < this.f102980b;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            int[] iArr = this.f102979a;
            int i = this.f102981c;
            this.f102981c = i + 1;
            return iArr[i];
        }
    }

    public IntArraySet() {
        this.f102978b = -1;
        this.f102977a = EMPTY_INT_ARRAY;
    }

    public static IntArraySet make(int[] iArr, int i) {
        if (iArr.length != i) {
            int[] iArr2 = new int[i];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            iArr = iArr2;
        }
        return new IntArraySet(iArr);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean add(int i) {
        this.f102978b = -1;
        int[] iArr = this.f102977a;
        if (iArr.length == 0) {
            this.f102977a = new int[]{i};
            return true;
        }
        int binarySearch = Arrays.binarySearch(iArr, i);
        if (binarySearch >= 0) {
            return false;
        }
        int i2 = (-binarySearch) - 1;
        int[] iArr2 = this.f102977a;
        int length = iArr2.length + 1;
        int[] iArr3 = new int[length];
        if (i2 > 0) {
            System.arraycopy(iArr2, 0, iArr3, 0, i2);
        }
        iArr3[i2] = i;
        int[] iArr4 = this.f102977a;
        if (i2 < iArr4.length) {
            System.arraycopy(iArr4, i2, iArr3, i2 + 1, length - i2);
        }
        this.f102977a = iArr3;
        return true;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public void clear() {
        this.f102977a = EMPTY_INT_ARRAY;
        this.f102978b = -1;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean contains(int i) {
        return Arrays.binarySearch(this.f102977a, i) >= 0;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet copy() {
        IntArraySet intArraySet = new IntArraySet();
        int[] iArr = new int[this.f102977a.length];
        intArraySet.f102977a = iArr;
        int[] iArr2 = this.f102977a;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        return intArraySet;
    }

    public boolean equals(Object obj) {
        if (obj instanceof IntArraySet) {
            return hashCode() == obj.hashCode() && Arrays.equals(this.f102977a, ((IntArraySet) obj).f102977a);
        }
        if (obj instanceof IntSet) {
            IntSet intSet = (IntSet) obj;
            if (this.f102977a.length == intSet.size() && containsAll(intSet)) {
                return true;
            }
        }
        return false;
    }

    public int getFirst() {
        return this.f102977a[0];
    }

    public int[] getValues() {
        return this.f102977a;
    }

    public int hashCode() {
        if (this.f102978b == -1) {
            IntIterator it2 = iterator();
            int i = 936247625;
            while (it2.hasNext()) {
                i += it2.next();
            }
            this.f102978b = i;
        }
        return this.f102978b;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isEmpty() {
        return this.f102977a.length == 0;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntIterator iterator() {
        int[] iArr = this.f102977a;
        return new IntArrayIterator(iArr, iArr.length);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet mutableCopy() {
        return copy();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean remove(int i) {
        this.f102978b = -1;
        int binarySearch = Arrays.binarySearch(this.f102977a, i);
        if (binarySearch < 0) {
            return false;
        }
        int[] iArr = this.f102977a;
        int length = iArr.length - 1;
        int[] iArr2 = new int[length];
        if (binarySearch > 0) {
            System.arraycopy(iArr, 0, iArr2, 0, binarySearch);
        }
        if (binarySearch < length) {
            int[] iArr3 = this.f102977a;
            System.arraycopy(iArr3, binarySearch + 1, iArr2, binarySearch, iArr3.length - binarySearch);
        }
        this.f102977a = iArr2;
        return true;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public int size() {
        return this.f102977a.length;
    }

    public String toString() {
        int[] iArr;
        StringBuilder sb = new StringBuilder(this.f102977a.length * 4);
        int i = 0;
        while (true) {
            int[] iArr2 = this.f102977a;
            if (i >= iArr2.length) {
                return sb.toString();
            }
            if (i == iArr2.length - 1) {
                sb.append(this.f102977a[i] + "");
            } else {
                int i2 = i + 1;
                if (iArr2[i] + 1 != iArr2[i2]) {
                    sb.append(this.f102977a[i] + ",");
                }
                do {
                    iArr = this.f102977a;
                    if (iArr[i2] != iArr[i2 - 1] + 1) {
                        break;
                    }
                    i2++;
                } while (i2 != iArr.length);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f102977a[i]);
                sb2.append("-");
                int i3 = i2 - 1;
                sb2.append(this.f102977a[i3]);
                sb2.append(",");
                sb.append(sb2.toString());
                i = i3;
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0078 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006e A[SYNTHETIC] */
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
            boolean r0 = r9 instanceof net.p110sf.saxon.p111z.IntArraySet
            if (r0 == 0) goto L84
            int r0 = r8.size()
            int r1 = r9.size()
            int r0 = r0 + r1
            int[] r0 = new int[r0]
            int[] r1 = r8.f102977a
            net.sf.saxon.z.IntArraySet r9 = (net.p110sf.saxon.p111z.IntArraySet) r9
            int[] r2 = r9.f102977a
            int r3 = r1.length
            int r4 = r2.length
            r8 = 0
            r9 = r8
            r5 = r9
        L4b:
            r6 = r1[r8]
            r7 = r2[r9]
            if (r6 >= r7) goto L59
            int r7 = r5 + 1
            int r8 = r8 + 1
            r0[r5] = r6
        L57:
            r5 = r7
            goto L6c
        L59:
            if (r7 >= r6) goto L63
            int r6 = r5 + 1
            int r9 = r9 + 1
            r0[r5] = r7
            r5 = r6
            goto L6c
        L63:
            int r7 = r5 + 1
            int r8 = r8 + 1
            r0[r5] = r6
            int r9 = r9 + 1
            goto L57
        L6c:
            if (r8 != r3) goto L78
            int r4 = r4 - r9
            java.lang.System.arraycopy(r2, r9, r0, r5, r4)
            int r5 = r5 + r4
            net.sf.saxon.z.IntArraySet r8 = make(r0, r5)
            return r8
        L78:
            if (r9 != r4) goto L4b
            int r3 = r3 - r8
            java.lang.System.arraycopy(r1, r8, r0, r5, r3)
            int r5 = r5 + r3
            net.sf.saxon.z.IntArraySet r8 = make(r0, r5)
            return r8
        L84:
            net.sf.saxon.z.IntSet r8 = super.union(r9)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.p111z.IntArraySet.union(net.sf.saxon.z.IntSet):net.sf.saxon.z.IntSet");
    }

    public IntArraySet(IntHashSet intHashSet) {
        this.f102978b = -1;
        int[] values = intHashSet.getValues();
        this.f102977a = values;
        Arrays.sort(values);
    }

    public IntArraySet(IntArraySet intArraySet) {
        this.f102978b = -1;
        int[] iArr = new int[intArraySet.f102977a.length];
        this.f102977a = iArr;
        System.arraycopy(intArraySet.f102977a, 0, iArr, 0, iArr.length);
    }

    public IntArraySet(int[] iArr) {
        this.f102978b = -1;
        this.f102977a = iArr;
    }
}
