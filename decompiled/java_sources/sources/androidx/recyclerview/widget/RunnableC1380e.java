package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;
import androidx.core.os.TraceCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* renamed from: androidx.recyclerview.widget.e */
/* loaded from: classes3.dex */
public final class RunnableC1380e implements Runnable {

    /* renamed from: i */
    public static final ThreadLocal<RunnableC1380e> f9930i = new ThreadLocal<>();

    /* renamed from: j */
    public static Comparator<c> f9931j = new a();

    /* renamed from: f */
    public long f9933f;

    /* renamed from: g */
    public long f9934g;

    /* renamed from: e */
    public ArrayList<RecyclerView> f9932e = new ArrayList<>();

    /* renamed from: h */
    public ArrayList<c> f9935h = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.e$a */
    /* loaded from: classes3.dex */
    public class a implements Comparator<c> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            RecyclerView recyclerView = cVar.f9943d;
            if ((recyclerView == null) != (cVar2.f9943d == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z = cVar.f9940a;
            if (z != cVar2.f9940a) {
                return z ? -1 : 1;
            }
            int i = cVar2.f9941b - cVar.f9941b;
            if (i != 0) {
                return i;
            }
            int i2 = cVar.f9942c - cVar2.f9942c;
            if (i2 != 0) {
                return i2;
            }
            return 0;
        }
    }

    @SuppressLint({"VisibleForTests"})
    /* renamed from: androidx.recyclerview.widget.e$b */
    /* loaded from: classes3.dex */
    public static class b implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {

        /* renamed from: a */
        public int f9936a;

        /* renamed from: b */
        public int f9937b;

        /* renamed from: c */
        public int[] f9938c;

        /* renamed from: d */
        public int f9939d;

