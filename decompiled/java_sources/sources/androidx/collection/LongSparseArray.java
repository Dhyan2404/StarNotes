package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.nae;

/* loaded from: classes3.dex */
public class LongSparseArray<E> implements Cloneable {

    /* renamed from: i */
    public static final Object f2508i = new Object();

    /* renamed from: e */
    public boolean f2509e;

    /* renamed from: f */
    public long[] f2510f;

    /* renamed from: g */
    public Object[] f2511g;

    /* renamed from: h */
    public int f2512h;

    public LongSparseArray() {
        this(10);
    }

    /* renamed from: a */
    public final void m1320a() {
        int i = this.f2512h;
        long[] jArr = this.f2510f;
        Object[] objArr = this.f2511g;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f2508i) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f2509e = false;
        this.f2512h = i2;
    }

    public void append(long j, E e) {
        int i = this.f2512h;
        if (i != 0 && j <= this.f2510f[i - 1]) {
            put(j, e);
            return;
        }
        if (this.f2509e && i >= this.f2510f.length) {
            m1320a();
        }
        int i2 = this.f2512h;
        if (i2 >= this.f2510f.length) {
            int m55730f = nae.m55730f(i2 + 1);
            long[] jArr = new long[m55730f];
            Object[] objArr = new Object[m55730f];
            long[] jArr2 = this.f2510f;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f2511g;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f2510f = jArr;
            this.f2511g = objArr;
        }
        this.f2510f[i2] = j;
        this.f2511g[i2] = e;
        this.f2512h = i2 + 1;
    }

    public void clear() {
        int i = this.f2512h;
        Object[] objArr = this.f2511g;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f2512h = 0;
        this.f2509e = false;
    }

    public boolean containsKey(long j) {
        return indexOfKey(j) >= 0;
    }

    public boolean containsValue(E e) {
        return indexOfValue(e) >= 0;
    }

    @Deprecated
    public void delete(long j) {
        remove(j);
    }

    @Nullable
    public E get(long j) {
        return get(j, null);
    }

    public int indexOfKey(long j) {
        if (this.f2509e) {
            m1320a();
        }
        return nae.m55726b(this.f2510f, this.f2512h, j);
    }

    public int indexOfValue(E e) {
        if (this.f2509e) {
            m1320a();
        }
        for (int i = 0; i < this.f2512h; i++) {
            if (this.f2511g[i] == e) {
                return i;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public long keyAt(int i) {
        if (this.f2509e) {
            m1320a();
        }
        return this.f2510f[i];
    }

    public void put(long j, E e) {
        int m55726b = nae.m55726b(this.f2510f, this.f2512h, j);
        if (m55726b >= 0) {
            this.f2511g[m55726b] = e;
            return;
        }
        int i = ~m55726b;
        int i2 = this.f2512h;
        if (i < i2) {
            Object[] objArr = this.f2511g;
            if (objArr[i] == f2508i) {
                this.f2510f[i] = j;
                objArr[i] = e;
                return;
            }
        }
        if (this.f2509e && i2 >= this.f2510f.length) {
            m1320a();
            i = ~nae.m55726b(this.f2510f, this.f2512h, j);
        }
        int i3 = this.f2512h;
        if (i3 >= this.f2510f.length) {
            int m55730f = nae.m55730f(i3 + 1);
            long[] jArr = new long[m55730f];
            Object[] objArr2 = new Object[m55730f];
            long[] jArr2 = this.f2510f;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f2511g;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f2510f = jArr;
            this.f2511g = objArr2;
        }
        int i4 = this.f2512h;
        if (i4 - i != 0) {
            long[] jArr3 = this.f2510f;
            int i5 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i5, i4 - i);
            Object[] objArr4 = this.f2511g;
            System.arraycopy(objArr4, i, objArr4, i5, this.f2512h - i);
        }
        this.f2510f[i] = j;
        this.f2511g[i] = e;
        this.f2512h++;
    }

    public void putAll(@NonNull LongSparseArray<? extends E> longSparseArray) {
        int size = longSparseArray.size();
        for (int i = 0; i < size; i++) {
            put(longSparseArray.keyAt(i), longSparseArray.valueAt(i));
        }
    }

    @Nullable
    public E putIfAbsent(long j, E e) {
        E e2 = get(j);
        if (e2 == null) {
            put(j, e);
        }
        return e2;
    }

    public void remove(long j) {
        int m55726b = nae.m55726b(this.f2510f, this.f2512h, j);
        if (m55726b >= 0) {
            Object[] objArr = this.f2511g;
            Object obj = objArr[m55726b];
            Object obj2 = f2508i;
            if (obj != obj2) {
                objArr[m55726b] = obj2;
                this.f2509e = true;
            }
        }
    }

    public void removeAt(int i) {
        Object[] objArr = this.f2511g;
        Object obj = objArr[i];
        Object obj2 = f2508i;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f2509e = true;
        }
    }

    @Nullable
    public E replace(long j, E e) {
        int indexOfKey = indexOfKey(j);
        if (indexOfKey < 0) {
            return null;
        }
        Object[] objArr = this.f2511g;
        E e2 = (E) objArr[indexOfKey];
        objArr[indexOfKey] = e;
        return e2;
    }

    public void setValueAt(int i, E e) {
        if (this.f2509e) {
            m1320a();
        }
        this.f2511g[i] = e;
    }

    public int size() {
        if (this.f2509e) {
            m1320a();
        }
        return this.f2512h;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2512h * 28);
        sb.append('{');
        for (int i = 0; i < this.f2512h; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i));
            sb.append('=');
            E valueAt = valueAt(i);
            if (valueAt != this) {
                sb.append(valueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public E valueAt(int i) {
        if (this.f2509e) {
            m1320a();
        }
        return (E) this.f2511g[i];
    }

    public LongSparseArray(int i) {
        this.f2509e = false;
        if (i == 0) {
            this.f2510f = nae.f78459b;
            this.f2511g = nae.f78460c;
        } else {
            int m55730f = nae.m55730f(i);
            this.f2510f = new long[m55730f];
            this.f2511g = new Object[m55730f];
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LongSparseArray<E> m72115clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            longSparseArray.f2510f = (long[]) this.f2510f.clone();
            longSparseArray.f2511g = (Object[]) this.f2511g.clone();
            return longSparseArray;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public E get(long j, E e) {
        E e2;
        int m55726b = nae.m55726b(this.f2510f, this.f2512h, j);
        return (m55726b < 0 || (e2 = (E) this.f2511g[m55726b]) == f2508i) ? e : e2;
    }

    public boolean replace(long j, E e, E e2) {
        int indexOfKey = indexOfKey(j);
        if (indexOfKey < 0) {
            return false;
        }
        Object obj = this.f2511g[indexOfKey];
        if (obj != e && (e == null || !e.equals(obj))) {
            return false;
        }
        this.f2511g[indexOfKey] = e2;
        return true;
    }

    public boolean remove(long j, Object obj) {
        int indexOfKey = indexOfKey(j);
        if (indexOfKey < 0) {
            return false;
        }
        E valueAt = valueAt(indexOfKey);
        if (obj != valueAt && (obj == null || !obj.equals(valueAt))) {
            return false;
        }
        removeAt(indexOfKey);
        return true;
    }
}
