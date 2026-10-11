package androidx.recyclerview.widget;

import androidx.core.util.Pools;
import androidx.recyclerview.widget.C1384i;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.collections4.IteratorUtils;

/* renamed from: androidx.recyclerview.widget.a */
/* loaded from: classes3.dex */
public final class C1376a implements C1384i.a {

    /* renamed from: i */
    public static final int f9838i = 0;

    /* renamed from: j */
    public static final int f9839j = 1;

    /* renamed from: k */
    public static final boolean f9840k = false;

    /* renamed from: l */
    public static final String f9841l = "AHT";

    /* renamed from: a */
    public Pools.Pool<b> f9842a;

    /* renamed from: b */
    public final ArrayList<b> f9843b;

    /* renamed from: c */
    public final ArrayList<b> f9844c;

    /* renamed from: d */
    public final a f9845d;

    /* renamed from: e */
    public Runnable f9846e;

    /* renamed from: f */
    public final boolean f9847f;

    /* renamed from: g */
    public final C1384i f9848g;

    /* renamed from: h */
    public int f9849h;

    /* renamed from: androidx.recyclerview.widget.a$a */
    /* loaded from: classes3.dex */
    public interface a {
        /* renamed from: a */
        void mo5913a(int i, int i2);

        /* renamed from: b */
        void mo5914b(b bVar);

        /* renamed from: c */
        void mo5915c(b bVar);

        /* renamed from: d */
        void mo5916d(int i, int i2);

        /* renamed from: e */
        void mo5917e(int i, int i2, Object obj);

        /* renamed from: f */
        RecyclerView.ViewHolder mo5918f(int i);

        /* renamed from: g */
        void mo5919g(int i, int i2);

