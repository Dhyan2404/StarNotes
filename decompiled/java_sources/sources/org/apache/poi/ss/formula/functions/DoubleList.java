package org.apache.poi.ss.formula.functions;

import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class DoubleList {
    static final double[] EMPTY_DOUBLE_ARRAY = new double[0];
    private double[] _array = new double[8];
    private int _count = 0;

    private void ensureCapacity(int i) {
        double[] dArr = this._array;
        if (i > dArr.length) {
            this._array = Arrays.copyOf(dArr, (i * 3) / 2);
        }
    }

    public void add(double d) {
        ensureCapacity(this._count + 1);
        double[] dArr = this._array;
        int i = this._count;
        dArr[i] = d;
        this._count = i + 1;
    }

    public int getLength() {
        return this._count;
    }

    public double[] toArray() {
        int i = this._count;
        return i < 1 ? EMPTY_DOUBLE_ARRAY : Arrays.copyOf(this._array, i);
    }
}
