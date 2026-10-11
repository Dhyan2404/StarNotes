package com.graphbuilder.struc;

import com.google.android.material.motion.MotionUtils;

/* loaded from: classes4.dex */
public class Bag {
    protected Object[] data;
    protected int size;

    public Bag() {
        this.size = 0;
        this.data = new Object[2];
    }

    /* renamed from: a */
    public final int m30873a(Object obj, int i, boolean z) {
        if (i >= 0 && i < this.size) {
            if (z) {
                if (obj == null) {
                    while (i < this.size) {
                        if (this.data[i] == null) {
                            return i;
                        }
                        i++;
                    }
                } else {
                    while (i < this.size) {
                        if (obj.equals(this.data[i])) {
                            return i;
                        }
                        i++;
                    }
                }
            } else if (obj == null) {
                while (i >= 0) {
                    if (this.data[i] == null) {
                        return i;
                    }
                    i--;
                }
            } else {
                while (i >= 0) {
                    if (obj.equals(this.data[i])) {
                        return i;
                    }
                    i--;
                }
            }
        }
        return -1;
    }

    public void add(Object obj) {
        insert(obj, this.size);
    }

    public boolean contains(Object obj) {
        return m30873a(obj, 0, true) >= 0;
    }

    public void ensureCapacity(int i) {
        Object[] objArr = this.data;
        if (i > objArr.length) {
            int length = objArr.length * 2;
            if (length >= i) {
                i = length;
            }
            Object[] objArr2 = new Object[i];
            for (int i2 = 0; i2 < this.size; i2++) {
                objArr2[i2] = this.data[i2];
            }
            this.data = objArr2;
        }
    }

    public Object get(int i) {
        if (i >= 0 && i < this.size) {
            return this.data[i];
        }
        throw new IllegalArgumentException("required: (index >= 0 && index < size) but: (index = " + i + ", size = " + this.size + MotionUtils.f31762d);
    }

    public int getCapacity() {
        return this.data.length;
    }

    public int indexOf(Object obj) {
        return m30873a(obj, 0, true);
    }

    public void insert(Object obj, int i) {
        int i2;
        if (i < 0 || i > (i2 = this.size)) {
            throw new IllegalArgumentException("required: (index >= 0 && index <= size) but: (index = " + i + ", size = " + this.size + MotionUtils.f31762d);
        }
        ensureCapacity(i2 + 1);
        for (int i3 = this.size; i3 > i; i3--) {
            Object[] objArr = this.data;
            objArr[i3] = objArr[i3 - 1];
        }
        this.data[i] = obj;
        this.size++;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public int lastIndexOf(Object obj) {
        return m30873a(obj, this.size - 1, false);
    }

    public int remove(Object obj) {
        int m30873a = m30873a(obj, 0, true);
        if (m30873a >= 0) {
            remove(m30873a);
        }
        return m30873a;
    }

    public Object set(Object obj, int i) {
        if (i >= 0 && i < this.size) {
            Object[] objArr = this.data;
            Object obj2 = objArr[i];
            objArr[i] = obj;
            return obj2;
        }
        throw new IllegalArgumentException("required: (index >= 0 && index < size) but: (index = " + i + ", size = " + this.size + MotionUtils.f31762d);
    }

    public void setSize(int i) {
        if (i >= 0 && i <= this.data.length) {
            this.size = i;
            return;
        }
        throw new IllegalArgumentException("required: (size >= 0 && size <= data.length) but: (size = " + this.size + ", data.length = " + this.data.length + MotionUtils.f31762d);
    }

    public int size() {
        return this.size;
    }

    public void trimArray() {
        int i = this.size;
        if (i < this.data.length) {
            Object[] objArr = new Object[i];
            for (int i2 = 0; i2 < this.size; i2++) {
                objArr[i2] = this.data[i2];
            }
            this.data = objArr;
        }
    }

    public int indexOf(Object obj, int i) {
        return m30873a(obj, i, true);
    }

    public int lastIndexOf(Object obj, int i) {
        return m30873a(obj, i, false);
    }

    public Object remove(int i) {
        if (i >= 0 && i < this.size) {
            Object obj = this.data[i];
            while (true) {
                i++;
                int i2 = this.size;
                if (i < i2) {
                    Object[] objArr = this.data;
                    objArr[i - 1] = objArr[i];
                } else {
                    Object[] objArr2 = this.data;
                    int i3 = i2 - 1;
                    this.size = i3;
                    objArr2[i3] = null;
                    return obj;
                }
            }
        } else {
            throw new IllegalArgumentException("required: (index >= 0 && index < size) but: (index = " + i + ", size = " + this.size + MotionUtils.f31762d);
        }
    }

    public Bag(int i) {
        this.data = null;
        this.size = 0;
        this.data = new Object[i];
    }

    public Bag(Object[] objArr, int i) {
        this.data = null;
        this.size = 0;
        if (objArr != null) {
            if (i >= 0 && i <= objArr.length) {
                this.data = objArr;
                this.size = i;
                return;
            }
            throw new IllegalArgumentException("required: (size >= 0 && size <= data.length) but: (size = " + i + ", data.length = " + objArr.length + MotionUtils.f31762d);
        }
        throw new IllegalArgumentException("data array cannot be null.");
    }
}
