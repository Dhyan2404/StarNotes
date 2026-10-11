package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.nae;

/* loaded from: classes3.dex */
public class SparseArrayCompat<E> implements Cloneable {

    /* renamed from: i */
    public static final Object f2533i = new Object();

    /* renamed from: e */
    public boolean f2534e;

    /* renamed from: f */
    public int[] f2535f;

    /* renamed from: g */
    public Object[] f2536g;

    /* renamed from: h */
    public int f2537h;

    public SparseArrayCompat() {
        this(10);
    }

    /* renamed from: a */
    public final void m1328a() {
        int i = this.f2537h;
        int[] iArr = this.f2535f;
        Object[] objArr = this.f2536g;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f2533i) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f2534e = false;
        this.f2537h = i2;
    }

    public void append(int i, E e) {
        int i2 = this.f2537h;
        if (i2 != 0 && i <= this.f2535f[i2 - 1]) {
            put(i, e);
            return;
        }
        if (this.f2534e && i2 >= this.f2535f.length) {
            m1328a();
        }
        int i3 = this.f2537h;
        if (i3 >= this.f2535f.length) {
            int m55729e = nae.m55729e(i3 + 1);
            int[] iArr = new int[m55729e];
            Object[] objArr = new Object[m55729e];
            int[] iArr2 = this.f2535f;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f2536g;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f2535f = iArr;
            this.f2536g = objArr;
        }
        this.f2535f[i3] = i;
        this.f2536g[i3] = e;
        this.f2537h = i3 + 1;
    }

    public void clear() {
        int i = this.f2537h;
        Object[] objArr = this.f2536g;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f2537h = 0;
        this.f2534e = false;
    }

    public boolean containsKey(int i) {
        return indexOfKey(i) >= 0;
    }

    public boolean containsValue(E e) {
        return indexOfValue(e) >= 0;
    }

    @Deprecated
    public void delete(int i) {
        remove(i);
    }

    @Nullable
    public E get(int i) {
        return get(i, null);
    }

    public int indexOfKey(int i) {
        if (this.f2534e) {
            m1328a();
        }
        return nae.m55725a(this.f2535f, this.f2537h, i);
    }

    public int indexOfValue(E e) {
        if (this.f2534e) {
            m1328a();
        }
        for (int i = 0; i < this.f2537h; i++) {
            if (this.f2536g[i] == e) {
                return i;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int keyAt(int i) {
        if (this.f2534e) {
            m1328a();
        }
        return this.f2535f[i];
    }

    public void put(int i, E e) {
        int m55725a = nae.m55725a(this.f2535f, this.f2537h, i);
        if (m55725a >= 0) {
            this.f2536g[m55725a] = e;
            return;
        }
        int i2 = ~m55725a;
        int i3 = this.f2537h;
        if (i2 < i3) {
            Object[] objArr = this.f2536g;
            if (objArr[i2] == f2533i) {
                this.f2535f[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        if (this.f2534e && i3 >= this.f2535f.length) {
            m1328a();
            i2 = ~nae.m55725a(this.f2535f, this.f2537h, i);
        }
        int i4 = this.f2537h;
        if (i4 >= this.f2535f.length) {
            int m55729e = nae.m55729e(i4 + 1);
            int[] iArr = new int[m55729e];
            Object[] objArr2 = new Object[m55729e];
            int[] iArr2 = this.f2535f;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f2536g;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f2535f = iArr;
            this.f2536g = objArr2;
        }
        int i5 = this.f2537h;
        if (i5 - i2 != 0) {
            int[] iArr3 = this.f2535f;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr4 = this.f2536g;
            System.arraycopy(objArr4, i2, objArr4, i6, this.f2537h - i2);
        }
        this.f2535f[i2] = i;
        this.f2536g[i2] = e;
        this.f2537h++;
    }

    public void putAll(@NonNull SparseArrayCompat<? extends E> sparseArrayCompat) {
        int size = sparseArrayCompat.size();
        for (int i = 0; i < size; i++) {
            put(sparseArrayCompat.keyAt(i), sparseArrayCompat.valueAt(i));
        }
    }

    @Nullable
    public E putIfAbsent(int i, E e) {
        E e2 = get(i);
        if (e2 == null) {
            put(i, e);
        }
        return e2;
    }

    public void remove(int i) {
        int m55725a = nae.m55725a(this.f2535f, this.f2537h, i);
        if (m55725a >= 0) {
            Object[] objArr = this.f2536g;
            Object obj = objArr[m55725a];
            Object obj2 = f2533i;
            if (obj != obj2) {
                objArr[m55725a] = obj2;
                this.f2534e = true;
            }
        }
    }

    public void removeAt(int i) {
        Object[] objArr = this.f2536g;
        Object obj = objArr[i];
        Object obj2 = f2533i;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f2534e = true;
        }
    }

    public void removeAtRange(int i, int i2) {
        int min = Math.min(this.f2537h, i2 + i);
        while (i < min) {
            removeAt(i);
            i++;
        }
    }

    @Nullable
    public E replace(int i, E e) {
        int indexOfKey = indexOfKey(i);
        if (indexOfKey < 0) {
            return null;
        }
        Object[] objArr = this.f2536g;
        E e2 = (E) objArr[indexOfKey];
        objArr[indexOfKey] = e;
        return e2;
    }

    public void setValueAt(int i, E e) {
        if (this.f2534e) {
            m1328a();
        }
        this.f2536g[i] = e;
    }

    public int size() {
        if (this.f2534e) {
            m1328a();
        }
        return this.f2537h;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2537h * 28);
        sb.append('{');
        for (int i = 0; i < this.f2537h; i++) {
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
        if (this.f2534e) {
            m1328a();
        }
        return (E) this.f2536g[i];
    }

    public SparseArrayCompat(int i) {
        this.f2534e = false;
        if (i == 0) {
            this.f2535f = nae.f78458a;
            this.f2536g = nae.f78460c;
        } else {
            int m55729e = nae.m55729e(i);
            this.f2535f = new int[m55729e];
            this.f2536g = new Object[m55729e];
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseArrayCompat<E> m72116clone() {
        try {
            SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
            sparseArrayCompat.f2535f = (int[]) this.f2535f.clone();
            sparseArrayCompat.f2536g = (Object[]) this.f2536g.clone();
            return sparseArrayCompat;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public E get(int i, E e) {
        E e2;
        int m55725a = nae.m55725a(this.f2535f, this.f2537h, i);
        return (m55725a < 0 || (e2 = (E) this.f2536g[m55725a]) == f2533i) ? e : e2;
    }

    public boolean replace(int i, E e, E e2) {
        int indexOfKey = indexOfKey(i);
        if (indexOfKey < 0) {
            return false;
        }
        Object obj = this.f2536g[indexOfKey];
        if (obj != e && (e == null || !e.equals(obj))) {
            return false;
        }
        this.f2536g[indexOfKey] = e2;
        return true;
    }

    public boolean remove(int i, Object obj) {
        int indexOfKey = indexOfKey(i);
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
