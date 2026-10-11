package com.sunia.HTREnginev2;

import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;

/* loaded from: classes10.dex */
public final class q3l<K, V> {

    /* renamed from: a */
    public final InterfaceC14278d<K, V> f81577a;

    /* renamed from: com.sunia.HTREnginev2.q3l$a */
    /* loaded from: classes10.dex */
    public static final class C14275a<K, V> implements InterfaceC14278d<K, V> {

        /* renamed from: c */
        public static final /* synthetic */ boolean f81578c = false;

        /* renamed from: a */
        public final K[] f81579a;

        /* renamed from: b */
        public final V[] f81580b;

        public C14275a(K k, V v, K k2, V v2) {
            this(new Object[]{k, k2}, new Object[]{v, v2});
        }

        @Override // com.sunia.HTREnginev2.q3l.InterfaceC14278d
        /* renamed from: a */
        public InterfaceC14278d<K, V> mo56598a(K k, V v, int i, int i2) {
            int hashCode = this.f81579a[0].hashCode();
            if (hashCode != i) {
                return C14276b.m56601c(new C14277c(k, v), i, this, hashCode, i2);
            }
            int m56600c = m56600c(k);
            if (m56600c != -1) {
                K[] kArr = this.f81579a;
                Object[] copyOf = Arrays.copyOf(kArr, kArr.length);
                Object[] copyOf2 = Arrays.copyOf(this.f81580b, this.f81579a.length);
                copyOf[m56600c] = k;
                copyOf2[m56600c] = v;
                return new C14275a(copyOf, copyOf2);
            }
            K[] kArr2 = this.f81579a;
            Object[] copyOf3 = Arrays.copyOf(kArr2, kArr2.length + 1);
            Object[] copyOf4 = Arrays.copyOf(this.f81580b, this.f81579a.length + 1);
            K[] kArr3 = this.f81579a;
            copyOf3[kArr3.length] = k;
            copyOf4[kArr3.length] = v;
            return new C14275a(copyOf3, copyOf4);
        }

        @Override // com.sunia.HTREnginev2.q3l.InterfaceC14278d
        /* renamed from: b */
        public V mo56599b(K k, int i, int i2) {
            int i3 = 0;
            while (true) {
                K[] kArr = this.f81579a;
                if (i3 >= kArr.length) {
                    return null;
                }
                if (kArr[i3] == k) {
                    return this.f81580b[i3];
                }
                i3++;
            }
        }

        /* renamed from: c */
        public final int m56600c(K k) {
            int i = 0;
            while (true) {
                K[] kArr = this.f81579a;
                if (i >= kArr.length) {
                    return -1;
                }
                if (kArr[i] == k) {
                    return i;
                }
                i++;
            }
        }

        @Override // com.sunia.HTREnginev2.q3l.InterfaceC14278d
        public int size() {
            return this.f81580b.length;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("CollisionLeaf(");
            for (int i = 0; i < this.f81580b.length; i++) {
                sb.append("(key=");
                sb.append(this.f81579a[i]);
                sb.append(" value=");
                sb.append(this.f81580b[i]);
                sb.append(") ");
            }
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }

