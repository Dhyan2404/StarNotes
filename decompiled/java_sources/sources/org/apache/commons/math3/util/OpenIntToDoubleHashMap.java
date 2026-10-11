package org.apache.commons.math3.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;

/* loaded from: classes12.dex */
public class OpenIntToDoubleHashMap implements Serializable {
    private static final int DEFAULT_EXPECTED_SIZE = 16;
    protected static final byte FREE = 0;
    protected static final byte FULL = 1;
    private static final float LOAD_FACTOR = 0.5f;
    private static final int PERTURB_SHIFT = 5;
    protected static final byte REMOVED = 2;
    private static final int RESIZE_MULTIPLIER = 2;
    private static final long serialVersionUID = -3646337053166149105L;
    private transient int count;
    private int[] keys;
    private int mask;
    private final double missingEntries;
    private int size;
    private byte[] states;
    private double[] values;

    /* loaded from: classes12.dex */
    public class Iterator {

        /* renamed from: a */
        public final int f109923a;

        /* renamed from: b */
        public int f109924b;

        /* renamed from: c */
        public int f109925c;

        public void advance() throws ConcurrentModificationException, NoSuchElementException {
            byte[] bArr;
            int i;
            if (this.f109923a != OpenIntToDoubleHashMap.this.count) {
                throw new ConcurrentModificationException();
            }
            this.f109924b = this.f109925c;
            do {
                try {
                    bArr = OpenIntToDoubleHashMap.this.states;
                    i = this.f109925c + 1;
                    this.f109925c = i;
                } catch (ArrayIndexOutOfBoundsException unused) {
                    this.f109925c = -2;
                    if (this.f109924b < 0) {
                        throw new NoSuchElementException();
                    }
                    return;
                }
            } while (bArr[i] != 1);
        }

        public boolean hasNext() {
            return this.f109925c >= 0;
        }

        public int key() throws ConcurrentModificationException, NoSuchElementException {
            if (this.f109923a != OpenIntToDoubleHashMap.this.count) {
                throw new ConcurrentModificationException();
            }
            if (this.f109924b >= 0) {
                return OpenIntToDoubleHashMap.this.keys[this.f109924b];
            }
            throw new NoSuchElementException();
        }

        public double value() throws ConcurrentModificationException, NoSuchElementException {
            if (this.f109923a != OpenIntToDoubleHashMap.this.count) {
                throw new ConcurrentModificationException();
            }
            if (this.f109924b >= 0) {
                return OpenIntToDoubleHashMap.this.values[this.f109924b];
            }
            throw new NoSuchElementException();
        }

        public Iterator() {
            this.f109923a = OpenIntToDoubleHashMap.this.count;
            this.f109925c = -1;
            try {
                advance();
            } catch (NoSuchElementException unused) {
            }
        }
    }

    public OpenIntToDoubleHashMap() {
        this(16, Double.NaN);
    }

    private static int changeIndexSign(int i) {
        return (-i) - 1;
    }

    private static int computeCapacity(int i) {
        if (i == 0) {
            return 1;
        }
        int ceil = (int) FastMath.ceil(i / 0.5f);
        return Integer.highestOneBit(ceil) == ceil ? ceil : nextPowerOfTwo(ceil);
    }

    private double doRemove(int i) {
        this.keys[i] = 0;
        this.states[i] = 2;
        double[] dArr = this.values;
        double d = dArr[i];
        dArr[i] = this.missingEntries;
        this.size--;
        this.count++;
        return d;
    }

    private int findInsertionIndex(int i) {
        return findInsertionIndex(this.keys, this.states, i, this.mask);
    }

    private void growTable() {
        byte[] bArr = this.states;
        int length = bArr.length;
        int[] iArr = this.keys;
        double[] dArr = this.values;
        int i = length * 2;
        int[] iArr2 = new int[i];
        double[] dArr2 = new double[i];
        byte[] bArr2 = new byte[i];
        int i2 = i - 1;
        for (int i3 = 0; i3 < length; i3++) {
            if (bArr[i3] == 1) {
                int i4 = iArr[i3];
                int findInsertionIndex = findInsertionIndex(iArr2, bArr2, i4, i2);
                iArr2[findInsertionIndex] = i4;
                dArr2[findInsertionIndex] = dArr[i3];
                bArr2[findInsertionIndex] = 1;
            }
        }
        this.mask = i2;
        this.keys = iArr2;
        this.values = dArr2;
        this.states = bArr2;
    }

