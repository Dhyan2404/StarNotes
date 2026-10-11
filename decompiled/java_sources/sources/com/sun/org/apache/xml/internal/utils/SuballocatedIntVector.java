package com.sun.org.apache.xml.internal.utils;

/* loaded from: classes10.dex */
public class SuballocatedIntVector {
    protected static final int NUMBLOCKS_DEFAULT = 32;
    protected int m_MASK;
    protected int m_SHIFT;
    protected int m_blocksize;
    protected int[] m_buildCache;
    protected int m_buildCacheStartIndex;
    protected int m_firstFree;
    protected int[][] m_map;
    protected int[] m_map0;
    protected int m_numblocks;

    public SuballocatedIntVector() {
        this(2048);
    }

    private void addElements(int i, int i2) {
        int i3 = this.m_firstFree;
        if (i3 + i2 < this.m_blocksize) {
            for (int i4 = 0; i4 < i2; i4++) {
                int[] iArr = this.m_map0;
                int i5 = this.m_firstFree;
                this.m_firstFree = i5 + 1;
                iArr[i5] = i;
            }
            return;
        }
        int i6 = i3 >>> this.m_SHIFT;
        int i7 = this.m_MASK & i3;
        this.m_firstFree = i3 + i2;
        while (i2 > 0) {
            int[][] iArr2 = this.m_map;
            if (i6 >= iArr2.length) {
                int[][] iArr3 = new int[this.m_numblocks + i6];
                System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
                this.m_map = iArr3;
            }
            int[][] iArr4 = this.m_map;
            int[] iArr5 = iArr4[i6];
            if (iArr5 == null) {
                iArr5 = new int[this.m_blocksize];
                iArr4[i6] = iArr5;
            }
            int i8 = this.m_blocksize;
            int i9 = i8 - i7 < i2 ? i8 - i7 : i2;
            i2 -= i9;
            while (true) {
                int i10 = i9 - 1;
                if (i9 > 0) {
                    iArr5[i7] = i;
                    i7++;
                    i9 = i10;
                }
            }
            i6++;
            i7 = 0;
        }
    }

    private boolean contains(int i) {
        return indexOf(i, 0) >= 0;
    }

    private void insertElementAt(int i, int i2) {
        int i3;
        int i4 = this.m_firstFree;
        if (i2 == i4) {
            addElement(i);
            return;
        }
        if (i2 > i4) {
            int i5 = i2 >>> this.m_SHIFT;
            int[][] iArr = this.m_map;
            if (i5 >= iArr.length) {
                int[][] iArr2 = new int[this.m_numblocks + i5];
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                this.m_map = iArr2;
            }
            int[][] iArr3 = this.m_map;
            int[] iArr4 = iArr3[i5];
            if (iArr4 == null) {
                iArr4 = new int[this.m_blocksize];
                iArr3[i5] = iArr4;
            }
            int i6 = i2 & this.m_MASK;
            iArr4[i6] = i;
            this.m_firstFree = i6 + 1;
            return;
        }
        int i7 = this.m_SHIFT;
        int i8 = i2 >>> i7;
        int i9 = i4 >>> i7;
        this.m_firstFree = i4 + 1;
        int i10 = i2 & this.m_MASK;
        while (i8 <= i9) {
            int i11 = this.m_blocksize;
            int i12 = (i11 - i10) - 1;
            int[][] iArr5 = this.m_map;
            int[] iArr6 = iArr5[i8];
            if (iArr6 == null) {
                iArr6 = new int[i11];
                iArr5[i8] = iArr6;
                i3 = 0;
            } else {
                i3 = iArr6[i11 - 1];
                System.arraycopy(iArr6, i10, iArr6, i10 + 1, i12);
            }
            iArr6[i10] = i;
            i8++;
            i = i3;
            i10 = 0;
        }
    }

    private int lastIndexOf(int i) {
        int i2 = this.m_firstFree;
        int i3 = this.m_MASK & i2;
        int i4 = i2 >>> this.m_SHIFT;
        while (i4 >= 0) {
            int[] iArr = this.m_map[i4];
            if (iArr != null) {
                while (i3 >= 0) {
                    if (iArr[i3] == i) {
                        return i3 + (i4 * this.m_blocksize);
                    }
                    i3--;
                }
            }
            i4--;
            i3 = 0;
        }
        return -1;
    }

    private boolean removeElement(int i) {
        int indexOf = indexOf(i, 0);
        if (indexOf < 0) {
            return false;
        }
        removeElementAt(indexOf);
        return true;
    }

    private void removeElementAt(int i) {
        int i2 = this.m_firstFree;
        if (i < i2) {
            int i3 = this.m_SHIFT;
            int i4 = i2 >>> i3;
            int i5 = i & this.m_MASK;
            for (int i6 = i >>> i3; i6 <= i4; i6++) {
                int i7 = this.m_blocksize;
                int i8 = (i7 - i5) - 1;
                int[][] iArr = this.m_map;
                int[] iArr2 = iArr[i6];
                if (iArr2 == null) {
                    iArr2 = new int[i7];
                    iArr[i6] = iArr2;
                } else {
                    System.arraycopy(iArr2, i5 + 1, iArr2, i5, i8);
                }
                i5 = 0;
                if (i6 < i4) {
                    int[] iArr3 = this.m_map[i6 + 1];
                    if (iArr3 != null) {
                        iArr2[this.m_blocksize - 1] = iArr3[0];
                    }
                } else {
                    iArr2[this.m_blocksize - 1] = 0;
                }
            }
        }
        this.m_firstFree--;
    }

