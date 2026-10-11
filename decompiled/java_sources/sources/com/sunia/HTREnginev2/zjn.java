package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Ordering;
import com.google.common.math.IntMath;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class zjn<T> {

    /* renamed from: a */
    public final int f91880a;

    /* renamed from: b */
    public final Comparator<? super T> f91881b;

    /* renamed from: c */
    public final T[] f91882c;

    /* renamed from: d */
    public int f91883d;

    /* renamed from: e */
    @CheckForNull
    public T f91884e;

    public zjn(Comparator<? super T> comparator, int i) {
        this.f91881b = (Comparator) Preconditions.checkNotNull(comparator, "comparator");
        this.f91880a = i;
        Preconditions.checkArgument(i >= 0, "k (%s) must be >= 0", i);
        Preconditions.checkArgument(i <= 1073741823, "k (%s) must be <= Integer.MAX_VALUE / 2", i);
        this.f91882c = (T[]) new Object[IntMath.checkedMultiply(i, 2)];
        this.f91883d = 0;
        this.f91884e = null;
    }

    /* renamed from: b */
    public static <T extends Comparable<? super T>> zjn<T> m58697b(int i) {
        return m58698c(i, Ordering.natural());
    }

    /* renamed from: c */
    public static <T> zjn<T> m58698c(int i, Comparator<? super T> comparator) {
        return new zjn<>(Ordering.from(comparator).reverse(), i);
    }

    /* renamed from: d */
    public static <T extends Comparable<? super T>> zjn<T> m58699d(int i) {
        return m58700e(i, Ordering.natural());
    }

    /* renamed from: e */
    public static <T> zjn<T> m58700e(int i, Comparator<? super T> comparator) {
        return new zjn<>(comparator, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public zjn<T> m58701a(zjn<T> zjnVar) {
        for (int i = 0; i < zjnVar.f91883d; i++) {
            m58702f(p5k.m56213a(zjnVar.f91882c[i]));
        }
        return this;
    }

    /* renamed from: f */
    public void m58702f(@xvk T t) {
        int i = this.f91880a;
        if (i == 0) {
            return;
        }
        int i2 = this.f91883d;
        if (i2 == 0) {
            this.f91882c[0] = t;
            this.f91884e = t;
            this.f91883d = 1;
            return;
        }
        if (i2 < i) {
            T[] tArr = this.f91882c;
            this.f91883d = i2 + 1;
            tArr[i2] = t;
            if (this.f91881b.compare(t, (Object) p5k.m56213a(this.f91884e)) > 0) {
                this.f91884e = t;
                return;
            }
            return;
        }
        if (this.f91881b.compare(t, (Object) p5k.m56213a(this.f91884e)) < 0) {
            T[] tArr2 = this.f91882c;
            int i3 = this.f91883d;
            int i4 = i3 + 1;
            this.f91883d = i4;
            tArr2[i3] = t;
            if (i4 == this.f91880a * 2) {
                m58708l();
            }
        }
    }

    /* renamed from: g */
    public void m58703g(Iterable<? extends T> iterable) {
        m58704h(iterable.iterator());
    }

    /* renamed from: h */
    public void m58704h(Iterator<? extends T> it2) {
        while (it2.hasNext()) {
            m58702f(it2.next());
        }
    }

    /* renamed from: i */
    public final int m58705i(int i, int i2, int i3) {
        Object m56213a = p5k.m56213a(this.f91882c[i3]);
        T[] tArr = this.f91882c;
        tArr[i3] = tArr[i2];
        int i4 = i;
        while (i < i2) {
            if (this.f91881b.compare((Object) p5k.m56213a(this.f91882c[i]), m56213a) < 0) {
                m58706j(i4, i);
                i4++;
            }
            i++;
        }
        T[] tArr2 = this.f91882c;
        tArr2[i2] = tArr2[i4];
        tArr2[i4] = m56213a;
        return i4;
    }

    /* renamed from: j */
    public final void m58706j(int i, int i2) {
        T[] tArr = this.f91882c;
        T t = tArr[i];
        tArr[i] = tArr[i2];
        tArr[i2] = t;
    }

    /* renamed from: k */
    public List<T> m58707k() {
        Arrays.sort(this.f91882c, 0, this.f91883d, this.f91881b);
        int i = this.f91883d;
        int i2 = this.f91880a;
        if (i > i2) {
            T[] tArr = this.f91882c;
            Arrays.fill(tArr, i2, tArr.length, (Object) null);
            int i3 = this.f91880a;
            this.f91883d = i3;
            this.f91884e = this.f91882c[i3 - 1];
        }
        return Collections.unmodifiableList(Arrays.asList(Arrays.copyOf(this.f91882c, this.f91883d)));
    }

    /* renamed from: l */
    public final void m58708l() {
        int i = (this.f91880a * 2) - 1;
        int log2 = IntMath.log2(i + 0, RoundingMode.CEILING) * 3;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            int m58705i = m58705i(i2, i, ((i2 + i) + 1) >>> 1);
            int i5 = this.f91880a;
            if (m58705i <= i5) {
                if (m58705i >= i5) {
                    break;
                }
                i2 = Math.max(m58705i, i2 + 1);
                i4 = m58705i;
            } else {
                i = m58705i - 1;
            }
            i3++;
            if (i3 >= log2) {
                Arrays.sort(this.f91882c, i2, i + 1, this.f91881b);
                break;
            }
        }
        this.f91883d = this.f91880a;
        this.f91884e = (T) p5k.m56213a(this.f91882c[i4]);
        while (true) {
            i4++;
            if (i4 >= this.f91880a) {
                return;
            }
            if (this.f91881b.compare((Object) p5k.m56213a(this.f91882c[i4]), (Object) p5k.m56213a(this.f91884e)) > 0) {
                this.f91884e = this.f91882c[i4];
            }
        }
    }
}
