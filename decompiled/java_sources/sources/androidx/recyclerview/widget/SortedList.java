package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;

/* loaded from: classes3.dex */
public class SortedList<T> {
    public static final int INVALID_POSITION = -1;

    /* renamed from: j */
    public static final int f9726j = 10;

    /* renamed from: k */
    public static final int f9727k = 10;

    /* renamed from: l */
    public static final int f9728l = 1;

    /* renamed from: m */
    public static final int f9729m = 2;

    /* renamed from: n */
    public static final int f9730n = 4;

    /* renamed from: a */
    public T[] f9731a;

    /* renamed from: b */
    public T[] f9732b;

    /* renamed from: c */
    public int f9733c;

    /* renamed from: d */
    public int f9734d;

    /* renamed from: e */
    public int f9735e;

    /* renamed from: f */
    public Callback f9736f;

    /* renamed from: g */
    public BatchedCallback f9737g;

    /* renamed from: h */
    public int f9738h;

    /* renamed from: i */
    public final Class<T> f9739i;

    /* loaded from: classes3.dex */
    public static class BatchedCallback<T2> extends Callback<T2> {

        /* renamed from: e */
        public final Callback<T2> f9740e;

        /* renamed from: f */
        public final BatchingListUpdateCallback f9741f;

        @SuppressLint({"UnknownNullness"})
        public BatchedCallback(Callback<T2> callback) {
            this.f9740e = callback;
            this.f9741f = new BatchingListUpdateCallback(callback);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public boolean areContentsTheSame(T2 t2, T2 t22) {
            return this.f9740e.areContentsTheSame(t2, t22);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public boolean areItemsTheSame(T2 t2, T2 t22) {
            return this.f9740e.areItemsTheSame(t2, t22);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, java.util.Comparator
        public int compare(T2 t2, T2 t22) {
            return this.f9740e.compare(t2, t22);
        }

        public void dispatchLastEvent() {
            this.f9741f.dispatchLastEvent();
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        @Nullable
        public Object getChangePayload(T2 t2, T2 t22) {
            return this.f9740e.getChangePayload(t2, t22);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public void onChanged(int i, int i2) {
            this.f9741f.onChanged(i, i2, null);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onInserted(int i, int i2) {
            this.f9741f.onInserted(i, i2);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onMoved(int i, int i2) {
            this.f9741f.onMoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onRemoved(int i, int i2) {
            this.f9741f.onRemoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
        @SuppressLint({"UnknownNullness"})
        public void onChanged(int i, int i2, Object obj) {
            this.f9741f.onChanged(i, i2, obj);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Callback<T2> implements Comparator<T2>, ListUpdateCallback {
        public abstract boolean areContentsTheSame(T2 t2, T2 t22);

        public abstract boolean areItemsTheSame(T2 t2, T2 t22);

        @Override // java.util.Comparator
        public abstract int compare(T2 t2, T2 t22);

        @Nullable
        public Object getChangePayload(T2 t2, T2 t22) {
            return null;
        }

        public abstract void onChanged(int i, int i2);

        @SuppressLint({"UnknownNullness"})
        public void onChanged(int i, int i2, Object obj) {
            onChanged(i, i2);
        }
    }

    public SortedList(@NonNull Class<T> cls, @NonNull Callback<T> callback) {
        this(cls, callback, 10);
    }

    /* renamed from: a */
    public final int m5944a(T t, boolean z) {
        int m5948e = m5948e(t, this.f9731a, 0, this.f9738h, 1);
        if (m5948e == -1) {
            m5948e = 0;
        } else if (m5948e < this.f9738h) {
            T t2 = this.f9731a[m5948e];
            if (this.f9736f.areItemsTheSame(t2, t)) {
                if (this.f9736f.areContentsTheSame(t2, t)) {
                    this.f9731a[m5948e] = t;
                    return m5948e;
                }
                this.f9731a[m5948e] = t;
                Callback callback = this.f9736f;
                callback.onChanged(m5948e, 1, callback.getChangePayload(t2, t));
                return m5948e;
            }
        }
        m5946c(m5948e, t);
        if (z) {
            this.f9736f.onInserted(m5948e, 1);
        }
        return m5948e;
    }

    public int add(T t) {
        m5958o();
        return m5944a(t, true);
    }

    public void addAll(@NonNull T[] tArr, boolean z) {
        m5958o();
        if (tArr.length == 0) {
            return;
        }
        if (z) {
            m5945b(tArr);
        } else {
            m5945b(m5947d(tArr));
        }
    }

    /* renamed from: b */
    public final void m5945b(T[] tArr) {
        if (tArr.length < 1) {
            return;
        }
        int m5957n = m5957n(tArr);
        if (this.f9738h != 0) {
            m5951h(tArr, m5957n);
            return;
        }
        this.f9731a = tArr;
        this.f9738h = m5957n;
        this.f9736f.onInserted(0, m5957n);
    }

    public void beginBatchedUpdates() {
        m5958o();
        Callback callback = this.f9736f;
        if (callback instanceof BatchedCallback) {
            return;
        }
        if (this.f9737g == null) {
            this.f9737g = new BatchedCallback(callback);
        }
        this.f9736f = this.f9737g;
    }

    /* renamed from: c */
    public final void m5946c(int i, T t) {
        int i2 = this.f9738h;
        if (i > i2) {
            throw new IndexOutOfBoundsException("cannot add item to " + i + " because size is " + this.f9738h);
        }
        T[] tArr = this.f9731a;
        if (i2 == tArr.length) {
            T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) this.f9739i, tArr.length + 10));
            System.arraycopy(this.f9731a, 0, tArr2, 0, i);
            tArr2[i] = t;
            System.arraycopy(this.f9731a, i, tArr2, i + 1, this.f9738h - i);
            this.f9731a = tArr2;
        } else {
            System.arraycopy(tArr, i, tArr, i + 1, i2 - i);
            this.f9731a[i] = t;
        }
        this.f9738h++;
    }

    public void clear() {
        m5958o();
        int i = this.f9738h;
        if (i == 0) {
            return;
        }
        Arrays.fill(this.f9731a, 0, i, (Object) null);
        this.f9738h = 0;
        this.f9736f.onRemoved(0, i);
    }

    /* renamed from: d */
    public final T[] m5947d(T[] tArr) {
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) this.f9739i, tArr.length));
        System.arraycopy(tArr, 0, tArr2, 0, tArr.length);
        return tArr2;
    }

    /* renamed from: e */
    public final int m5948e(T t, T[] tArr, int i, int i2, int i3) {
        while (i < i2) {
            int i4 = (i + i2) / 2;
            T t2 = tArr[i4];
            int compare = this.f9736f.compare(t2, t);
            if (compare < 0) {
                i = i4 + 1;
            } else {
                if (compare == 0) {
                    if (this.f9736f.areItemsTheSame(t2, t)) {
                        return i4;
                    }
                    int m5950g = m5950g(t, i4, i, i2);
                    return (i3 == 1 && m5950g == -1) ? i4 : m5950g;
                }
                i2 = i4;
            }
        }
        if (i3 == 1) {
            return i;
        }
        return -1;
    }

    public void endBatchedUpdates() {
        m5958o();
        Callback callback = this.f9736f;
        if (callback instanceof BatchedCallback) {
            ((BatchedCallback) callback).dispatchLastEvent();
        }
        Callback callback2 = this.f9736f;
        BatchedCallback batchedCallback = this.f9737g;
        if (callback2 == batchedCallback) {
            this.f9736f = batchedCallback.f9740e;
        }
    }

    /* renamed from: f */
    public final int m5949f(T t, T[] tArr, int i, int i2) {
        while (i < i2) {
            if (this.f9736f.areItemsTheSame(tArr[i], t)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: g */
    public final int m5950g(T t, int i, int i2, int i3) {
        T t2;
        for (int i4 = i - 1; i4 >= i2; i4--) {
            T t3 = this.f9731a[i4];
            if (this.f9736f.compare(t3, t) != 0) {
                break;
            }
            if (this.f9736f.areItemsTheSame(t3, t)) {
                return i4;
            }
        }
        do {
            i++;
            if (i >= i3) {
                return -1;
            }
            t2 = this.f9731a[i];
            if (this.f9736f.compare(t2, t) != 0) {
                return -1;
            }
        } while (!this.f9736f.areItemsTheSame(t2, t));
        return i;
    }

    public T get(int i) throws IndexOutOfBoundsException {
        int i2;
        if (i < this.f9738h && i >= 0) {
            T[] tArr = this.f9732b;
            return (tArr == null || i < (i2 = this.f9735e)) ? this.f9731a[i] : tArr[(i - i2) + this.f9733c];
        }
        throw new IndexOutOfBoundsException("Asked to get item at " + i + " but size is " + this.f9738h);
    }

    /* renamed from: h */
    public final void m5951h(T[] tArr, int i) {
        boolean z = !(this.f9736f instanceof BatchedCallback);
        if (z) {
            beginBatchedUpdates();
        }
        this.f9732b = this.f9731a;
        int i2 = 0;
        this.f9733c = 0;
        int i3 = this.f9738h;
        this.f9734d = i3;
        this.f9731a = (T[]) ((Object[]) Array.newInstance((Class<?>) this.f9739i, i3 + i + 10));
        this.f9735e = 0;
        while (true) {
            int i4 = this.f9733c;
            int i5 = this.f9734d;
            if (i4 >= i5 && i2 >= i) {
                break;
            }
            if (i4 == i5) {
                int i6 = i - i2;
                System.arraycopy(tArr, i2, this.f9731a, this.f9735e, i6);
                int i7 = this.f9735e + i6;
                this.f9735e = i7;
                this.f9738h += i6;
                this.f9736f.onInserted(i7 - i6, i6);
                break;
            }
            if (i2 == i) {
                int i8 = i5 - i4;
                System.arraycopy(this.f9732b, i4, this.f9731a, this.f9735e, i8);
                this.f9735e += i8;
                break;
            }
            T t = this.f9732b[i4];
            T t2 = tArr[i2];
            int compare = this.f9736f.compare(t, t2);
            if (compare > 0) {
                T[] tArr2 = this.f9731a;
                int i9 = this.f9735e;
                int i10 = i9 + 1;
                this.f9735e = i10;
                tArr2[i9] = t2;
                this.f9738h++;
                i2++;
                this.f9736f.onInserted(i10 - 1, 1);
            } else if (compare == 0 && this.f9736f.areItemsTheSame(t, t2)) {
                T[] tArr3 = this.f9731a;
                int i11 = this.f9735e;
                this.f9735e = i11 + 1;
                tArr3[i11] = t2;
                i2++;
                this.f9733c++;
                if (!this.f9736f.areContentsTheSame(t, t2)) {
                    Callback callback = this.f9736f;
                    callback.onChanged(this.f9735e - 1, 1, callback.getChangePayload(t, t2));
                }
            } else {
                T[] tArr4 = this.f9731a;
                int i12 = this.f9735e;
                this.f9735e = i12 + 1;
                tArr4[i12] = t;
                this.f9733c++;
            }
        }
        this.f9732b = null;
        if (z) {
            endBatchedUpdates();
        }
    }

    /* renamed from: i */
    public final boolean m5952i(T t, boolean z) {
        int m5948e = m5948e(t, this.f9731a, 0, this.f9738h, 2);
        if (m5948e == -1) {
            return false;
        }
        m5953j(m5948e, z);
        return true;
    }

    public int indexOf(T t) {
        if (this.f9732b == null) {
            return m5948e(t, this.f9731a, 0, this.f9738h, 4);
        }
        int m5948e = m5948e(t, this.f9731a, 0, this.f9735e, 4);
        if (m5948e != -1) {
            return m5948e;
        }
        int m5948e2 = m5948e(t, this.f9732b, this.f9733c, this.f9734d, 4);
        if (m5948e2 != -1) {
            return (m5948e2 - this.f9733c) + this.f9735e;
        }
        return -1;
    }

    /* renamed from: j */
    public final void m5953j(int i, boolean z) {
        T[] tArr = this.f9731a;
        System.arraycopy(tArr, i + 1, tArr, i, (this.f9738h - i) - 1);
        int i2 = this.f9738h - 1;
        this.f9738h = i2;
        this.f9731a[i2] = null;
        if (z) {
            this.f9736f.onRemoved(i, 1);
        }
    }

    /* renamed from: k */
    public final void m5954k(T t) {
        T[] tArr = this.f9731a;
        int i = this.f9735e;
        tArr[i] = t;
        int i2 = i + 1;
        this.f9735e = i2;
        this.f9738h++;
        this.f9736f.onInserted(i2 - 1, 1);
    }

    /* renamed from: l */
    public final void m5955l(@NonNull T[] tArr) {
        boolean z = !(this.f9736f instanceof BatchedCallback);
        if (z) {
            beginBatchedUpdates();
        }
        this.f9733c = 0;
        this.f9734d = this.f9738h;
        this.f9732b = this.f9731a;
        this.f9735e = 0;
        int m5957n = m5957n(tArr);
        this.f9731a = (T[]) ((Object[]) Array.newInstance((Class<?>) this.f9739i, m5957n));
        while (true) {
            int i = this.f9735e;
            if (i >= m5957n && this.f9733c >= this.f9734d) {
                break;
            }
            int i2 = this.f9733c;
            int i3 = this.f9734d;
            if (i2 >= i3) {
                int i4 = m5957n - i;
                System.arraycopy(tArr, i, this.f9731a, i, i4);
                this.f9735e += i4;
                this.f9738h += i4;
                this.f9736f.onInserted(i, i4);
                break;
            }
            if (i >= m5957n) {
                int i5 = i3 - i2;
                this.f9738h -= i5;
                this.f9736f.onRemoved(i, i5);
                break;
            }
            T t = this.f9732b[i2];
            T t2 = tArr[i];
            int compare = this.f9736f.compare(t, t2);
            if (compare < 0) {
                m5956m();
            } else if (compare > 0) {
                m5954k(t2);
            } else if (this.f9736f.areItemsTheSame(t, t2)) {
                T[] tArr2 = this.f9731a;
                int i6 = this.f9735e;
                tArr2[i6] = t2;
                this.f9733c++;
                this.f9735e = i6 + 1;
                if (!this.f9736f.areContentsTheSame(t, t2)) {
                    Callback callback = this.f9736f;
                    callback.onChanged(this.f9735e - 1, 1, callback.getChangePayload(t, t2));
                }
            } else {
                m5956m();
                m5954k(t2);
            }
        }
        this.f9732b = null;
        if (z) {
            endBatchedUpdates();
        }
    }

    /* renamed from: m */
    public final void m5956m() {
        this.f9738h--;
        this.f9733c++;
        this.f9736f.onRemoved(this.f9735e, 1);
    }

    /* renamed from: n */
    public final int m5957n(@NonNull T[] tArr) {
        if (tArr.length == 0) {
            return 0;
        }
        Arrays.sort(tArr, this.f9736f);
        int i = 0;
        int i2 = 1;
        for (int i3 = 1; i3 < tArr.length; i3++) {
            T t = tArr[i3];
            if (this.f9736f.compare(tArr[i], t) == 0) {
                int m5949f = m5949f(t, tArr, i, i2);
                if (m5949f != -1) {
                    tArr[m5949f] = t;
                } else {
                    if (i2 != i3) {
                        tArr[i2] = t;
                    }
                    i2++;
                }
            } else {
                if (i2 != i3) {
                    tArr[i2] = t;
                }
                i = i2;
                i2++;
            }
        }
        return i2;
    }

    /* renamed from: o */
    public final void m5958o() {
        if (this.f9732b != null) {
            throw new IllegalStateException("Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll.");
        }
    }

    public void recalculatePositionOfItemAt(int i) {
        m5958o();
        T t = get(i);
        m5953j(i, false);
        int m5944a = m5944a(t, false);
        if (i != m5944a) {
            this.f9736f.onMoved(i, m5944a);
        }
    }

    public boolean remove(T t) {
        m5958o();
        return m5952i(t, true);
    }

    public T removeItemAt(int i) {
        m5958o();
        T t = get(i);
        m5953j(i, true);
        return t;
    }

    public void replaceAll(@NonNull T[] tArr, boolean z) {
        m5958o();
        if (z) {
            m5955l(tArr);
        } else {
            m5955l(m5947d(tArr));
        }
    }

    public int size() {
        return this.f9738h;
    }

    public void updateItemAt(int i, T t) {
        m5958o();
        T t2 = get(i);
        boolean z = t2 == t || !this.f9736f.areContentsTheSame(t2, t);
        if (t2 != t && this.f9736f.compare(t2, t) == 0) {
            this.f9731a[i] = t;
            if (z) {
                Callback callback = this.f9736f;
                callback.onChanged(i, 1, callback.getChangePayload(t2, t));
                return;
            }
            return;
        }
        if (z) {
            Callback callback2 = this.f9736f;
            callback2.onChanged(i, 1, callback2.getChangePayload(t2, t));
        }
        m5953j(i, false);
        int m5944a = m5944a(t, false);
        if (i != m5944a) {
            this.f9736f.onMoved(i, m5944a);
        }
    }

    public SortedList(@NonNull Class<T> cls, @NonNull Callback<T> callback, int i) {
        this.f9739i = cls;
        this.f9731a = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i));
        this.f9736f = callback;
        this.f9738h = 0;
    }

    public void replaceAll(@NonNull T... tArr) {
        replaceAll(tArr, false);
    }

    public void addAll(@NonNull T... tArr) {
        addAll(tArr, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void replaceAll(@NonNull Collection<T> collection) {
        replaceAll(collection.toArray((Object[]) Array.newInstance((Class<?>) this.f9739i, collection.size())), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addAll(@NonNull Collection<T> collection) {
        addAll(collection.toArray((Object[]) Array.newInstance((Class<?>) this.f9739i, collection.size())), true);
    }
}