    public void addElement(int i) {
        int i2 = this.m_firstFree;
        int i3 = i2 - this.m_buildCacheStartIndex;
        if (i3 >= 0 && i3 < this.m_blocksize) {
            this.m_buildCache[i3] = i;
            this.m_firstFree = i2 + 1;
            return;
        }
        int i4 = i2 >>> this.m_SHIFT;
        int i5 = i2 & this.m_MASK;
        int[][] iArr = this.m_map;
        if (i4 >= iArr.length) {
            int[][] iArr2 = new int[this.m_numblocks + i4];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.m_map = iArr2;
        }
        int[][] iArr3 = this.m_map;
        int[] iArr4 = iArr3[i4];
        if (iArr4 == null) {
            iArr4 = new int[this.m_blocksize];
            iArr3[i4] = iArr4;
        }
        iArr4[i5] = i;
        this.m_buildCache = iArr4;
        int i6 = this.m_firstFree;
        this.m_buildCacheStartIndex = i6 - i5;
        this.m_firstFree = i6 + 1;
    }

    public int elementAt(int i) {
        return i < this.m_blocksize ? this.m_map0[i] : this.m_map[i >>> this.m_SHIFT][this.m_MASK & i];
    }

    public final int[][] getMap() {
        return this.m_map;
    }

    public final int[] getMap0() {
        return this.m_map0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int indexOf(int r7, int r8) {
        /*
            r6 = this;
            int r0 = r6.m_firstFree
            r1 = -1
            if (r8 < r0) goto L6
            return r1
        L6:
            int r2 = r6.m_SHIFT
            int r3 = r8 >>> r2
            int r4 = r6.m_MASK
            r8 = r8 & r4
            int r0 = r0 >>> r2
        Le:
            if (r3 >= r0) goto L28
            int[][] r2 = r6.m_map
            r2 = r2[r3]
            if (r2 == 0) goto L24
        L16:
            int r4 = r6.m_blocksize
            if (r8 >= r4) goto L24
            r5 = r2[r8]
            if (r5 != r7) goto L21
            int r3 = r3 * r4
            int r8 = r8 + r3
            return r8
        L21:
            int r8 = r8 + 1
            goto L16
        L24:
            int r3 = r3 + 1
            r8 = 0
            goto Le
        L28:
            int r2 = r6.m_firstFree
            int r3 = r6.m_MASK
            r2 = r2 & r3
            int[][] r3 = r6.m_map
            r3 = r3[r0]
        L31:
            if (r8 >= r2) goto L3f
            r4 = r3[r8]
            if (r4 != r7) goto L3c
            int r6 = r6.m_blocksize
            int r0 = r0 * r6
            int r8 = r8 + r0
            return r8
        L3c:
            int r8 = r8 + 1
            goto L31
        L3f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.utils.SuballocatedIntVector.indexOf(int, int):int");
    }

    public void removeAllElements() {
        this.m_firstFree = 0;
        this.m_buildCache = this.m_map0;
        this.m_buildCacheStartIndex = 0;
    }

    public void setElementAt(int i, int i2) {
        if (i2 < this.m_blocksize) {
            this.m_map0[i2] = i;
        } else {
            int i3 = i2 >>> this.m_SHIFT;
            int i4 = this.m_MASK & i2;
            int[][] iArr = this.m_map;
            if (i3 >= iArr.length) {
                int[][] iArr2 = new int[this.m_numblocks + i3];
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                this.m_map = iArr2;
            }
            int[][] iArr3 = this.m_map;
            int[] iArr4 = iArr3[i3];
            if (iArr4 == null) {
                iArr4 = new int[this.m_blocksize];
                iArr3[i3] = iArr4;
            }
            iArr4[i4] = i;
        }
        if (i2 >= this.m_firstFree) {
            this.m_firstFree = i2 + 1;
        }
    }

    public void setSize(int i) {
        if (this.m_firstFree > i) {
            this.m_firstFree = i;
        }
    }

    public int size() {
        return this.m_firstFree;
    }

    public SuballocatedIntVector(int i, int i2) {
        this.m_numblocks = 32;
        this.m_firstFree = 0;
        this.m_SHIFT = 0;
        while (true) {
            i >>>= 1;
            if (i == 0) {
                int i3 = 1 << this.m_SHIFT;
                this.m_blocksize = i3;
                this.m_MASK = i3 - 1;
                this.m_numblocks = i2;
                int[] iArr = new int[i3];
                this.m_map0 = iArr;
                int[][] iArr2 = new int[i2];
                this.m_map = iArr2;
                iArr2[0] = iArr;
                this.m_buildCache = iArr;
                this.m_buildCacheStartIndex = 0;
                return;
            }
            this.m_SHIFT++;
        }
    }

    public int indexOf(int i) {
        return indexOf(i, 0);
    }

    public SuballocatedIntVector(int i) {
        this(i, 32);
    }

    private void addElements(int i) {
        int i2 = this.m_firstFree;
        int i3 = i2 + i;
        if (i3 > this.m_blocksize) {
            int i4 = this.m_SHIFT;
            int i5 = i2 >>> i4;
            int i6 = (i2 + i) >>> i4;
            while (true) {
                i5++;
                if (i5 > i6) {
                    break;
                } else {
                    this.m_map[i5] = new int[this.m_blocksize];
                }
            }
        }
        this.m_firstFree = i3;
    }
}
