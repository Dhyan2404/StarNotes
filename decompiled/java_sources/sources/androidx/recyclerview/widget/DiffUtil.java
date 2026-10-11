package androidx.recyclerview.widget;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class DiffUtil {

    /* renamed from: a */
    public static final Comparator<C1325c> f9283a = new C1323a();

    /* loaded from: classes3.dex */
    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int i, int i2);

        public abstract boolean areItemsTheSame(int i, int i2);

        @Nullable
        public Object getChangePayload(int i, int i2) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    /* loaded from: classes3.dex */
    public static class DiffResult {
        public static final int NO_POSITION = -1;

        /* renamed from: h */
        public static final int f9284h = 1;

        /* renamed from: i */
        public static final int f9285i = 2;

        /* renamed from: j */
        public static final int f9286j = 4;

        /* renamed from: k */
        public static final int f9287k = 8;

        /* renamed from: l */
        public static final int f9288l = 12;

        /* renamed from: m */
        public static final int f9289m = 4;

        /* renamed from: n */
        public static final int f9290n = 15;

        /* renamed from: a */
        public final List<C1325c> f9291a;

        /* renamed from: b */
        public final int[] f9292b;

        /* renamed from: c */
        public final int[] f9293c;

        /* renamed from: d */
        public final Callback f9294d;

        /* renamed from: e */
        public final int f9295e;

        /* renamed from: f */
        public final int f9296f;

        /* renamed from: g */
        public final boolean f9297g;

        public DiffResult(Callback callback, List<C1325c> list, int[] iArr, int[] iArr2, boolean z) {
            this.f9291a = list;
            this.f9292b = iArr;
            this.f9293c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.f9294d = callback;
            this.f9295e = callback.getOldListSize();
            this.f9296f = callback.getNewListSize();
            this.f9297g = z;
            m5527a();
            m5529c();
        }

        @Nullable
        /* renamed from: e */
        public static C1326d m5526e(Collection<C1326d> collection, int i, boolean z) {
            C1326d c1326d;
            Iterator<C1326d> it2 = collection.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    c1326d = null;
                    break;
                }
                c1326d = it2.next();
                if (c1326d.f9303a == i && c1326d.f9305c == z) {
                    it2.remove();
                    break;
                }
            }
            while (it2.hasNext()) {
                C1326d next = it2.next();
                if (z) {
                    next.f9304b--;
                } else {
                    next.f9304b++;
                }
            }
            return c1326d;
        }

        /* renamed from: a */
        public final void m5527a() {
            C1325c c1325c = this.f9291a.isEmpty() ? null : this.f9291a.get(0);
            if (c1325c == null || c1325c.f9300a != 0 || c1325c.f9301b != 0) {
                this.f9291a.add(0, new C1325c(0, 0, 0));
            }
            this.f9291a.add(new C1325c(this.f9295e, this.f9296f, 0));
        }

        /* renamed from: b */
        public final void m5528b(int i) {
            int size = this.f9291a.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                C1325c c1325c = this.f9291a.get(i3);
                while (i2 < c1325c.f9301b) {
                    if (this.f9293c[i2] == 0 && this.f9294d.areItemsTheSame(i, i2)) {
                        int i4 = this.f9294d.areContentsTheSame(i, i2) ? 8 : 4;
                        this.f9292b[i] = (i2 << 4) | i4;
                        this.f9293c[i2] = (i << 4) | i4;
                        return;
                    }
                    i2++;
                }
                i2 = c1325c.m5537b();
            }
        }

        /* renamed from: c */
        public final void m5529c() {
            for (C1325c c1325c : this.f9291a) {
                for (int i = 0; i < c1325c.f9302c; i++) {
                    int i2 = c1325c.f9300a + i;
                    int i3 = c1325c.f9301b + i;
                    int i4 = this.f9294d.areContentsTheSame(i2, i3) ? 1 : 2;
                    this.f9292b[i2] = (i3 << 4) | i4;
                    this.f9293c[i3] = (i2 << 4) | i4;
                }
            }
            if (this.f9297g) {
                m5530d();
            }
        }

        public int convertNewPositionToOld(@IntRange(from = 0) int i) {
            if (i >= 0 && i < this.f9296f) {
                int i2 = this.f9293c[i];
                if ((i2 & 15) == 0) {
                    return -1;
                }
                return i2 >> 4;
            }
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i + ", new list size = " + this.f9296f);
        }

        public int convertOldPositionToNew(@IntRange(from = 0) int i) {
            if (i >= 0 && i < this.f9295e) {
                int i2 = this.f9292b[i];
                if ((i2 & 15) == 0) {
                    return -1;
                }
                return i2 >> 4;
            }
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i + ", old list size = " + this.f9295e);
        }

        /* renamed from: d */
        public final void m5530d() {
            int i = 0;
            for (C1325c c1325c : this.f9291a) {
                while (i < c1325c.f9300a) {
                    if (this.f9292b[i] == 0) {
                        m5528b(i);
                    }
                    i++;
                }
                i = c1325c.m5536a();
            }
        }

        public void dispatchUpdatesTo(@NonNull RecyclerView.Adapter adapter) {
            dispatchUpdatesTo(new AdapterListUpdateCallback(adapter));
        }

        public void dispatchUpdatesTo(@NonNull ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback;
            int i;
            if (listUpdateCallback instanceof BatchingListUpdateCallback) {
                batchingListUpdateCallback = (BatchingListUpdateCallback) listUpdateCallback;
            } else {
                batchingListUpdateCallback = new BatchingListUpdateCallback(listUpdateCallback);
            }
            int i2 = this.f9295e;
            ArrayDeque arrayDeque = new ArrayDeque();
            int i3 = this.f9295e;
            int i4 = this.f9296f;
            for (int size = this.f9291a.size() - 1; size >= 0; size--) {
                C1325c c1325c = this.f9291a.get(size);
                int m5536a = c1325c.m5536a();
                int m5537b = c1325c.m5537b();
                while (true) {
                    if (i3 <= m5536a) {
                        break;
                    }
                    i3--;
                    int i5 = this.f9292b[i3];
                    if ((i5 & 12) != 0) {
                        int i6 = i5 >> 4;
                        C1326d m5526e = m5526e(arrayDeque, i6, false);
                        if (m5526e != null) {
                            int i7 = (i2 - m5526e.f9304b) - 1;
                            batchingListUpdateCallback.onMoved(i3, i7);
                            if ((i5 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i7, 1, this.f9294d.getChangePayload(i3, i6));
                            }
                        } else {
                            arrayDeque.add(new C1326d(i3, (i2 - i3) - 1, true));
                        }
                    } else {
                        batchingListUpdateCallback.onRemoved(i3, 1);
                        i2--;
                    }
                }
                while (i4 > m5537b) {
                    i4--;
                    int i8 = this.f9293c[i4];
                    if ((i8 & 12) != 0) {
                        int i9 = i8 >> 4;
                        C1326d m5526e2 = m5526e(arrayDeque, i9, true);
                        if (m5526e2 == null) {
                            arrayDeque.add(new C1326d(i4, i2 - i3, false));
                        } else {
                            batchingListUpdateCallback.onMoved((i2 - m5526e2.f9304b) - 1, i3);
                            if ((i8 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i3, 1, this.f9294d.getChangePayload(i9, i4));
                            }
                        }
                    } else {
                        batchingListUpdateCallback.onInserted(i3, 1);
                        i2++;
                    }
                }
                int i10 = c1325c.f9300a;
                int i11 = c1325c.f9301b;
                for (i = 0; i < c1325c.f9302c; i++) {
                    if ((this.f9292b[i10] & 15) == 2) {
                        batchingListUpdateCallback.onChanged(i10, 1, this.f9294d.getChangePayload(i10, i11));
                    }
                    i10++;
                    i11++;
                }
                i3 = c1325c.f9300a;
                i4 = c1325c.f9301b;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ItemCallback<T> {
        public abstract boolean areContentsTheSame(@NonNull T t, @NonNull T t2);

        public abstract boolean areItemsTheSame(@NonNull T t, @NonNull T t2);

        @Nullable
        public Object getChangePayload(@NonNull T t, @NonNull T t2) {
            return null;
        }
    }

    /* renamed from: androidx.recyclerview.widget.DiffUtil$a */
    /* loaded from: classes3.dex */
    public class C1323a implements Comparator<C1325c> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C1325c c1325c, C1325c c1325c2) {
            return c1325c.f9300a - c1325c2.f9300a;
        }
    }

    /* renamed from: androidx.recyclerview.widget.DiffUtil$b */
    /* loaded from: classes3.dex */
    public static class C1324b {

        /* renamed from: a */
        public final int[] f9298a;

        /* renamed from: b */
        public final int f9299b;

        public C1324b(int i) {
            int[] iArr = new int[i];
            this.f9298a = iArr;
            this.f9299b = iArr.length / 2;
        }

        /* renamed from: a */
        public int[] m5532a() {
            return this.f9298a;
        }

        /* renamed from: b */
        public void m5533b(int i) {
            Arrays.fill(this.f9298a, i);
        }

        /* renamed from: c */
        public int m5534c(int i) {
            return this.f9298a[i + this.f9299b];
        }

        /* renamed from: d */
        public void m5535d(int i, int i2) {
            this.f9298a[i + this.f9299b] = i2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.DiffUtil$c */
    /* loaded from: classes3.dex */
    public static class C1325c {

        /* renamed from: a */
        public final int f9300a;

        /* renamed from: b */
        public final int f9301b;

        /* renamed from: c */
        public final int f9302c;

        public C1325c(int i, int i2, int i3) {
            this.f9300a = i;
            this.f9301b = i2;
            this.f9302c = i3;
        }

        /* renamed from: a */
        public int m5536a() {
            return this.f9300a + this.f9302c;
        }

        /* renamed from: b */
        public int m5537b() {
            return this.f9301b + this.f9302c;
        }
    }

    /* renamed from: androidx.recyclerview.widget.DiffUtil$d */
    /* loaded from: classes3.dex */
    public static class C1326d {

        /* renamed from: a */
        public int f9303a;

        /* renamed from: b */
        public int f9304b;

        /* renamed from: c */
        public boolean f9305c;

        public C1326d(int i, int i2, boolean z) {
            this.f9303a = i;
            this.f9304b = i2;
            this.f9305c = z;
        }
    }

    /* renamed from: androidx.recyclerview.widget.DiffUtil$e */
    /* loaded from: classes3.dex */
    public static class C1327e {

        /* renamed from: a */
        public int f9306a;

        /* renamed from: b */
        public int f9307b;

        /* renamed from: c */
        public int f9308c;

        /* renamed from: d */
        public int f9309d;

        public C1327e() {
        }

        /* renamed from: a */
        public int m5538a() {
            return this.f9309d - this.f9308c;
        }

        /* renamed from: b */
        public int m5539b() {
            return this.f9307b - this.f9306a;
        }

        public C1327e(int i, int i2, int i3, int i4) {
            this.f9306a = i;
            this.f9307b = i2;
            this.f9308c = i3;
            this.f9309d = i4;
        }
    }

    /* renamed from: androidx.recyclerview.widget.DiffUtil$f */
    /* loaded from: classes3.dex */
    public static class C1328f {

        /* renamed from: a */
        public int f9310a;

        /* renamed from: b */
        public int f9311b;

        /* renamed from: c */
        public int f9312c;

        /* renamed from: d */
        public int f9313d;

        /* renamed from: e */
        public boolean f9314e;

        /* renamed from: a */
        public int m5540a() {
            return Math.min(this.f9312c - this.f9310a, this.f9313d - this.f9311b);
        }

        /* renamed from: b */
        public boolean m5541b() {
            return this.f9313d - this.f9311b != this.f9312c - this.f9310a;
        }

        /* renamed from: c */
        public boolean m5542c() {
            return this.f9313d - this.f9311b > this.f9312c - this.f9310a;
        }

        @NonNull
        /* renamed from: d */
        public C1325c m5543d() {
            if (m5541b()) {
                return this.f9314e ? new C1325c(this.f9310a, this.f9311b, m5540a()) : m5542c() ? new C1325c(this.f9310a, this.f9311b + 1, m5540a()) : new C1325c(this.f9310a + 1, this.f9311b, m5540a());
            }
            int i = this.f9310a;
            return new C1325c(i, this.f9311b, this.f9312c - i);
        }
    }

    @Nullable
    /* renamed from: a */
    public static C1328f m5523a(C1327e c1327e, Callback callback, C1324b c1324b, C1324b c1324b2, int i) {
        int m5534c;
        int i2;
        int i3;
        boolean z = (c1327e.m5539b() - c1327e.m5538a()) % 2 == 0;
        int m5539b = c1327e.m5539b() - c1327e.m5538a();
        int i4 = -i;
        for (int i5 = i4; i5 <= i; i5 += 2) {
            if (i5 == i4 || (i5 != i && c1324b2.m5534c(i5 + 1) < c1324b2.m5534c(i5 - 1))) {
                m5534c = c1324b2.m5534c(i5 + 1);
                i2 = m5534c;
            } else {
                m5534c = c1324b2.m5534c(i5 - 1);
                i2 = m5534c - 1;
            }
            int i6 = c1327e.f9309d - ((c1327e.f9307b - i2) - i5);
            int i7 = (i == 0 || i2 != m5534c) ? i6 : i6 + 1;
            while (i2 > c1327e.f9306a && i6 > c1327e.f9308c && callback.areItemsTheSame(i2 - 1, i6 - 1)) {
                i2--;
                i6--;
            }
            c1324b2.m5535d(i5, i2);
            if (z && (i3 = m5539b - i5) >= i4 && i3 <= i && c1324b.m5534c(i3) >= i2) {
                C1328f c1328f = new C1328f();
                c1328f.f9310a = i2;
                c1328f.f9311b = i6;
                c1328f.f9312c = m5534c;
                c1328f.f9313d = i7;
                c1328f.f9314e = true;
                return c1328f;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: b */
    public static C1328f m5524b(C1327e c1327e, Callback callback, C1324b c1324b, C1324b c1324b2, int i) {
        int m5534c;
        int i2;
        int i3;
        boolean z = Math.abs(c1327e.m5539b() - c1327e.m5538a()) % 2 == 1;
        int m5539b = c1327e.m5539b() - c1327e.m5538a();
        int i4 = -i;
        for (int i5 = i4; i5 <= i; i5 += 2) {
            if (i5 == i4 || (i5 != i && c1324b.m5534c(i5 + 1) > c1324b.m5534c(i5 - 1))) {
                m5534c = c1324b.m5534c(i5 + 1);
                i2 = m5534c;
            } else {
                m5534c = c1324b.m5534c(i5 - 1);
                i2 = m5534c + 1;
            }
            int i6 = (c1327e.f9308c + (i2 - c1327e.f9306a)) - i5;
            int i7 = (i == 0 || i2 != m5534c) ? i6 : i6 - 1;
            while (i2 < c1327e.f9307b && i6 < c1327e.f9309d && callback.areItemsTheSame(i2, i6)) {
                i2++;
                i6++;
            }
            c1324b.m5535d(i5, i2);
            if (z && (i3 = m5539b - i5) >= i4 + 1 && i3 <= i - 1 && c1324b2.m5534c(i3) <= i2) {
                C1328f c1328f = new C1328f();
                c1328f.f9310a = m5534c;
                c1328f.f9311b = i7;
                c1328f.f9312c = i2;
                c1328f.f9313d = i6;
                c1328f.f9314e = false;
                return c1328f;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: c */
    public static C1328f m5525c(C1327e c1327e, Callback callback, C1324b c1324b, C1324b c1324b2) {
        if (c1327e.m5539b() >= 1 && c1327e.m5538a() >= 1) {
            int m5539b = ((c1327e.m5539b() + c1327e.m5538a()) + 1) / 2;
            c1324b.m5535d(1, c1327e.f9306a);
            c1324b2.m5535d(1, c1327e.f9307b);
            for (int i = 0; i < m5539b; i++) {
                C1328f m5524b = m5524b(c1327e, callback, c1324b, c1324b2, i);
                if (m5524b != null) {
                    return m5524b;
                }
                C1328f m5523a = m5523a(c1327e, callback, c1324b, c1324b2, i);
                if (m5523a != null) {
                    return m5523a;
                }
            }
        }
        return null;
    }

    @NonNull
    public static DiffResult calculateDiff(@NonNull Callback callback) {
        return calculateDiff(callback, true);
    }

    @NonNull
    public static DiffResult calculateDiff(@NonNull Callback callback, boolean z) {
        int oldListSize = callback.getOldListSize();
        int newListSize = callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new C1327e(0, oldListSize, 0, newListSize));
        int i = ((((oldListSize + newListSize) + 1) / 2) * 2) + 1;
        C1324b c1324b = new C1324b(i);
        C1324b c1324b2 = new C1324b(i);
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            C1327e c1327e = (C1327e) arrayList2.remove(arrayList2.size() - 1);
            C1328f m5525c = m5525c(c1327e, callback, c1324b, c1324b2);
            if (m5525c != null) {
                if (m5525c.m5540a() > 0) {
                    arrayList.add(m5525c.m5543d());
                }
                C1327e c1327e2 = arrayList3.isEmpty() ? new C1327e() : (C1327e) arrayList3.remove(arrayList3.size() - 1);
                c1327e2.f9306a = c1327e.f9306a;
                c1327e2.f9308c = c1327e.f9308c;
                c1327e2.f9307b = m5525c.f9310a;
                c1327e2.f9309d = m5525c.f9311b;
                arrayList2.add(c1327e2);
                c1327e.f9307b = c1327e.f9307b;
                c1327e.f9309d = c1327e.f9309d;
                c1327e.f9306a = m5525c.f9312c;
                c1327e.f9308c = m5525c.f9313d;
                arrayList2.add(c1327e);
            } else {
                arrayList3.add(c1327e);
            }
        }
        Collections.sort(arrayList, f9283a);
        return new DiffResult(callback, arrayList, c1324b.m5532a(), c1324b2.m5532a(), z);
    }
}
