package com.sunia.HTREnginev2;

import android.util.SparseArray;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Consumer;

/* loaded from: classes5.dex */
public final class zvm<V> {

    /* renamed from: a */
    public int f92241a;

    /* renamed from: b */
    public final SparseArray<V> f92242b;

    /* renamed from: c */
    public final Consumer<V> f92243c;

    public zvm() {
        this(new Consumer() { // from class: com.sunia.HTREnginev2.yvm
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                zvm.m58756i(obj);
            }
        });
    }

    /* renamed from: i */
    public static /* synthetic */ void m58756i(Object obj) {
    }

    /* renamed from: b */
    public void m58757b(int i, V v) {
        if (this.f92241a == -1) {
            Assertions.checkState(this.f92242b.size() == 0);
            this.f92241a = 0;
        }
        if (this.f92242b.size() > 0) {
            SparseArray<V> sparseArray = this.f92242b;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            Assertions.checkArgument(i >= keyAt);
            if (keyAt == i) {
                Consumer<V> consumer = this.f92243c;
                SparseArray<V> sparseArray2 = this.f92242b;
                consumer.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.f92242b.append(i, v);
    }

    /* renamed from: c */
    public void m58758c() {
        for (int i = 0; i < this.f92242b.size(); i++) {
            this.f92243c.accept(this.f92242b.valueAt(i));
        }
        this.f92241a = -1;
        this.f92242b.clear();
    }

    /* renamed from: d */
    public void m58759d(int i) {
        for (int size = this.f92242b.size() - 1; size >= 0 && i < this.f92242b.keyAt(size); size--) {
            this.f92243c.accept(this.f92242b.valueAt(size));
            this.f92242b.removeAt(size);
        }
        this.f92241a = this.f92242b.size() > 0 ? Math.min(this.f92241a, this.f92242b.size() - 1) : -1;
    }

    /* renamed from: e */
    public void m58760e(int i) {
        int i2 = 0;
        while (i2 < this.f92242b.size() - 1) {
            int i3 = i2 + 1;
            if (i < this.f92242b.keyAt(i3)) {
                return;
            }
            this.f92243c.accept(this.f92242b.valueAt(i2));
            this.f92242b.removeAt(i2);
            int i4 = this.f92241a;
            if (i4 > 0) {
                this.f92241a = i4 - 1;
            }
            i2 = i3;
        }
    }

    /* renamed from: f */
    public V m58761f(int i) {
        if (this.f92241a == -1) {
            this.f92241a = 0;
        }
        while (true) {
            int i2 = this.f92241a;
            if (i2 <= 0 || i >= this.f92242b.keyAt(i2)) {
                break;
            }
            this.f92241a--;
        }
        while (this.f92241a < this.f92242b.size() - 1 && i >= this.f92242b.keyAt(this.f92241a + 1)) {
            this.f92241a++;
        }
        return this.f92242b.valueAt(this.f92241a);
    }

    /* renamed from: g */
    public V m58762g() {
        return this.f92242b.valueAt(r1.size() - 1);
    }

    /* renamed from: h */
    public boolean m58763h() {
        return this.f92242b.size() == 0;
    }

    public zvm(Consumer<V> consumer) {
        this.f92242b = new SparseArray<>();
        this.f92243c = consumer;
        this.f92241a = -1;
    }
}
