package com.bumptech.glide.load.engine.bitmap_recycle;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Preconditions;
import com.sunia.HTREnginev2.AbstractC14312qn;
import com.sunia.HTREnginev2.InterfaceC13482af;
import com.sunia.HTREnginev2.e5l;
import com.sunia.HTREnginev2.g6h;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class LruArrayPool implements ArrayPool {

    /* renamed from: g */
    public static final int f14640g = 4194304;

    /* renamed from: h */
    @VisibleForTesting
    public static final int f14641h = 8;

    /* renamed from: i */
    public static final int f14642i = 2;

    /* renamed from: a */
    public final g6h<C1938a, Object> f14643a;

    /* renamed from: b */
    public final C1939b f14644b;

    /* renamed from: c */
    public final Map<Class<?>, NavigableMap<Integer, Integer>> f14645c;

    /* renamed from: d */
    public final Map<Class<?>, InterfaceC13482af<?>> f14646d;

    /* renamed from: e */
    public final int f14647e;

    /* renamed from: f */
    public int f14648f;

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool$a */
    /* loaded from: classes3.dex */
    public static final class C1938a implements e5l {

        /* renamed from: a */
        public final C1939b f14649a;

        /* renamed from: b */
        public int f14650b;

        /* renamed from: c */
        public Class<?> f14651c;

        public C1938a(C1939b c1939b) {
            this.f14649a = c1939b;
        }

        @Override // com.sunia.HTREnginev2.e5l
        /* renamed from: a */
        public void mo8766a() {
            this.f14649a.m56729c(this);
        }

        /* renamed from: b */
        public void m8767b(int i, Class<?> cls) {
            this.f14650b = i;
            this.f14651c = cls;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C1938a)) {
                return false;
            }
            C1938a c1938a = (C1938a) obj;
            return this.f14650b == c1938a.f14650b && this.f14651c == c1938a.f14651c;
        }

        public int hashCode() {
            int i = this.f14650b * 31;
            Class<?> cls = this.f14651c;
            return i + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            return "Key{size=" + this.f14650b + "array=" + this.f14651c + '}';
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool$b */
    /* loaded from: classes3.dex */
    public static final class C1939b extends AbstractC14312qn<C1938a> {
        @Override // com.sunia.HTREnginev2.AbstractC14312qn
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public C1938a mo8768a() {
            return new C1938a(this);
        }

        /* renamed from: e */
        public C1938a m8770e(int i, Class<?> cls) {
            C1938a m56728b = m56728b();
            m56728b.m8767b(i, cls);
            return m56728b;
        }
    }

    @VisibleForTesting
    public LruArrayPool() {
        this.f14643a = new g6h<>();
        this.f14644b = new C1939b();
        this.f14645c = new HashMap();
        this.f14646d = new HashMap();
        this.f14647e = 4194304;
    }

    /* renamed from: a */
    public final void m8754a(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> m8762i = m8762i(cls);
        Integer num = m8762i.get(Integer.valueOf(i));
        if (num != null) {
            if (num.intValue() == 1) {
                m8762i.remove(Integer.valueOf(i));
                return;
            } else {
                m8762i.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
    }

    /* renamed from: b */
    public final void m8755b() {
        m8756c(this.f14647e);
    }

    /* renamed from: c */
    public final void m8756c(int i) {
        while (this.f14648f > i) {
            Object m54231f = this.f14643a.m54231f();
            Preconditions.checkNotNull(m54231f);
            InterfaceC13482af m8757d = m8757d(m54231f);
            this.f14648f -= m8757d.getArrayLength(m54231f) * m8757d.getElementSizeInBytes();
            m8754a(m8757d.getArrayLength(m54231f), m54231f.getClass());
            if (Log.isLoggable(m8757d.getTag(), 2)) {
                Log.v(m8757d.getTag(), "evicted: " + m8757d.getArrayLength(m54231f));
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized void clearMemory() {
        m8756c(0);
    }

    /* renamed from: d */
    public final <T> InterfaceC13482af<T> m8757d(T t) {
        return m8758e(t.getClass());
    }

    /* renamed from: e */
    public final <T> InterfaceC13482af<T> m8758e(Class<T> cls) {
        InterfaceC13482af<T> interfaceC13482af = (InterfaceC13482af) this.f14646d.get(cls);
        if (interfaceC13482af == null) {
            if (cls.equals(int[].class)) {
                interfaceC13482af = new IntegerArrayAdapter();
            } else {
                if (!cls.equals(byte[].class)) {
                    throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
                }
                interfaceC13482af = new ByteArrayAdapter();
            }
            this.f14646d.put(cls, interfaceC13482af);
        }
        return interfaceC13482af;
    }

    @Nullable
    /* renamed from: f */
    public final <T> T m8759f(C1938a c1938a) {
        return (T) this.f14643a.m54227a(c1938a);
    }

    /* renamed from: g */
    public int m8760g() {
        int i = 0;
        for (Class<?> cls : this.f14645c.keySet()) {
            for (Integer num : this.f14645c.get(cls).keySet()) {
                i += num.intValue() * this.f14645c.get(cls).get(num).intValue() * m8758e(cls).getElementSizeInBytes();
            }
        }
        return i;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized <T> T get(int i, Class<T> cls) {
        Integer ceilingKey;
        ceilingKey = m8762i(cls).ceilingKey(Integer.valueOf(i));
        return (T) m8761h(m8765l(i, ceilingKey) ? this.f14644b.m8770e(ceilingKey.intValue(), cls) : this.f14644b.m8770e(i, cls), cls);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized <T> T getExact(int i, Class<T> cls) {
        return (T) m8761h(this.f14644b.m8770e(i, cls), cls);
    }

    /* renamed from: h */
    public final <T> T m8761h(C1938a c1938a, Class<T> cls) {
        InterfaceC13482af<T> m8758e = m8758e(cls);
        T t = (T) m8759f(c1938a);
        if (t != null) {
            this.f14648f -= m8758e.getArrayLength(t) * m8758e.getElementSizeInBytes();
            m8754a(m8758e.getArrayLength(t), cls);
        }
        if (t != null) {
            return t;
        }
        if (Log.isLoggable(m8758e.getTag(), 2)) {
            Log.v(m8758e.getTag(), "Allocated " + c1938a.f14650b + " bytes");
        }
        return m8758e.newArray(c1938a.f14650b);
    }

    /* renamed from: i */
    public final NavigableMap<Integer, Integer> m8762i(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f14645c.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f14645c.put(cls, treeMap);
        return treeMap;
    }

    /* renamed from: j */
    public final boolean m8763j() {
        int i = this.f14648f;
        return i == 0 || this.f14647e / i >= 2;
    }

    /* renamed from: k */
    public final boolean m8764k(int i) {
        return i <= this.f14647e / 2;
    }

    /* renamed from: l */
    public final boolean m8765l(int i, Integer num) {
        return num != null && (m8763j() || num.intValue() <= i * 8);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    @Deprecated
    public <T> void put(T t, Class<T> cls) {
        put(t);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized void trimMemory(int i) {
        try {
            if (i >= 40) {
                clearMemory();
            } else if (i >= 20 || i == 15) {
                m8756c(this.f14647e / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized <T> void put(T t) {
        Class<?> cls = t.getClass();
        InterfaceC13482af<T> m8758e = m8758e(cls);
        int arrayLength = m8758e.getArrayLength(t);
        int elementSizeInBytes = m8758e.getElementSizeInBytes() * arrayLength;
        if (m8764k(elementSizeInBytes)) {
            C1938a m8770e = this.f14644b.m8770e(arrayLength, cls);
            this.f14643a.m54230d(m8770e, t);
            NavigableMap<Integer, Integer> m8762i = m8762i(cls);
            Integer num = m8762i.get(Integer.valueOf(m8770e.f14650b));
            Integer valueOf = Integer.valueOf(m8770e.f14650b);
            int i = 1;
            if (num != null) {
                i = 1 + num.intValue();
            }
            m8762i.put(valueOf, Integer.valueOf(i));
            this.f14648f += elementSizeInBytes;
            m8755b();
        }
    }

    public LruArrayPool(int i) {
        this.f14643a = new g6h<>();
        this.f14644b = new C1939b();
        this.f14645c = new HashMap();
        this.f14646d = new HashMap();
        this.f14647e = i;
    }
}