        public C14275a(K[] kArr, V[] vArr) {
            this.f81579a = kArr;
            this.f81580b = vArr;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.q3l$b */
    /* loaded from: classes10.dex */
    public static final class C14276b<K, V> implements InterfaceC14278d<K, V> {

        /* renamed from: d */
        public static final int f81581d = 5;

        /* renamed from: e */
        public static final int f81582e = 31;

        /* renamed from: f */
        public static final /* synthetic */ boolean f81583f = false;

        /* renamed from: a */
        public final int f81584a;

        /* renamed from: b */
        public final InterfaceC14278d<K, V>[] f81585b;

        /* renamed from: c */
        public final int f81586c;

        public C14276b(int i, InterfaceC14278d<K, V>[] interfaceC14278dArr, int i2) {
            this.f81584a = i;
            this.f81585b = interfaceC14278dArr;
            this.f81586c = i2;
        }

        /* renamed from: c */
        public static <K, V> InterfaceC14278d<K, V> m56601c(InterfaceC14278d<K, V> interfaceC14278d, int i, InterfaceC14278d<K, V> interfaceC14278d2, int i2, int i3) {
            int m56602e = m56602e(i, i3);
            int m56602e2 = m56602e(i2, i3);
            if (m56602e == m56602e2) {
                InterfaceC14278d m56601c = m56601c(interfaceC14278d, i, interfaceC14278d2, i2, i3 + 5);
                return new C14276b(m56602e, new InterfaceC14278d[]{m56601c}, m56601c.size());
            }
            if (m56603f(i, i3) > m56603f(i2, i3)) {
                interfaceC14278d2 = interfaceC14278d;
                interfaceC14278d = interfaceC14278d2;
            }
            return new C14276b(m56602e | m56602e2, new InterfaceC14278d[]{interfaceC14278d, interfaceC14278d2}, interfaceC14278d.size() + interfaceC14278d2.size());
        }

        /* renamed from: e */
        public static int m56602e(int i, int i2) {
            return 1 << m56603f(i, i2);
        }

        /* renamed from: f */
        public static int m56603f(int i, int i2) {
            return (i >>> i2) & 31;
        }

        @Override // com.sunia.HTREnginev2.q3l.InterfaceC14278d
        /* renamed from: a */
        public InterfaceC14278d<K, V> mo56598a(K k, V v, int i, int i2) {
            int m56602e = m56602e(i, i2);
            int m56604d = m56604d(m56602e);
            int i3 = this.f81584a;
            if ((i3 & m56602e) != 0) {
                InterfaceC14278d<K, V>[] interfaceC14278dArr = this.f81585b;
                InterfaceC14278d[] interfaceC14278dArr2 = (InterfaceC14278d[]) Arrays.copyOf(interfaceC14278dArr, interfaceC14278dArr.length);
                interfaceC14278dArr2[m56604d] = this.f81585b[m56604d].mo56598a(k, v, i, i2 + 5);
                return new C14276b(this.f81584a, interfaceC14278dArr2, (size() + interfaceC14278dArr2[m56604d].size()) - this.f81585b[m56604d].size());
            }
            int i4 = i3 | m56602e;
            InterfaceC14278d<K, V>[] interfaceC14278dArr3 = this.f81585b;
            InterfaceC14278d[] interfaceC14278dArr4 = new InterfaceC14278d[interfaceC14278dArr3.length + 1];
            System.arraycopy(interfaceC14278dArr3, 0, interfaceC14278dArr4, 0, m56604d);
            interfaceC14278dArr4[m56604d] = new C14277c(k, v);
            InterfaceC14278d<K, V>[] interfaceC14278dArr5 = this.f81585b;
            System.arraycopy(interfaceC14278dArr5, m56604d, interfaceC14278dArr4, m56604d + 1, interfaceC14278dArr5.length - m56604d);
            return new C14276b(i4, interfaceC14278dArr4, size() + 1);
        }

        @Override // com.sunia.HTREnginev2.q3l.InterfaceC14278d
        /* renamed from: b */
        public V mo56599b(K k, int i, int i2) {
            int m56602e = m56602e(i, i2);
            if ((this.f81584a & m56602e) == 0) {
                return null;
            }
            return this.f81585b[m56604d(m56602e)].mo56599b(k, i, i2 + 5);
        }

        /* renamed from: d */
        public final int m56604d(int i) {
            return Integer.bitCount(this.f81584a & (i - 1));
        }

        @Override // com.sunia.HTREnginev2.q3l.InterfaceC14278d
        public int size() {
            return this.f81586c;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("CompressedIndex(");
            sb.append(String.format("bitmap=%s ", Integer.toBinaryString(this.f81584a)));
            for (InterfaceC14278d<K, V> interfaceC14278d : this.f81585b) {
                sb.append(interfaceC14278d);
                sb.append(" ");
            }
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.q3l$c */
    /* loaded from: classes10.dex */
    public static final class C14277c<K, V> implements InterfaceC14278d<K, V> {

        /* renamed from: a */
        public final K f81587a;

        /* renamed from: b */
        public final V f81588b;

        public C14277c(K k, V v) {
            this.f81587a = k;
            this.f81588b = v;
        }

        @Override // com.sunia.HTREnginev2.q3l.InterfaceC14278d
        /* renamed from: a */
        public InterfaceC14278d<K, V> mo56598a(K k, V v, int i, int i2) {
            int hashCode = this.f81587a.hashCode();
            return hashCode != i ? C14276b.m56601c(new C14277c(k, v), i, this, hashCode, i2) : this.f81587a == k ? new C14277c(k, v) : new C14275a(this.f81587a, this.f81588b, k, v);
        }

        @Override // com.sunia.HTREnginev2.q3l.InterfaceC14278d
        /* renamed from: b */
        public V mo56599b(K k, int i, int i2) {
            if (this.f81587a == k) {
                return this.f81588b;
            }
            return null;
        }

        @Override // com.sunia.HTREnginev2.q3l.InterfaceC14278d
        public int size() {
            return 1;
        }

        public String toString() {
            return String.format("Leaf(key=%s value=%s)", this.f81587a, this.f81588b);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.q3l$d */
    /* loaded from: classes10.dex */
    public interface InterfaceC14278d<K, V> {
        /* renamed from: a */
        InterfaceC14278d<K, V> mo56598a(K k, V v, int i, int i2);

        /* renamed from: b */
        V mo56599b(K k, int i, int i2);

        int size();
    }

    public q3l() {
        this(null);
    }

    /* renamed from: a */
    public V m56595a(K k) {
        InterfaceC14278d<K, V> interfaceC14278d = this.f81577a;
        if (interfaceC14278d == null) {
            return null;
        }
        return interfaceC14278d.mo56599b(k, k.hashCode(), 0);
    }

    /* renamed from: b */
    public q3l<K, V> m56596b(K k, V v) {
        InterfaceC14278d<K, V> interfaceC14278d = this.f81577a;
        return interfaceC14278d == null ? new q3l<>(new C14277c(k, v)) : new q3l<>(interfaceC14278d.mo56598a(k, v, k.hashCode(), 0));
    }

    /* renamed from: c */
    public int m56597c() {
        InterfaceC14278d<K, V> interfaceC14278d = this.f81577a;
        if (interfaceC14278d == null) {
            return 0;
        }
        return interfaceC14278d.size();
    }

    public q3l(InterfaceC14278d<K, V> interfaceC14278d) {
        this.f81577a = interfaceC14278d;
    }
}