        /* renamed from: a */
        public void m6211a() {
            int[] iArr = this.f9938c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f9939d = 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager.LayoutPrefetchRegistry
        public void addPosition(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.f9939d * 2;
            int[] iArr = this.f9938c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.f9938c = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i3 >= iArr.length) {
                int[] iArr3 = new int[i3 * 2];
                this.f9938c = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.f9938c;
            iArr4[i3] = i;
            iArr4[i3 + 1] = i2;
            this.f9939d++;
        }

        /* renamed from: b */
        public void m6212b(RecyclerView recyclerView, boolean z) {
            this.f9939d = 0;
            int[] iArr = this.f9938c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.f9565r;
            if (recyclerView.f9562q == null || layoutManager == null || !layoutManager.isItemPrefetchEnabled()) {
                return;
            }
            if (z) {
                if (!recyclerView.f9545i.m6100q()) {
                    layoutManager.collectInitialPrefetchPositions(recyclerView.f9562q.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                layoutManager.collectAdjacentPrefetchPositions(this.f9936a, this.f9937b, recyclerView.f9531Y0, this);
            }
            int i = this.f9939d;
            if (i > layoutManager.f9603q) {
                layoutManager.f9603q = i;
                layoutManager.f9604r = z;
                recyclerView.f9541g.m5830J();
            }
        }

        /* renamed from: c */
        public boolean m6213c(int i) {
            if (this.f9938c != null) {
                int i2 = this.f9939d * 2;
                for (int i3 = 0; i3 < i2; i3 += 2) {
                    if (this.f9938c[i3] == i) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* renamed from: d */
        public void m6214d(int i, int i2) {
            this.f9936a = i;
            this.f9937b = i2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.e$c */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a */
        public boolean f9940a;

        /* renamed from: b */
        public int f9941b;

        /* renamed from: c */
        public int f9942c;

        /* renamed from: d */
        public RecyclerView f9943d;

        /* renamed from: e */
        public int f9944e;

        /* renamed from: a */
        public void m6215a() {
            this.f9940a = false;
            this.f9941b = 0;
            this.f9942c = 0;
            this.f9943d = null;
            this.f9944e = 0;
        }
    }

    /* renamed from: e */
    public static boolean m6200e(RecyclerView recyclerView, int i) {
        int m6120j = recyclerView.f9547j.m6120j();
        for (int i2 = 0; i2 < m6120j; i2++) {
            RecyclerView.ViewHolder m5677V = RecyclerView.m5677V(recyclerView.f9547j.m6119i(i2));
            if (m5677V.f9680b == i && !m5677V.m5889o()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public void m6201a(RecyclerView recyclerView) {
        this.f9932e.add(recyclerView);
    }

    /* renamed from: b */
    public final void m6202b() {
        c cVar;
        int size = this.f9932e.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.f9932e.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.f9530X0.m6212b(recyclerView, false);
                i += recyclerView.f9530X0.f9939d;
            }
        }
        this.f9935h.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.f9932e.get(i4);
            if (recyclerView2.getWindowVisibility() == 0) {
                b bVar = recyclerView2.f9530X0;
                int abs = Math.abs(bVar.f9936a) + Math.abs(bVar.f9937b);
                for (int i5 = 0; i5 < bVar.f9939d * 2; i5 += 2) {
                    if (i3 >= this.f9935h.size()) {
                        cVar = new c();
                        this.f9935h.add(cVar);
                    } else {
                        cVar = this.f9935h.get(i3);
                    }
                    int[] iArr = bVar.f9938c;
                    int i6 = iArr[i5 + 1];
                    cVar.f9940a = i6 <= abs;
                    cVar.f9941b = abs;
                    cVar.f9942c = i6;
                    cVar.f9943d = recyclerView2;
                    cVar.f9944e = iArr[i5];
                    i3++;
                }
            }
        }
        Collections.sort(this.f9935h, f9931j);
    }

    /* renamed from: c */
    public final void m6203c(c cVar, long j) {
        RecyclerView.ViewHolder m6208i = m6208i(cVar.f9943d, cVar.f9944e, cVar.f9940a ? Long.MAX_VALUE : j);
        if (m6208i == null || m6208i.f9679a == null || !m6208i.m5888n() || m6208i.m5889o()) {
            return;
        }
        m6207h(m6208i.f9679a.get(), j);
    }

    /* renamed from: d */
    public final void m6204d(long j) {
        for (int i = 0; i < this.f9935h.size(); i++) {
            c cVar = this.f9935h.get(i);
            if (cVar.f9943d == null) {
                return;
            }
            m6203c(cVar, j);
            cVar.m6215a();
        }
    }

    /* renamed from: f */
    public void m6205f(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f9933f == 0) {
            this.f9933f = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.f9530X0.m6214d(i, i2);
    }

    /* renamed from: g */
    public void m6206g(long j) {
        m6202b();
        m6204d(j);
    }

    /* renamed from: h */
    public final void m6207h(@Nullable RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.f9577x0 && recyclerView.f9547j.m6120j() != 0) {
            recyclerView.m5696F0();
        }
        b bVar = recyclerView.f9530X0;
        bVar.m6212b(recyclerView, true);
        if (bVar.f9939d != 0) {
            try {
                TraceCompat.beginSection(RecyclerView.f9489P1);
                recyclerView.f9531Y0.m5868b(recyclerView.f9562q);
                for (int i = 0; i < bVar.f9939d * 2; i += 2) {
                    m6208i(recyclerView, bVar.f9938c[i], j);
                }
            } finally {
                TraceCompat.endSection();
            }
        }
    }

    /* renamed from: i */
    public final RecyclerView.ViewHolder m6208i(RecyclerView recyclerView, int i, long j) {
        if (m6200e(recyclerView, i)) {
            return null;
        }
        RecyclerView.Recycler recycler = recyclerView.f9541g;
        try {
            recyclerView.m5761r0();
            RecyclerView.ViewHolder m5828H = recycler.m5828H(i, false, j);
            if (m5828H != null) {
                if (!m5828H.m5888n() || m5828H.m5889o()) {
                    recycler.m5833a(m5828H, false);
                } else {
                    recycler.recycleView(m5828H.itemView);
                }
            }
            return m5828H;
        } finally {
            recyclerView.m5765t0(false);
        }
    }

    /* renamed from: j */
    public void m6209j(RecyclerView recyclerView) {
        this.f9932e.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            TraceCompat.beginSection(RecyclerView.f9488O1);
            if (!this.f9932e.isEmpty()) {
                int size = this.f9932e.size();
                long j = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView = this.f9932e.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j = Math.max(recyclerView.getDrawingTime(), j);
                    }
                }
                if (j != 0) {
                    m6206g(TimeUnit.MILLISECONDS.toNanos(j) + this.f9934g);
                }
            }
        } finally {
            this.f9933f = 0L;
            TraceCompat.endSection();
        }
    }
}