        /* renamed from: h */
        void mo5920h(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.a$b */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: e */
        public static final int f9850e = 1;

        /* renamed from: f */
        public static final int f9851f = 2;

        /* renamed from: g */
        public static final int f9852g = 4;

        /* renamed from: h */
        public static final int f9853h = 8;

        /* renamed from: i */
        public static final int f9854i = 30;

        /* renamed from: a */
        public int f9855a;

        /* renamed from: b */
        public int f9856b;

        /* renamed from: c */
        public Object f9857c;

        /* renamed from: d */
        public int f9858d;

        public b(int i, int i2, int i3, Object obj) {
            this.f9855a = i;
            this.f9856b = i2;
            this.f9858d = i3;
            this.f9857c = obj;
        }

        /* renamed from: a */
        public String m6110a() {
            int i = this.f9855a;
            return i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : FileTypeConstant.f42050RM : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            int i = this.f9855a;
            if (i != bVar.f9855a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f9858d - this.f9856b) == 1 && this.f9858d == bVar.f9856b && this.f9856b == bVar.f9858d) {
                return true;
            }
            if (this.f9858d != bVar.f9858d || this.f9856b != bVar.f9856b) {
                return false;
            }
            Object obj2 = this.f9857c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f9857c)) {
                    return false;
                }
            } else if (bVar.f9857c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f9855a * 31) + this.f9856b) * 31) + this.f9858d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + IteratorUtils.f104923a + m6110a() + ",s:" + this.f9856b + "c:" + this.f9858d + ",p:" + this.f9857c + IteratorUtils.f104924b;
        }
    }

    public C1376a(a aVar) {
        this(aVar, false);
    }

    /* renamed from: A */
    public final int m6083A(int i, int i2) {
        int i3;
        int i4;
        for (int size = this.f9844c.size() - 1; size >= 0; size--) {
            b bVar = this.f9844c.get(size);
            int i5 = bVar.f9855a;
            if (i5 == 8) {
                int i6 = bVar.f9856b;
                int i7 = bVar.f9858d;
                if (i6 < i7) {
                    i4 = i6;
                    i3 = i7;
                } else {
                    i3 = i6;
                    i4 = i7;
                }
                if (i < i4 || i > i3) {
                    if (i < i6) {
                        if (i2 == 1) {
                            bVar.f9856b = i6 + 1;
                            bVar.f9858d = i7 + 1;
                        } else if (i2 == 2) {
                            bVar.f9856b = i6 - 1;
                            bVar.f9858d = i7 - 1;
                        }
                    }
                } else if (i4 == i6) {
                    if (i2 == 1) {
                        bVar.f9858d = i7 + 1;
                    } else if (i2 == 2) {
                        bVar.f9858d = i7 - 1;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        bVar.f9856b = i6 + 1;
                    } else if (i2 == 2) {
                        bVar.f9856b = i6 - 1;
                    }
                    i--;
                }
            } else {
                int i8 = bVar.f9856b;
                if (i8 <= i) {
                    if (i5 == 1) {
                        i -= bVar.f9858d;
                    } else if (i5 == 2) {
                        i += bVar.f9858d;
                    }
                } else if (i2 == 1) {
                    bVar.f9856b = i8 + 1;
                } else if (i2 == 2) {
                    bVar.f9856b = i8 - 1;
                }
            }
        }
        for (int size2 = this.f9844c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f9844c.get(size2);
            if (bVar2.f9855a == 8) {
                int i9 = bVar2.f9858d;
                if (i9 == bVar2.f9856b || i9 < 0) {
                    this.f9844c.remove(size2);
                    mo6084a(bVar2);
                }
            } else if (bVar2.f9858d <= 0) {
                this.f9844c.remove(size2);
                mo6084a(bVar2);
            }
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.C1384i.a
    /* renamed from: a */
    public void mo6084a(b bVar) {
        if (this.f9847f) {
            return;
        }
        bVar.f9857c = null;
        this.f9842a.release(bVar);
    }

    @Override // androidx.recyclerview.widget.C1384i.a
    /* renamed from: b */
    public b mo6085b(int i, int i2, int i3, Object obj) {
        b acquire = this.f9842a.acquire();
        if (acquire == null) {
            return new b(i, i2, i3, obj);
        }
        acquire.f9855a = i;
        acquire.f9856b = i2;
        acquire.f9858d = i3;
        acquire.f9857c = obj;
        return acquire;
    }

    /* renamed from: c */
    public C1376a m6086c(b... bVarArr) {
        Collections.addAll(this.f9843b, bVarArr);
        return this;
    }

    /* renamed from: d */
    public final void m6087d(b bVar) {
        m6106w(bVar);
    }

    /* renamed from: e */
    public final void m6088e(b bVar) {
        m6106w(bVar);
    }

    /* renamed from: f */
    public int m6089f(int i) {
        int size = this.f9843b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f9843b.get(i2);
            int i3 = bVar.f9855a;
            if (i3 != 1) {
                if (i3 == 2) {
                    int i4 = bVar.f9856b;
                    if (i4 <= i) {
                        int i5 = bVar.f9858d;
                        if (i4 + i5 > i) {
                            return -1;
                        }
                        i -= i5;
                    } else {
                        continue;
                    }
                } else if (i3 == 8) {
                    int i6 = bVar.f9856b;
                    if (i6 == i) {
                        i = bVar.f9858d;
                    } else {
                        if (i6 < i) {
                            i--;
                        }
                        if (bVar.f9858d <= i) {
                            i++;
                        }
                    }
                }
            } else if (bVar.f9856b <= i) {
                i += bVar.f9858d;
            }
        }
        return i;
    }

    /* renamed from: g */
    public final void m6090g(b bVar) {
        boolean z;
        char c;
        int i = bVar.f9856b;
        int i2 = bVar.f9858d + i;
        char c2 = 65535;
        int i3 = i;
        int i4 = 0;
        while (i3 < i2) {
            if (this.f9845d.mo5918f(i3) != null || m6092i(i3)) {
                if (c2 == 0) {
                    m6095l(mo6085b(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 1;
            } else {
                if (c2 == 1) {
                    m6106w(mo6085b(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 0;
            }
            if (z) {
                i3 -= i4;
                i2 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i3++;
            c2 = c;
        }
        if (i4 != bVar.f9858d) {
            mo6084a(bVar);
            bVar = mo6085b(2, i, i4, null);
        }
        if (c2 == 0) {
            m6095l(bVar);
        } else {
            m6106w(bVar);
        }
    }

    /* renamed from: h */
    public final void m6091h(b bVar) {
        int i = bVar.f9856b;
        int i2 = bVar.f9858d + i;
        int i3 = 0;
        boolean z = -1;
        int i4 = i;
        while (i < i2) {
            if (this.f9845d.mo5918f(i) != null || m6092i(i)) {
                if (!z) {
                    m6095l(mo6085b(4, i4, i3, bVar.f9857c));
                    i4 = i;
                    i3 = 0;
                }
                z = true;
            } else {
                if (z) {
                    m6106w(mo6085b(4, i4, i3, bVar.f9857c));
                    i4 = i;
                    i3 = 0;
                }
                z = false;
            }
            i3++;
            i++;
        }
        if (i3 != bVar.f9858d) {
            Object obj = bVar.f9857c;
            mo6084a(bVar);
            bVar = mo6085b(4, i4, i3, obj);
        }
        if (z) {
            m6106w(bVar);
        } else {
            m6095l(bVar);
        }
    }

    /* renamed from: i */
    public final boolean m6092i(int i) {
        int size = this.f9844c.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f9844c.get(i2);
            int i3 = bVar.f9855a;
            if (i3 == 8) {
                if (m6098o(bVar.f9858d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = bVar.f9856b;
                int i5 = bVar.f9858d + i4;
                while (i4 < i5) {
                    if (m6098o(i4, i2 + 1) == i) {
                        return true;
                    }
                    i4++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    /* renamed from: j */
    public void m6093j() {
        int size = this.f9844c.size();
        for (int i = 0; i < size; i++) {
            this.f9845d.mo5915c(this.f9844c.get(i));
        }
        m6108y(this.f9844c);
        this.f9849h = 0;
    }

    /* renamed from: k */
    public void m6094k() {
        m6093j();
        int size = this.f9843b.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f9843b.get(i);
            int i2 = bVar.f9855a;
            if (i2 == 1) {
                this.f9845d.mo5915c(bVar);
                this.f9845d.mo5919g(bVar.f9856b, bVar.f9858d);
            } else if (i2 == 2) {
                this.f9845d.mo5915c(bVar);
                this.f9845d.mo5916d(bVar.f9856b, bVar.f9858d);
            } else if (i2 == 4) {
                this.f9845d.mo5915c(bVar);
                this.f9845d.mo5917e(bVar.f9856b, bVar.f9858d, bVar.f9857c);
            } else if (i2 == 8) {
                this.f9845d.mo5915c(bVar);
                this.f9845d.mo5913a(bVar.f9856b, bVar.f9858d);
            }
            Runnable runnable = this.f9846e;
            if (runnable != null) {
                runnable.run();
            }
        }
        m6108y(this.f9843b);
        this.f9849h = 0;
    }

    /* renamed from: l */
    public final void m6095l(b bVar) {
        int i;
        int i2 = bVar.f9855a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int m6083A = m6083A(bVar.f9856b, i2);
        int i3 = bVar.f9856b;
        int i4 = bVar.f9855a;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            }
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < bVar.f9858d; i6++) {
            int m6083A2 = m6083A(bVar.f9856b + (i * i6), bVar.f9855a);
            int i7 = bVar.f9855a;
            if (i7 == 2 ? m6083A2 == m6083A : i7 == 4 && m6083A2 == m6083A + 1) {
                i5++;
            } else {
                b mo6085b = mo6085b(i7, m6083A, i5, bVar.f9857c);
                m6096m(mo6085b, i3);
                mo6084a(mo6085b);
                if (bVar.f9855a == 4) {
                    i3 += i5;
                }
                i5 = 1;
                m6083A = m6083A2;
            }
        }
        Object obj = bVar.f9857c;
        mo6084a(bVar);
        if (i5 > 0) {
            b mo6085b2 = mo6085b(bVar.f9855a, m6083A, i5, obj);
            m6096m(mo6085b2, i3);
            mo6084a(mo6085b2);
        }
    }

    /* renamed from: m */
    public void m6096m(b bVar, int i) {
        this.f9845d.mo5914b(bVar);
        int i2 = bVar.f9855a;
        if (i2 == 2) {
            this.f9845d.mo5916d(i, bVar.f9858d);
        } else {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.f9845d.mo5917e(i, bVar.f9858d, bVar.f9857c);
        }
    }

    /* renamed from: n */
    public int m6097n(int i) {
        return m6098o(i, 0);
    }

    /* renamed from: o */
    public int m6098o(int i, int i2) {
        int size = this.f9844c.size();
        while (i2 < size) {
            b bVar = this.f9844c.get(i2);
            int i3 = bVar.f9855a;
            if (i3 == 8) {
                int i4 = bVar.f9856b;
                if (i4 == i) {
                    i = bVar.f9858d;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (bVar.f9858d <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = bVar.f9856b;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = bVar.f9858d;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += bVar.f9858d;
                }
            }
            i2++;
        }
        return i;
    }

    /* renamed from: p */
    public boolean m6099p(int i) {
        return (this.f9849h & i) != 0;
    }

    /* renamed from: q */
    public boolean m6100q() {
        return this.f9843b.size() > 0;
    }

    /* renamed from: r */
    public boolean m6101r() {
        return (this.f9844c.isEmpty() || this.f9843b.isEmpty()) ? false : true;
    }

    /* renamed from: s */
    public boolean m6102s(int i, int i2, Object obj) {
        if (i2 < 1) {
            return false;
        }
        this.f9843b.add(mo6085b(4, i, i2, obj));
        this.f9849h |= 4;
        return this.f9843b.size() == 1;
    }

    /* renamed from: t */
    public boolean m6103t(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.f9843b.add(mo6085b(1, i, i2, null));
        this.f9849h |= 1;
        return this.f9843b.size() == 1;
    }

    /* renamed from: u */
    public boolean m6104u(int i, int i2, int i3) {
        if (i == i2) {
            return false;
        }
        if (i3 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.f9843b.add(mo6085b(8, i, i2, null));
        this.f9849h |= 8;
        return this.f9843b.size() == 1;
    }

    /* renamed from: v */
    public boolean m6105v(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.f9843b.add(mo6085b(2, i, i2, null));
        this.f9849h |= 2;
        return this.f9843b.size() == 1;
    }

    /* renamed from: w */
    public final void m6106w(b bVar) {
        this.f9844c.add(bVar);
        int i = bVar.f9855a;
        if (i == 1) {
            this.f9845d.mo5919g(bVar.f9856b, bVar.f9858d);
            return;
        }
        if (i == 2) {
            this.f9845d.mo5920h(bVar.f9856b, bVar.f9858d);
            return;
        }
        if (i == 4) {
            this.f9845d.mo5917e(bVar.f9856b, bVar.f9858d, bVar.f9857c);
        } else {
            if (i == 8) {
                this.f9845d.mo5913a(bVar.f9856b, bVar.f9858d);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    /* renamed from: x */
    public void m6107x() {
        this.f9848g.m6237b(this.f9843b);
        int size = this.f9843b.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f9843b.get(i);
            int i2 = bVar.f9855a;
            if (i2 == 1) {
                m6087d(bVar);
            } else if (i2 == 2) {
                m6090g(bVar);
            } else if (i2 == 4) {
                m6091h(bVar);
            } else if (i2 == 8) {
                m6088e(bVar);
            }
            Runnable runnable = this.f9846e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f9843b.clear();
    }

    /* renamed from: y */
    public void m6108y(List<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            mo6084a(list.get(i));
        }
        list.clear();
    }

    /* renamed from: z */
    public void m6109z() {
        m6108y(this.f9843b);
        m6108y(this.f9844c);
        this.f9849h = 0;
    }

    public C1376a(a aVar, boolean z) {
        this.f9842a = new Pools.SimplePool(30);
        this.f9843b = new ArrayList<>();
        this.f9844c = new ArrayList<>();
        this.f9849h = 0;
        this.f9845d = aVar;
        this.f9847f = z;
        this.f9848g = new C1384i(this);
    }
}