    private static int hashOf(int i) {
        int i2 = i ^ ((i >>> 20) ^ (i >>> 12));
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    private static int nextPowerOfTwo(int i) {
        return Integer.highestOneBit(i) << 1;
    }

    private static int perturb(int i) {
        return i & Integer.MAX_VALUE;
    }

    private static int probe(int i, int i2) {
        return (i2 << 2) + i2 + i + 1;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.count = 0;
    }

    private boolean shouldGrowTable() {
        return ((float) this.size) > ((float) (this.mask + 1)) * 0.5f;
    }

    public boolean containsKey(int i) {
        int hashOf = hashOf(i);
        int i2 = this.mask & hashOf;
        if (containsKey(i, i2)) {
            return true;
        }
        if (this.states[i2] == 0) {
            return false;
        }
        int perturb = perturb(hashOf);
        int i3 = i2;
        while (this.states[i2] != 0) {
            i3 = probe(perturb, i3);
            i2 = this.mask & i3;
            if (containsKey(i, i2)) {
                return true;
            }
            perturb >>= 5;
        }
        return false;
    }

    public double get(int i) {
        int hashOf = hashOf(i);
        int i2 = this.mask & hashOf;
        if (containsKey(i, i2)) {
            return this.values[i2];
        }
        if (this.states[i2] == 0) {
            return this.missingEntries;
        }
        int perturb = perturb(hashOf);
        int i3 = i2;
        while (this.states[i2] != 0) {
            i3 = probe(perturb, i3);
            i2 = this.mask & i3;
            if (containsKey(i, i2)) {
                return this.values[i2];
            }
            perturb >>= 5;
        }
        return this.missingEntries;
    }

    public Iterator iterator() {
        return new Iterator();
    }

    public double put(int i, double d) {
        boolean z;
        int findInsertionIndex = findInsertionIndex(i);
        double d2 = this.missingEntries;
        if (findInsertionIndex < 0) {
            findInsertionIndex = changeIndexSign(findInsertionIndex);
            d2 = this.values[findInsertionIndex];
            z = false;
        } else {
            z = true;
        }
        this.keys[findInsertionIndex] = i;
        this.states[findInsertionIndex] = 1;
        this.values[findInsertionIndex] = d;
        if (z) {
            this.size++;
            if (shouldGrowTable()) {
                growTable();
            }
            this.count++;
        }
        return d2;
    }

    public double remove(int i) {
        int hashOf = hashOf(i);
        int i2 = this.mask & hashOf;
        if (containsKey(i, i2)) {
            return doRemove(i2);
        }
        if (this.states[i2] == 0) {
            return this.missingEntries;
        }
        int perturb = perturb(hashOf);
        int i3 = i2;
        while (this.states[i2] != 0) {
            i3 = probe(perturb, i3);
            i2 = this.mask & i3;
            if (containsKey(i, i2)) {
                return doRemove(i2);
            }
            perturb >>= 5;
        }
        return this.missingEntries;
    }

    public int size() {
        return this.size;
    }

    public OpenIntToDoubleHashMap(double d) {
        this(16, d);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0038 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int findInsertionIndex(int[] r7, byte[] r8, int r9, int r10) {
        /*
            int r0 = hashOf(r9)
            r1 = r0 & r10
            r2 = r8[r1]
            if (r2 != 0) goto Lb
            return r1
        Lb:
            r3 = 1
            if (r2 != r3) goto L17
            r2 = r7[r1]
            if (r2 != r9) goto L17
            int r7 = changeIndexSign(r1)
            return r7
        L17:
            int r0 = perturb(r0)
            r2 = r8[r1]
            if (r2 != r3) goto L33
        L1f:
            int r1 = probe(r0, r1)
            r2 = r1 & r10
            int r0 = r0 >> 5
            r4 = r8[r2]
            if (r4 != r3) goto L2f
            r4 = r7[r2]
            if (r4 != r9) goto L1f
        L2f:
            r6 = r2
            r2 = r1
            r1 = r6
            goto L34
        L33:
            r2 = r1
        L34:
            r4 = r8[r1]
            if (r4 != 0) goto L39
            return r1
        L39:
            if (r4 != r3) goto L40
            int r7 = changeIndexSign(r1)
            return r7
        L40:
            int r2 = probe(r0, r2)
            r4 = r2 & r10
            r5 = r8[r4]
            if (r5 != 0) goto L4b
            return r1
        L4b:
            if (r5 != r3) goto L56
            r5 = r7[r4]
            if (r5 != r9) goto L56
            int r7 = changeIndexSign(r4)
            return r7
        L56:
            int r0 = r0 >> 5
            goto L40
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.util.OpenIntToDoubleHashMap.findInsertionIndex(int[], byte[], int, int):int");
    }

    public OpenIntToDoubleHashMap(int i) {
        this(i, Double.NaN);
    }

    public OpenIntToDoubleHashMap(int i, double d) {
        int computeCapacity = computeCapacity(i);
        this.keys = new int[computeCapacity];
        this.values = new double[computeCapacity];
        this.states = new byte[computeCapacity];
        this.missingEntries = d;
        this.mask = computeCapacity - 1;
    }

    private boolean containsKey(int i, int i2) {
        return (i != 0 || this.states[i2] == 1) && this.keys[i2] == i;
    }

    public OpenIntToDoubleHashMap(OpenIntToDoubleHashMap openIntToDoubleHashMap) {
        int length = openIntToDoubleHashMap.keys.length;
        int[] iArr = new int[length];
        this.keys = iArr;
        System.arraycopy(openIntToDoubleHashMap.keys, 0, iArr, 0, length);
        double[] dArr = new double[length];
        this.values = dArr;
        System.arraycopy(openIntToDoubleHashMap.values, 0, dArr, 0, length);
        byte[] bArr = new byte[length];
        this.states = bArr;
        System.arraycopy(openIntToDoubleHashMap.states, 0, bArr, 0, length);
        this.missingEntries = openIntToDoubleHashMap.missingEntries;
        this.size = openIntToDoubleHashMap.size;
        this.mask = openIntToDoubleHashMap.mask;
        this.count = openIntToDoubleHashMap.count;
    }
}
