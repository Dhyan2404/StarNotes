package net.p110sf.saxon.p111z;

import com.onyx.android.sdk.replicator.utils.SyncConstant;

/* loaded from: classes11.dex */
public class IntRangeToIntMap implements IntToIntMap {

    /* renamed from: a */
    public int[] f103028a;

    /* renamed from: b */
    public int[] f103029b;

    /* renamed from: c */
    public int[] f103030c;

    /* renamed from: d */
    public int f103031d;

    /* renamed from: e */
    public int f103032e;

    /* renamed from: f */
    public int f103033f;

    public IntRangeToIntMap(int i) {
        this.f103032e = 0;
        this.f103033f = Integer.MIN_VALUE;
        this.f103028a = new int[i];
        this.f103029b = new int[i];
        this.f103030c = new int[i];
        this.f103031d = 0;
        this.f103032e = 0;
    }

    /* renamed from: a */
    public final void m64724a(int i) {
        int[] iArr = this.f103028a;
        if (iArr.length < i) {
            int[] iArr2 = new int[iArr.length * 2];
            int[] iArr3 = new int[iArr.length * 2];
            int[] iArr4 = new int[iArr.length * 2];
            System.arraycopy(iArr, 0, iArr2, 0, this.f103031d);
            System.arraycopy(this.f103029b, 0, iArr3, 0, this.f103031d);
            System.arraycopy(this.f103030c, 0, iArr4, 0, this.f103031d);
            this.f103028a = iArr2;
            this.f103029b = iArr3;
            this.f103030c = iArr4;
        }
    }

    public void addEntry(int i, int i2, int i3) {
        m64724a(this.f103031d + 1);
        int[] iArr = this.f103028a;
        int i4 = this.f103031d;
        iArr[i4] = i;
        this.f103029b[i4] = i2;
        this.f103030c[i4] = i3;
        this.f103031d = i4 + 1;
        this.f103032e += (i2 - i) + 1;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public void clear() {
        this.f103028a = new int[4];
        this.f103029b = new int[4];
        this.f103030c = new int[4];
        this.f103031d = 0;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public boolean contains(int i) {
        int i2 = this.f103031d;
        if (i2 == 0 || i > this.f103029b[i2 - 1] || i < this.f103028a[0]) {
            return false;
        }
        int i3 = 0;
        do {
            int i4 = ((i2 - i3) / 2) + i3;
            if (this.f103029b[i4] < i) {
                i3 = Math.max(i4, i3 + 1);
            } else {
                if (this.f103028a[i4] <= i) {
                    return true;
                }
                i2 = Math.min(i4, i2 - 1);
            }
        } while (i3 != i2);
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public int get(int i) {
        int i2 = this.f103031d;
        if (i2 != 0 && i <= this.f103029b[i2 - 1]) {
            int i3 = 0;
            if (i < this.f103028a[0]) {
                return getDefaultValue();
            }
            do {
                int i4 = ((i2 - i3) / 2) + i3;
                if (this.f103029b[i4] < i) {
                    i3 = Math.max(i4, i3 + 1);
                } else {
                    if (this.f103028a[i4] <= i) {
                        return this.f103030c[i4];
                    }
                    i2 = Math.min(i4, i2 - 1);
                }
            } while (i3 != i2);
            return getDefaultValue();
        }
        return getDefaultValue();
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public int getDefaultValue() {
        return this.f103033f;
    }

    public int[] getEndPoints() {
        return this.f103029b;
    }

    public int getNumberOfRanges() {
        return this.f103031d;
    }

    public int[] getStartPoints() {
        return this.f103028a;
    }

    public boolean isEmpty() {
        return this.f103032e == 0;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public IntIterator keyIterator() {
        return new IntRangeSet(this.f103028a, this.f103029b).iterator();
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public void put(int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public boolean remove(int i) {
        throw new UnsupportedOperationException(SyncConstant.SYNC_ACTION_REMOVE);
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public void setDefaultValue(int i) {
        this.f103033f = i;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public int size() {
        return this.f103032e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.f103031d * 8);
        for (int i = 0; i < this.f103031d; i++) {
            sb.append(this.f103028a[i]);
            sb.append("-");
            sb.append(this.f103029b[i]);
            sb.append(":");
            sb.append(this.f103030c[i]);
            sb.append(",");
        }
        return sb.toString();
    }

    public IntRangeToIntMap(int[] iArr, int[] iArr2) {
        this.f103032e = 0;
        this.f103033f = Integer.MIN_VALUE;
        if (iArr.length == iArr2.length) {
            this.f103028a = iArr;
            this.f103029b = iArr2;
            this.f103031d = iArr.length;
            for (int i = 0; i < this.f103031d; i++) {
                this.f103032e += (iArr2[i] - iArr[i]) + 1;
            }
            return;
        }
        throw new IllegalArgumentException("Array lengths differ");
    }
}
