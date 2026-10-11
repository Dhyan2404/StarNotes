package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.k */
/* loaded from: classes3.dex */
public class C1386k {

    /* renamed from: c */
    public static final boolean f9999c = false;

    /* renamed from: a */
    @VisibleForTesting
    public final SimpleArrayMap<RecyclerView.ViewHolder, a> f10000a = new SimpleArrayMap<>();

    /* renamed from: b */
    @VisibleForTesting
    public final LongSparseArray<RecyclerView.ViewHolder> f10001b = new LongSparseArray<>();

    /* renamed from: androidx.recyclerview.widget.k$a */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: d */
        public static final int f10002d = 1;

        /* renamed from: e */
        public static final int f10003e = 2;

        /* renamed from: f */
        public static final int f10004f = 4;

        /* renamed from: g */
        public static final int f10005g = 8;

        /* renamed from: h */
        public static final int f10006h = 3;

        /* renamed from: i */
        public static final int f10007i = 12;

        /* renamed from: j */
        public static final int f10008j = 14;

        /* renamed from: k */
        public static Pools.Pool<a> f10009k = new Pools.SimplePool(20);

        /* renamed from: a */
        public int f10010a;

        /* renamed from: b */
        @Nullable
        public RecyclerView.ItemAnimator.ItemHolderInfo f10011b;

        /* renamed from: c */
        @Nullable
        public RecyclerView.ItemAnimator.ItemHolderInfo f10012c;

        /* renamed from: a */
        public static void m6262a() {
            do {
            } while (f10009k.acquire() != null);
        }

        /* renamed from: b */
        public static a m6263b() {
            a acquire = f10009k.acquire();
            return acquire == null ? new a() : acquire;
        }

