package com.github.mikephil.charting.utils;

import com.github.mikephil.charting.utils.ObjectPool.Poolable;
import java.util.List;

/* loaded from: classes4.dex */
public class ObjectPool<T extends Poolable> {

    /* renamed from: g */
    public static int f21743g;

    /* renamed from: a */
    public int f21744a;

    /* renamed from: b */
    public int f21745b;

    /* renamed from: c */
    public Object[] f21746c;

    /* renamed from: d */
    public int f21747d;

    /* renamed from: e */
    public T f21748e;

    /* renamed from: f */
    public float f21749f;

    /* loaded from: classes4.dex */
    public static abstract class Poolable {
        public static int NO_OWNER = -1;

        /* renamed from: e */
        public int f21750e = NO_OWNER;

        public abstract Poolable instantiate();
    }

    public ObjectPool(int i, T t) {
        if (i <= 0) {
            throw new IllegalArgumentException("Object Pool must be instantiated with a capacity greater than 0!");
        }
        this.f21745b = i;
        this.f21746c = new Object[i];
        this.f21747d = 0;
        this.f21748e = t;
        this.f21749f = 1.0f;
        m17385a();
    }

    public static synchronized ObjectPool create(int i, Poolable poolable) {
        ObjectPool objectPool;
        synchronized (ObjectPool.class) {
            objectPool = new ObjectPool(i, poolable);
            int i2 = f21743g;
            objectPool.f21744a = i2;
            f21743g = i2 + 1;
        }
        return objectPool;
    }

    /* renamed from: a */
    public final void m17385a() {
        m17386b(this.f21749f);
    }

    /* renamed from: b */
    public final void m17386b(float f) {
        int i = this.f21745b;
        int i2 = (int) (i * f);
        if (i2 < 1) {
            i = 1;
        } else if (i2 <= i) {
            i = i2;
        }
        for (int i3 = 0; i3 < i; i3++) {
            this.f21746c[i3] = this.f21748e.instantiate();
        }
        this.f21747d = i - 1;
    }

    /* renamed from: c */
    public final void m17387c() {
        int i = this.f21745b;
        int i2 = i * 2;
        this.f21745b = i2;
        Object[] objArr = new Object[i2];
        for (int i3 = 0; i3 < i; i3++) {
            objArr[i3] = this.f21746c[i3];
        }
        this.f21746c = objArr;
    }

    public synchronized T get() {
        T t;
        if (this.f21747d == -1 && this.f21749f > 0.0f) {
            m17385a();
        }
        Object[] objArr = this.f21746c;
        int i = this.f21747d;
        t = (T) objArr[i];
        t.f21750e = Poolable.NO_OWNER;
        this.f21747d = i - 1;
        return t;
    }

    public int getPoolCapacity() {
        return this.f21746c.length;
    }

    public int getPoolCount() {
        return this.f21747d + 1;
    }

    public int getPoolId() {
        return this.f21744a;
    }

    public float getReplenishPercentage() {
        return this.f21749f;
    }

    public synchronized void recycle(T t) {
        int i = t.f21750e;
        if (i != Poolable.NO_OWNER) {
            if (i == this.f21744a) {
                throw new IllegalArgumentException("The object passed is already stored in this pool!");
            }
            throw new IllegalArgumentException("The object to recycle already belongs to poolId " + t.f21750e + ".  Object cannot belong to two different pool instances simultaneously!");
        }
        int i2 = this.f21747d + 1;
        this.f21747d = i2;
        if (i2 >= this.f21746c.length) {
            m17387c();
        }
        t.f21750e = this.f21744a;
        this.f21746c[this.f21747d] = t;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000b, code lost:
    
        if (r3 < 0.0f) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setReplenishPercentage(float r3) {
        /*
            r2 = this;
            r0 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r1 <= 0) goto L8
        L6:
            r3 = r0
            goto Le
        L8:
            r0 = 0
            int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r1 >= 0) goto Le
            goto L6
        Le:
            r2.f21749f = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.utils.ObjectPool.setReplenishPercentage(float):void");
    }

    public synchronized void recycle(List<T> list) {
        while (list.size() + this.f21747d + 1 > this.f21745b) {
            m17387c();
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            int i2 = t.f21750e;
            if (i2 != Poolable.NO_OWNER) {
                if (i2 == this.f21744a) {
                    throw new IllegalArgumentException("The object passed is already stored in this pool!");
                }
                throw new IllegalArgumentException("The object to recycle already belongs to poolId " + t.f21750e + ".  Object cannot belong to two different pool instances simultaneously!");
            }
            t.f21750e = this.f21744a;
            this.f21746c[this.f21747d + 1 + i] = t;
        }
        this.f21747d += size;
    }
}
