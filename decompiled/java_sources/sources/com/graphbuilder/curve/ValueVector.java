package com.graphbuilder.curve;

import com.google.android.material.motion.MotionUtils;

/* loaded from: classes4.dex */
public class ValueVector {
    protected int size;
    protected double[] value;

    public ValueVector() {
        this.size = 0;
        this.value = new double[2];
    }

    public void add(double d) {
        insert(d, this.size);
    }

    public void ensureCapacity(int i) {
        double[] dArr = this.value;
        if (dArr.length < i) {
            int length = dArr.length * 2;
            if (length >= i) {
                i = length;
            }
            double[] dArr2 = new double[i];
            for (int i2 = 0; i2 < this.size; i2++) {
                dArr2[i2] = this.value[i2];
            }
            this.value = dArr2;
        }
    }

    public double get(int i) {
        if (i >= 0 && i < this.size) {
            return this.value[i];
        }
        throw new IllegalArgumentException("required: (index >= 0 && index < size) but: (index = " + i + ", size = " + this.size + MotionUtils.f31762d);
    }

    public void insert(double d, int i) {
        int i2;
        if (i < 0 || i > (i2 = this.size)) {
            throw new IllegalArgumentException("required: (index >= 0 && index <= size) but: (index = " + i + ", size = " + this.size + MotionUtils.f31762d);
        }
        ensureCapacity(i2 + 1);
        for (int i3 = this.size; i3 > i; i3--) {
            double[] dArr = this.value;
            dArr[i3] = dArr[i3 - 1];
        }
        this.value[i] = d;
        this.size++;
    }

    public void remove(int i) {
        if (i < 0 || i >= this.size) {
            throw new IllegalArgumentException("required: (index >= 0 && index < size) but: (index = " + i + ", size = " + this.size + MotionUtils.f31762d);
        }
        while (true) {
            i++;
            int i2 = this.size;
            if (i >= i2) {
                this.size = i2 - 1;
                return;
            } else {
                double[] dArr = this.value;
                dArr[i - 1] = dArr[i];
            }
        }
    }

    public void set(double d, int i) {
        if (i >= 0 && i < this.size) {
            this.value[i] = d;
            return;
        }
        throw new IllegalArgumentException("required: (index >= 0 && index < size) but: (index = " + i + ", size = " + this.size + MotionUtils.f31762d);
    }

    public int size() {
        return this.size;
    }

    public void trimArray() {
        int i = this.size;
        if (i < this.value.length) {
            double[] dArr = new double[i];
            for (int i2 = 0; i2 < this.size; i2++) {
                dArr[i2] = this.value[i2];
            }
            this.value = dArr;
        }
    }

    public ValueVector(double[] dArr, int i) {
        this.size = 0;
        this.value = null;
        if (dArr != null) {
            if (i >= 0 && i <= dArr.length) {
                this.value = dArr;
                this.size = i;
                return;
            }
            throw new IllegalArgumentException("size >= 0 && size <= value.length required");
        }
        throw new IllegalArgumentException("value array cannot be null.");
    }

    public ValueVector(int i) {
        this.size = 0;
        this.value = null;
        this.value = new double[i];
    }
}
