package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntToIntArrayMap implements IntToIntMap {

    /* renamed from: a */
    public int[] f103043a;

    /* renamed from: b */
    public int[] f103044b;

    /* renamed from: c */
    public int f103045c;

    /* renamed from: d */
    public int f103046d;

    /* renamed from: net.sf.saxon.z.IntToIntArrayMap$a */
    /* loaded from: classes11.dex */
    public static class C18590a implements IntIterator {

        /* renamed from: a */
        public IntToIntArrayMap f103047a;

        /* renamed from: b */
        public int f103048b = 0;

        public C18590a(IntToIntArrayMap intToIntArrayMap) {
            this.f103047a = intToIntArrayMap;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return this.f103048b < this.f103047a.f103045c;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            int[] iArr = this.f103047a.f103043a;
            int i = this.f103048b;
            this.f103048b = i + 1;
            return iArr[i];
        }
    }

    public IntToIntArrayMap() {
        this.f103045c = 0;
        this.f103046d = Integer.MIN_VALUE;
        this.f103043a = new int[8];
        this.f103044b = new int[8];
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public void clear() {
        this.f103045c = 0;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public boolean contains(int i) {
        for (int i2 = 0; i2 < this.f103045c; i2++) {
            if (this.f103043a[i2] == i) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public int get(int i) {
        for (int i2 = 0; i2 < this.f103045c; i2++) {
            if (this.f103043a[i2] == i) {
                return this.f103044b[i2];
            }
        }
        return this.f103046d;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public int getDefaultValue() {
        return this.f103046d;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public IntIterator keyIterator() {
        return new C18590a(this);
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public void put(int i, int i2) {
        int i3 = 0;
        while (true) {
            int i4 = this.f103045c;
            if (i3 >= i4) {
                int[] iArr = this.f103043a;
                if (i4 >= iArr.length) {
                    int[] iArr2 = new int[i4 * 2];
                    System.arraycopy(iArr, 0, iArr2, 0, i4);
                    this.f103043a = iArr2;
                    int i5 = this.f103045c;
                    int[] iArr3 = new int[i5 * 2];
                    System.arraycopy(this.f103044b, 0, iArr3, 0, i5);
                    this.f103044b = iArr3;
                }
                int[] iArr4 = this.f103043a;
                int i6 = this.f103045c;
                iArr4[i6] = i;
                int[] iArr5 = this.f103044b;
                this.f103045c = i6 + 1;
                iArr5[i6] = i2;
                return;
            }
            if (this.f103043a[i3] == i) {
                this.f103044b[i3] = i2;
                return;
            }
            i3++;
        }
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public boolean remove(int i) {
        for (int i2 = 0; i2 < this.f103045c; i2++) {
            if (this.f103043a[i2] == i) {
                this.f103044b[i2] = this.f103046d;
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public void setDefaultValue(int i) {
        this.f103046d = i;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public int size() {
        return this.f103045c;
    }

    public IntToIntArrayMap(int i) {
        this.f103045c = 0;
        this.f103046d = Integer.MIN_VALUE;
        if (i > 0) {
            this.f103043a = new int[i];
            this.f103044b = new int[i];
            return;
        }
        throw new IllegalArgumentException("capacity <= 0");
    }
}