        /* renamed from: c */
        public static void m6264c(a aVar) {
            aVar.f10010a = 0;
            aVar.f10011b = null;
            aVar.f10012c = null;
            f10009k.release(aVar);
        }
    }

    /* renamed from: androidx.recyclerview.widget.k$b */
    /* loaded from: classes3.dex */
    public interface b {
        /* renamed from: a */
        void mo5901a(RecyclerView.ViewHolder viewHolder, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        /* renamed from: b */
        void mo5902b(RecyclerView.ViewHolder viewHolder);

        /* renamed from: c */
        void mo5903c(RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        /* renamed from: d */
        void mo5904d(RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);
    }

    /* renamed from: a */
    public void m6245a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        a aVar = this.f10000a.get(viewHolder);
        if (aVar == null) {
            aVar = a.m6263b();
            this.f10000a.put(viewHolder, aVar);
        }
        aVar.f10010a |= 2;
        aVar.f10011b = itemHolderInfo;
    }

    /* renamed from: b */
    public void m6246b(RecyclerView.ViewHolder viewHolder) {
        a aVar = this.f10000a.get(viewHolder);
        if (aVar == null) {
            aVar = a.m6263b();
            this.f10000a.put(viewHolder, aVar);
        }
        aVar.f10010a |= 1;
    }

    /* renamed from: c */
    public void m6247c(long j, RecyclerView.ViewHolder viewHolder) {
        this.f10001b.put(j, viewHolder);
    }

    /* renamed from: d */
    public void m6248d(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        a aVar = this.f10000a.get(viewHolder);
        if (aVar == null) {
            aVar = a.m6263b();
            this.f10000a.put(viewHolder, aVar);
        }
        aVar.f10012c = itemHolderInfo;
        aVar.f10010a |= 8;
    }

    /* renamed from: e */
    public void m6249e(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        a aVar = this.f10000a.get(viewHolder);
        if (aVar == null) {
            aVar = a.m6263b();
            this.f10000a.put(viewHolder, aVar);
        }
        aVar.f10011b = itemHolderInfo;
        aVar.f10010a |= 4;
    }

    /* renamed from: f */
    public void m6250f() {
        this.f10000a.clear();
        this.f10001b.clear();
    }

    /* renamed from: g */
    public RecyclerView.ViewHolder m6251g(long j) {
        return this.f10001b.get(j);
    }

    /* renamed from: h */
    public boolean m6252h(RecyclerView.ViewHolder viewHolder) {
        a aVar = this.f10000a.get(viewHolder);
        return (aVar == null || (aVar.f10010a & 1) == 0) ? false : true;
    }

    /* renamed from: i */
    public boolean m6253i(RecyclerView.ViewHolder viewHolder) {
        a aVar = this.f10000a.get(viewHolder);
        return (aVar == null || (aVar.f10010a & 4) == 0) ? false : true;
    }

    /* renamed from: j */
    public void m6254j() {
        a.m6262a();
    }

    /* renamed from: k */
    public void m6255k(RecyclerView.ViewHolder viewHolder) {
        m6260p(viewHolder);
    }

    /* renamed from: l */
    public final RecyclerView.ItemAnimator.ItemHolderInfo m6256l(RecyclerView.ViewHolder viewHolder, int i) {
        a valueAt;
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo;
        int indexOfKey = this.f10000a.indexOfKey(viewHolder);
        if (indexOfKey >= 0 && (valueAt = this.f10000a.valueAt(indexOfKey)) != null) {
            int i2 = valueAt.f10010a;
            if ((i2 & i) != 0) {
                int i3 = (~i) & i2;
                valueAt.f10010a = i3;
                if (i == 4) {
                    itemHolderInfo = valueAt.f10011b;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    itemHolderInfo = valueAt.f10012c;
                }
                if ((i3 & 12) == 0) {
                    this.f10000a.removeAt(indexOfKey);
                    a.m6264c(valueAt);
                }
                return itemHolderInfo;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: m */
    public RecyclerView.ItemAnimator.ItemHolderInfo m6257m(RecyclerView.ViewHolder viewHolder) {
        return m6256l(viewHolder, 8);
    }

    @Nullable
    /* renamed from: n */
    public RecyclerView.ItemAnimator.ItemHolderInfo m6258n(RecyclerView.ViewHolder viewHolder) {
        return m6256l(viewHolder, 4);
    }

    /* renamed from: o */
    public void m6259o(b bVar) {
        for (int size = this.f10000a.size() - 1; size >= 0; size--) {
            RecyclerView.ViewHolder keyAt = this.f10000a.keyAt(size);
            a removeAt = this.f10000a.removeAt(size);
            int i = removeAt.f10010a;
            if ((i & 3) == 3) {
                bVar.mo5902b(keyAt);
            } else if ((i & 1) != 0) {
                RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo = removeAt.f10011b;
                if (itemHolderInfo == null) {
                    bVar.mo5902b(keyAt);
                } else {
                    bVar.mo5903c(keyAt, itemHolderInfo, removeAt.f10012c);
                }
            } else if ((i & 14) == 14) {
                bVar.mo5901a(keyAt, removeAt.f10011b, removeAt.f10012c);
            } else if ((i & 12) == 12) {
                bVar.mo5904d(keyAt, removeAt.f10011b, removeAt.f10012c);
            } else if ((i & 4) != 0) {
                bVar.mo5903c(keyAt, removeAt.f10011b, null);
            } else if ((i & 8) != 0) {
                bVar.mo5901a(keyAt, removeAt.f10011b, removeAt.f10012c);
            }
            a.m6264c(removeAt);
        }
    }

    /* renamed from: p */
    public void m6260p(RecyclerView.ViewHolder viewHolder) {
        a aVar = this.f10000a.get(viewHolder);
        if (aVar == null) {
            return;
        }
        aVar.f10010a &= -2;
    }

    /* renamed from: q */
    public void m6261q(RecyclerView.ViewHolder viewHolder) {
        int size = this.f10001b.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            if (viewHolder == this.f10001b.valueAt(size)) {
                this.f10001b.removeAt(size);
                break;
            }
            size--;
        }
        a remove = this.f10000a.remove(viewHolder);
        if (remove != null) {
            a.m6264c(remove);
        }
    }
}
