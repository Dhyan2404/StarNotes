package androidx.recyclerview.widget;

import android.util.Log;
import android.util.Pair;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.C1383h;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.recyclerview.widget.ViewTypeStorage;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

/* renamed from: androidx.recyclerview.widget.c */
/* loaded from: classes3.dex */
public class C1378c implements C1383h.b {

    /* renamed from: a */
    public final ConcatAdapter f9868a;

    /* renamed from: b */
    public final ViewTypeStorage f9869b;

    /* renamed from: c */
    public List<WeakReference<RecyclerView>> f9870c = new ArrayList();

    /* renamed from: d */
    public final IdentityHashMap<RecyclerView.ViewHolder, C1383h> f9871d = new IdentityHashMap<>();

    /* renamed from: e */
    public List<C1383h> f9872e = new ArrayList();

    /* renamed from: f */
    public a f9873f = new a();

    /* renamed from: g */
    @NonNull
    public final ConcatAdapter.Config.StableIdMode f9874g;

    /* renamed from: h */
    public final StableIdStorage f9875h;

    /* renamed from: androidx.recyclerview.widget.c$a */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a */
        public C1383h f9876a;

        /* renamed from: b */
        public int f9877b;

        /* renamed from: c */
        public boolean f9878c;
    }

    public C1378c(ConcatAdapter concatAdapter, ConcatAdapter.Config config) {
        this.f9868a = concatAdapter;
        if (config.isolateViewTypes) {
            this.f9869b = new ViewTypeStorage.IsolatedViewTypeStorage();
        } else {
            this.f9869b = new ViewTypeStorage.SharedIdRangeViewTypeStorage();
        }
        ConcatAdapter.Config.StableIdMode stableIdMode = config.stableIdMode;
        this.f9874g = stableIdMode;
        if (stableIdMode == ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS) {
            this.f9875h = new StableIdStorage.NoStableIdStorage();
        } else if (stableIdMode == ConcatAdapter.Config.StableIdMode.ISOLATED_STABLE_IDS) {
            this.f9875h = new StableIdStorage.IsolatedStableIdStorage();
        } else {
            if (stableIdMode != ConcatAdapter.Config.StableIdMode.SHARED_STABLE_IDS) {
                throw new IllegalArgumentException("unknown stable id mode");
            }
            this.f9875h = new StableIdStorage.SharedPoolStableIdStorage();
        }
    }

    /* renamed from: A */
    public void m6139A(RecyclerView recyclerView) {
        if (m6174z(recyclerView)) {
            return;
        }
        this.f9870c.add(new WeakReference<>(recyclerView));
        Iterator<C1383h> it2 = this.f9872e.iterator();
        while (it2.hasNext()) {
            it2.next().f9993c.onAttachedToRecyclerView(recyclerView);
        }
    }

    /* renamed from: B */
    public void m6140B(RecyclerView.ViewHolder viewHolder, int i) {
        a m6162n = m6162n(i);
        this.f9871d.put(viewHolder, m6162n.f9876a);
        m6162n.f9876a.m6234e(viewHolder, m6162n.f9877b);
        m6147I(m6162n);
    }

    /* renamed from: C */
    public RecyclerView.ViewHolder m6141C(ViewGroup viewGroup, int i) {
        return this.f9869b.getWrapperForGlobalType(i).m6235f(viewGroup, i);
    }

    /* renamed from: D */
    public void m6142D(RecyclerView recyclerView) {
        int size = this.f9870c.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            WeakReference<RecyclerView> weakReference = this.f9870c.get(size);
            if (weakReference.get() == null) {
                this.f9870c.remove(size);
            } else if (weakReference.get() == recyclerView) {
                this.f9870c.remove(size);
                break;
            }
            size--;
        }
        Iterator<C1383h> it2 = this.f9872e.iterator();
        while (it2.hasNext()) {
            it2.next().f9993c.onDetachedFromRecyclerView(recyclerView);
        }
    }

    /* renamed from: E */
    public boolean m6143E(RecyclerView.ViewHolder viewHolder) {
        C1383h c1383h = this.f9871d.get(viewHolder);
        if (c1383h != null) {
            boolean onFailedToRecycleView = c1383h.f9993c.onFailedToRecycleView(viewHolder);
            this.f9871d.remove(viewHolder);
            return onFailedToRecycleView;
        }
        throw new IllegalStateException("Cannot find wrapper for " + viewHolder + ", seems like it is not bound by this adapter: " + this);
    }

    /* renamed from: F */
    public void m6144F(RecyclerView.ViewHolder viewHolder) {
        m6171w(viewHolder).f9993c.onViewAttachedToWindow(viewHolder);
    }

    /* renamed from: G */
    public void m6145G(RecyclerView.ViewHolder viewHolder) {
        m6171w(viewHolder).f9993c.onViewDetachedFromWindow(viewHolder);
    }

    /* renamed from: H */
    public void m6146H(RecyclerView.ViewHolder viewHolder) {
        C1383h c1383h = this.f9871d.get(viewHolder);
        if (c1383h != null) {
            c1383h.f9993c.onViewRecycled(viewHolder);
            this.f9871d.remove(viewHolder);
            return;
        }
        throw new IllegalStateException("Cannot find wrapper for " + viewHolder + ", seems like it is not bound by this adapter: " + this);
    }

    /* renamed from: I */
    public final void m6147I(a aVar) {
        aVar.f9878c = false;
        aVar.f9876a = null;
        aVar.f9877b = -1;
        this.f9873f = aVar;
    }

    /* renamed from: J */
    public boolean m6148J(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        int m6173y = m6173y(adapter);
        if (m6173y == -1) {
            return false;
        }
        C1383h c1383h = this.f9872e.get(m6173y);
        int m6161m = m6161m(c1383h);
        this.f9872e.remove(m6173y);
        this.f9868a.notifyItemRangeRemoved(m6161m, c1383h.m6231b());
        Iterator<WeakReference<RecyclerView>> it2 = this.f9870c.iterator();
        while (it2.hasNext()) {
            RecyclerView recyclerView = it2.next().get();
            if (recyclerView != null) {
                adapter.onDetachedFromRecyclerView(recyclerView);
            }
        }
        c1383h.m6230a();
        m6158j();
        return true;
    }

    @Override // androidx.recyclerview.widget.C1383h.b
    /* renamed from: a */
    public void mo6149a(@NonNull C1383h c1383h, int i, int i2) {
        int m6161m = m6161m(c1383h);
        this.f9868a.notifyItemMoved(i + m6161m, i2 + m6161m);
    }

    @Override // androidx.recyclerview.widget.C1383h.b
    /* renamed from: b */
    public void mo6150b(C1383h c1383h) {
        m6158j();
    }

    @Override // androidx.recyclerview.widget.C1383h.b
    /* renamed from: c */
    public void mo6151c(@NonNull C1383h c1383h, int i, int i2, @Nullable Object obj) {
        this.f9868a.notifyItemRangeChanged(i + m6161m(c1383h), i2, obj);
    }

    @Override // androidx.recyclerview.widget.C1383h.b
    /* renamed from: d */
    public void mo6152d(@NonNull C1383h c1383h, int i, int i2) {
        this.f9868a.notifyItemRangeChanged(i + m6161m(c1383h), i2);
    }

    @Override // androidx.recyclerview.widget.C1383h.b
    /* renamed from: e */
    public void mo6153e(@NonNull C1383h c1383h, int i, int i2) {
        this.f9868a.notifyItemRangeRemoved(i + m6161m(c1383h), i2);
    }

    @Override // androidx.recyclerview.widget.C1383h.b
    /* renamed from: f */
    public void mo6154f(@NonNull C1383h c1383h, int i, int i2) {
        this.f9868a.notifyItemRangeInserted(i + m6161m(c1383h), i2);
    }

    @Override // androidx.recyclerview.widget.C1383h.b
    /* renamed from: g */
    public void mo6155g(@NonNull C1383h c1383h) {
        this.f9868a.notifyDataSetChanged();
        m6158j();
    }

    /* renamed from: h */
    public boolean m6156h(int i, RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        if (i < 0 || i > this.f9872e.size()) {
            throw new IndexOutOfBoundsException("Index must be between 0 and " + this.f9872e.size() + ". Given:" + i);
        }
        if (m6172x()) {
            Preconditions.checkArgument(adapter.hasStableIds(), "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS");
        } else if (adapter.hasStableIds()) {
            Log.w(ConcatAdapter.f9227e, "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids");
        }
        if (m6163o(adapter) != null) {
            return false;
        }
        C1383h c1383h = new C1383h(adapter, this, this.f9869b, this.f9875h.createStableIdLookup());
        this.f9872e.add(i, c1383h);
        Iterator<WeakReference<RecyclerView>> it2 = this.f9870c.iterator();
        while (it2.hasNext()) {
            RecyclerView recyclerView = it2.next().get();
            if (recyclerView != null) {
                adapter.onAttachedToRecyclerView(recyclerView);
            }
        }
        if (c1383h.m6231b() > 0) {
            this.f9868a.notifyItemRangeInserted(m6161m(c1383h), c1383h.m6231b());
        }
        m6158j();
        return true;
    }

    /* renamed from: i */
    public boolean m6157i(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        return m6156h(this.f9872e.size(), adapter);
    }

    /* renamed from: j */
    public final void m6158j() {
        RecyclerView.Adapter.StateRestorationPolicy m6160l = m6160l();
        if (m6160l != this.f9868a.getStateRestorationPolicy()) {
            this.f9868a.m5512b(m6160l);
        }
    }

    /* renamed from: k */
    public boolean m6159k() {
        Iterator<C1383h> it2 = this.f9872e.iterator();
        while (it2.hasNext()) {
            if (!it2.next().f9993c.m5778a()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: l */
    public final RecyclerView.Adapter.StateRestorationPolicy m6160l() {
        for (C1383h c1383h : this.f9872e) {
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy = c1383h.f9993c.getStateRestorationPolicy();
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy2 = RecyclerView.Adapter.StateRestorationPolicy.PREVENT;
            if (stateRestorationPolicy == stateRestorationPolicy2) {
                return stateRestorationPolicy2;
            }
            if (stateRestorationPolicy == RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY && c1383h.m6231b() == 0) {
                return stateRestorationPolicy2;
            }
        }
        return RecyclerView.Adapter.StateRestorationPolicy.ALLOW;
    }

    /* renamed from: m */
    public final int m6161m(C1383h c1383h) {
        C1383h next;
        Iterator<C1383h> it2 = this.f9872e.iterator();
        int i = 0;
        while (it2.hasNext() && (next = it2.next()) != c1383h) {
            i += next.m6231b();
        }
        return i;
    }

    @NonNull
    /* renamed from: n */
    public final a m6162n(int i) {
        a aVar = this.f9873f;
        if (aVar.f9878c) {
            aVar = new a();
        } else {
            aVar.f9878c = true;
        }
        Iterator<C1383h> it2 = this.f9872e.iterator();
        int i2 = i;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            C1383h next = it2.next();
            if (next.m6231b() > i2) {
                aVar.f9876a = next;
                aVar.f9877b = i2;
                break;
            }
            i2 -= next.m6231b();
        }
        if (aVar.f9876a != null) {
            return aVar;
        }
        throw new IllegalArgumentException("Cannot find wrapper for " + i);
    }

    @Nullable
    /* renamed from: o */
    public final C1383h m6163o(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        int m6173y = m6173y(adapter);
        if (m6173y == -1) {
            return null;
        }
        return this.f9872e.get(m6173y);
    }

    @Nullable
    /* renamed from: p */
    public RecyclerView.Adapter<? extends RecyclerView.ViewHolder> m6164p(RecyclerView.ViewHolder viewHolder) {
        C1383h c1383h = this.f9871d.get(viewHolder);
        if (c1383h == null) {
            return null;
        }
        return c1383h.f9993c;
    }

    /* renamed from: q */
    public List<RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> m6165q() {
        if (this.f9872e.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(this.f9872e.size());
        Iterator<C1383h> it2 = this.f9872e.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().f9993c);
        }
        return arrayList;
    }

    /* renamed from: r */
    public long m6166r(int i) {
        a m6162n = m6162n(i);
        long m6232c = m6162n.f9876a.m6232c(m6162n.f9877b);
        m6147I(m6162n);
        return m6232c;
    }

    /* renamed from: s */
    public int m6167s(int i) {
        a m6162n = m6162n(i);
        int m6233d = m6162n.f9876a.m6233d(m6162n.f9877b);
        m6147I(m6162n);
        return m6233d;
    }

    /* renamed from: t */
    public int m6168t(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i) {
        C1383h c1383h = this.f9871d.get(viewHolder);
        if (c1383h == null) {
            return -1;
        }
        int m6161m = i - m6161m(c1383h);
        int itemCount = c1383h.f9993c.getItemCount();
        if (m6161m >= 0 && m6161m < itemCount) {
            return c1383h.f9993c.findRelativeAdapterPositionIn(adapter, viewHolder, m6161m);
        }
        throw new IllegalStateException("Detected inconsistent adapter updates. The local position of the view holder maps to " + m6161m + " which is out of bounds for the adapter with size " + itemCount + ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:" + viewHolder + "adapter:" + adapter);
    }

    /* renamed from: u */
    public int m6169u() {
        Iterator<C1383h> it2 = this.f9872e.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().m6231b();
        }
        return i;
    }

    /* renamed from: v */
    public Pair<RecyclerView.Adapter<? extends RecyclerView.ViewHolder>, Integer> m6170v(int i) {
        a m6162n = m6162n(i);
        Pair<RecyclerView.Adapter<? extends RecyclerView.ViewHolder>, Integer> pair = new Pair<>(m6162n.f9876a.f9993c, Integer.valueOf(m6162n.f9877b));
        m6147I(m6162n);
        return pair;
    }

    @NonNull
    /* renamed from: w */
    public final C1383h m6171w(RecyclerView.ViewHolder viewHolder) {
        C1383h c1383h = this.f9871d.get(viewHolder);
        if (c1383h != null) {
            return c1383h;
        }
        throw new IllegalStateException("Cannot find wrapper for " + viewHolder + ", seems like it is not bound by this adapter: " + this);
    }

    /* renamed from: x */
    public boolean m6172x() {
        return this.f9874g != ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS;
    }

    /* renamed from: y */
    public final int m6173y(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        int size = this.f9872e.size();
        for (int i = 0; i < size; i++) {
            if (this.f9872e.get(i).f9993c == adapter) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: z */
    public final boolean m6174z(RecyclerView recyclerView) {
        Iterator<WeakReference<RecyclerView>> it2 = this.f9870c.iterator();
        while (it2.hasNext()) {
            if (it2.next().get() == recyclerView) {
                return true;
            }
        }
        return false;
    }
}
