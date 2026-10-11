package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.m8j;
import com.sunia.HTREnginev2.nae;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public final class ArraySet<E> implements Collection<E>, Set<E> {

    /* renamed from: i */
    public static final boolean f2485i = false;

    /* renamed from: j */
    public static final String f2486j = "ArraySet";

    /* renamed from: k */
    public static final int[] f2487k = new int[0];

    /* renamed from: l */
    public static final Object[] f2488l = new Object[0];

    /* renamed from: m */
    public static final int f2489m = 4;

    /* renamed from: n */
    public static final int f2490n = 10;

    /* renamed from: o */
    @Nullable
    public static Object[] f2491o;

    /* renamed from: p */
    public static int f2492p;

    /* renamed from: q */
    @Nullable
    public static Object[] f2493q;

    /* renamed from: r */
    public static int f2494r;

    /* renamed from: e */
    public int[] f2495e;

    /* renamed from: f */
    public Object[] f2496f;

    /* renamed from: g */
    public int f2497g;

    /* renamed from: h */
    public m8j<E, E> f2498h;

    /* renamed from: androidx.collection.ArraySet$a */
    /* loaded from: classes3.dex */
    public class C0373a extends m8j<E, E> {
        public C0373a() {
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: a */
        public void mo1304a() {
            ArraySet.this.clear();
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: b */
        public Object mo1305b(int i, int i2) {
            return ArraySet.this.f2496f[i];
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: c */
        public Map<E, E> mo1306c() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: d */
        public int mo1307d() {
            return ArraySet.this.f2497g;
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: e */
        public int mo1308e(Object obj) {
            return ArraySet.this.indexOf(obj);
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: f */
        public int mo1309f(Object obj) {
            return ArraySet.this.indexOf(obj);
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: g */
        public void mo1310g(E e, E e2) {
            ArraySet.this.add(e);
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: h */
        public void mo1311h(int i) {
            ArraySet.this.removeAt(i);
        }

        @Override // com.sunia.HTREnginev2.m8j
        /* renamed from: i */
        public E mo1312i(int i, E e) {
            throw new UnsupportedOperationException("not a map");
        }
    }

    public ArraySet() {
        this(0);
    }

    /* renamed from: b */
    public static void m1313b(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (ArraySet.class) {
                if (f2494r < 10) {
                    objArr[0] = f2493q;
                    objArr[1] = iArr;
                    for (int i2 = i - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f2493q = objArr;
                    f2494r++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (ArraySet.class) {
                if (f2492p < 10) {
                    objArr[0] = f2491o;
                    objArr[1] = iArr;
                    for (int i3 = i - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f2491o = objArr;
                    f2492p++;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m1314a(int i) {
        if (i == 8) {
            synchronized (ArraySet.class) {
                Object[] objArr = f2493q;
                if (objArr != null) {
                    this.f2496f = objArr;
                    f2493q = (Object[]) objArr[0];
                    this.f2495e = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f2494r--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (ArraySet.class) {
                Object[] objArr2 = f2491o;
                if (objArr2 != null) {
                    this.f2496f = objArr2;
                    f2491o = (Object[]) objArr2[0];
                    this.f2495e = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f2492p--;
                    return;
                }
            }
        }
        this.f2495e = new int[i];
        this.f2496f = new Object[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(@Nullable E e) {
        int i;
        int m1316d;
        if (e == null) {
            m1316d = m1317e();
            i = 0;
        } else {
            int hashCode = e.hashCode();
            i = hashCode;
            m1316d = m1316d(e, hashCode);
        }
        if (m1316d >= 0) {
            return false;
        }
        int i2 = ~m1316d;
        int i3 = this.f2497g;
        int[] iArr = this.f2495e;
        if (i3 >= iArr.length) {
            int i4 = 8;
            if (i3 >= 8) {
                i4 = (i3 >> 1) + i3;
            } else if (i3 < 4) {
                i4 = 4;
            }
            Object[] objArr = this.f2496f;
            m1314a(i4);
            int[] iArr2 = this.f2495e;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f2496f, 0, objArr.length);
            }
            m1313b(iArr, objArr, this.f2497g);
        }
        int i5 = this.f2497g;
        if (i2 < i5) {
            int[] iArr3 = this.f2495e;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr2 = this.f2496f;
            System.arraycopy(objArr2, i2, objArr2, i6, this.f2497g - i2);
        }
        this.f2495e[i2] = i;
        this.f2496f[i2] = e;
        this.f2497g++;
        return true;
    }

    public void addAll(@NonNull ArraySet<? extends E> arraySet) {
        int i = arraySet.f2497g;
        ensureCapacity(this.f2497g + i);
        if (this.f2497g != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                add(arraySet.valueAt(i2));
            }
        } else if (i > 0) {
            System.arraycopy(arraySet.f2495e, 0, this.f2495e, 0, i);
            System.arraycopy(arraySet.f2496f, 0, this.f2496f, 0, i);
            this.f2497g = i;
        }
    }

    /* renamed from: c */
    public final m8j<E, E> m1315c() {
        if (this.f2498h == null) {
            this.f2498h = new C0373a();
        }
        return this.f2498h;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i = this.f2497g;
        if (i != 0) {
            m1313b(this.f2495e, this.f2496f, i);
            this.f2495e = f2487k;
            this.f2496f = f2488l;
            this.f2497g = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(@Nullable Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public final int m1316d(Object obj, int i) {
        int i2 = this.f2497g;
        if (i2 == 0) {
            return -1;
        }
        int m55725a = nae.m55725a(this.f2495e, i2, i);
        if (m55725a < 0 || obj.equals(this.f2496f[m55725a])) {
            return m55725a;
        }
        int i3 = m55725a + 1;
        while (i3 < i2 && this.f2495e[i3] == i) {
            if (obj.equals(this.f2496f[i3])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = m55725a - 1; i4 >= 0 && this.f2495e[i4] == i; i4--) {
            if (obj.equals(this.f2496f[i4])) {
                return i4;
            }
        }
        return ~i3;
    }

    /* renamed from: e */
    public final int m1317e() {
        int i = this.f2497g;
        if (i == 0) {
            return -1;
        }
        int m55725a = nae.m55725a(this.f2495e, i, 0);
        if (m55725a < 0 || this.f2496f[m55725a] == null) {
            return m55725a;
        }
        int i2 = m55725a + 1;
        while (i2 < i && this.f2495e[i2] == 0) {
            if (this.f2496f[i2] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = m55725a - 1; i3 >= 0 && this.f2495e[i3] == 0; i3--) {
            if (this.f2496f[i3] == null) {
                return i3;
            }
        }
        return ~i2;
    }

    public void ensureCapacity(int i) {
        int[] iArr = this.f2495e;
        if (iArr.length < i) {
            Object[] objArr = this.f2496f;
            m1314a(i);
            int i2 = this.f2497g;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.f2495e, 0, i2);
                System.arraycopy(objArr, 0, this.f2496f, 0, this.f2497g);
            }
            m1313b(iArr, objArr, this.f2497g);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i = 0; i < this.f2497g; i++) {
                try {
                    if (!set.contains(valueAt(i))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f2495e;
        int i = this.f2497g;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public int indexOf(@Nullable Object obj) {
        return obj == null ? m1317e() : m1316d(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f2497g <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return m1315c().m55572m().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(@Nullable Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        removeAt(indexOf);
        return true;
    }

    public boolean removeAll(@NonNull ArraySet<? extends E> arraySet) {
        int i = arraySet.f2497g;
        int i2 = this.f2497g;
        for (int i3 = 0; i3 < i; i3++) {
            remove(arraySet.valueAt(i3));
        }
        return i2 != this.f2497g;
    }

    public E removeAt(int i) {
        Object[] objArr = this.f2496f;
        E e = (E) objArr[i];
        int i2 = this.f2497g;
        if (i2 <= 1) {
            m1313b(this.f2495e, objArr, i2);
            this.f2495e = f2487k;
            this.f2496f = f2488l;
            this.f2497g = 0;
        } else {
            int[] iArr = this.f2495e;
            if (iArr.length <= 8 || i2 >= iArr.length / 3) {
                int i3 = i2 - 1;
                this.f2497g = i3;
                if (i < i3) {
                    int i4 = i + 1;
                    System.arraycopy(iArr, i4, iArr, i, i3 - i);
                    Object[] objArr2 = this.f2496f;
                    System.arraycopy(objArr2, i4, objArr2, i, this.f2497g - i);
                }
                this.f2496f[this.f2497g] = null;
            } else {
                m1314a(i2 > 8 ? i2 + (i2 >> 1) : 8);
                this.f2497g--;
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f2495e, 0, i);
                    System.arraycopy(objArr, 0, this.f2496f, 0, i);
                }
                int i5 = this.f2497g;
                if (i < i5) {
                    int i6 = i + 1;
                    System.arraycopy(iArr, i6, this.f2495e, i, i5 - i);
                    System.arraycopy(objArr, i6, this.f2496f, i, this.f2497g - i);
                }
            }
        }
        return e;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(@NonNull Collection<?> collection) {
        boolean z = false;
        for (int i = this.f2497g - 1; i >= 0; i--) {
            if (!collection.contains(this.f2496f[i])) {
                removeAt(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f2497g;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public Object[] toArray() {
        int i = this.f2497g;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f2496f, 0, objArr, 0, i);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2497g * 14);
        sb.append('{');
        for (int i = 0; i < this.f2497g; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E valueAt = valueAt(i);
            if (valueAt != this) {
                sb.append(valueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Nullable
    public E valueAt(int i) {
        return (E) this.f2496f[i];
    }

    public ArraySet(int i) {
        if (i == 0) {
            this.f2495e = f2487k;
            this.f2496f = f2488l;
        } else {
            m1314a(i);
        }
        this.f2497g = 0;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public <T> T[] toArray(@NonNull T[] tArr) {
        if (tArr.length < this.f2497g) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f2497g));
        }
        System.arraycopy(this.f2496f, 0, tArr, 0, this.f2497g);
        int length = tArr.length;
        int i = this.f2497g;
        if (length > i) {
            tArr[i] = null;
        }
        return tArr;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(@NonNull Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            z |= remove(it2.next());
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable ArraySet<E> arraySet) {
        this();
        if (arraySet != 0) {
            addAll((ArraySet) arraySet);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(@NonNull Collection<? extends E> collection) {
        ensureCapacity(this.f2497g + collection.size());
        Iterator<? extends E> it2 = collection.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            z |= add(it2.next());
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }
}
