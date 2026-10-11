package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.recyclerview.widget.ViewTypeStorage;

/* renamed from: androidx.recyclerview.widget.h */
/* loaded from: classes3.dex */
public class C1383h {

    /* renamed from: a */
    @NonNull
    public final ViewTypeStorage.ViewTypeLookup f9991a;

    /* renamed from: b */
    @NonNull
    public final StableIdStorage.StableIdLookup f9992b;

    /* renamed from: c */
    public final RecyclerView.Adapter<RecyclerView.ViewHolder> f9993c;

    /* renamed from: d */
    public final b f9994d;

    /* renamed from: e */
    public int f9995e;

    /* renamed from: f */
    public RecyclerView.AdapterDataObserver f9996f = new a();

    /* renamed from: androidx.recyclerview.widget.h$a */
    /* loaded from: classes3.dex */
    public class a extends RecyclerView.AdapterDataObserver {
        public a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            C1383h c1383h = C1383h.this;
            c1383h.f9995e = c1383h.f9993c.getItemCount();
            C1383h c1383h2 = C1383h.this;
            c1383h2.f9994d.mo6155g(c1383h2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            C1383h c1383h = C1383h.this;
            c1383h.f9994d.mo6151c(c1383h, i, i2, null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i, int i2) {
            C1383h c1383h = C1383h.this;
            c1383h.f9995e += i2;
            c1383h.f9994d.mo6154f(c1383h, i, i2);
            C1383h c1383h2 = C1383h.this;
            if (c1383h2.f9995e <= 0 || c1383h2.f9993c.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            C1383h c1383h3 = C1383h.this;
            c1383h3.f9994d.mo6150b(c1383h3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) {
            Preconditions.checkArgument(i3 == 1, "moving more than 1 item is not supported in RecyclerView");
            C1383h c1383h = C1383h.this;
            c1383h.f9994d.mo6149a(c1383h, i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            C1383h c1383h = C1383h.this;
            c1383h.f9995e -= i2;
            c1383h.f9994d.mo6153e(c1383h, i, i2);
            C1383h c1383h2 = C1383h.this;
            if (c1383h2.f9995e >= 1 || c1383h2.f9993c.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            C1383h c1383h3 = C1383h.this;
            c1383h3.f9994d.mo6150b(c1383h3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onStateRestorationPolicyChanged() {
            C1383h c1383h = C1383h.this;
            c1383h.f9994d.mo6150b(c1383h);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, @Nullable Object obj) {
            C1383h c1383h = C1383h.this;
            c1383h.f9994d.mo6151c(c1383h, i, i2, obj);
        }
    }

    /* renamed from: androidx.recyclerview.widget.h$b */
    /* loaded from: classes3.dex */
    public interface b {
        /* renamed from: a */
        void mo6149a(@NonNull C1383h c1383h, int i, int i2);

        /* renamed from: b */
        void mo6150b(C1383h c1383h);

        /* renamed from: c */
        void mo6151c(@NonNull C1383h c1383h, int i, int i2, @Nullable Object obj);

        /* renamed from: d */
        void mo6152d(@NonNull C1383h c1383h, int i, int i2);

        /* renamed from: e */
        void mo6153e(@NonNull C1383h c1383h, int i, int i2);

        /* renamed from: f */
        void mo6154f(@NonNull C1383h c1383h, int i, int i2);

        /* renamed from: g */
        void mo6155g(@NonNull C1383h c1383h);
    }

    public C1383h(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter, b bVar, ViewTypeStorage viewTypeStorage, StableIdStorage.StableIdLookup stableIdLookup) {
        this.f9993c = adapter;
        this.f9994d = bVar;
        this.f9991a = viewTypeStorage.createViewTypeWrapper(this);
        this.f9992b = stableIdLookup;
        this.f9995e = adapter.getItemCount();
        adapter.registerAdapterDataObserver(this.f9996f);
    }

    /* renamed from: a */
    public void m6230a() {
        this.f9993c.unregisterAdapterDataObserver(this.f9996f);
        this.f9991a.dispose();
    }

    /* renamed from: b */
    public int m6231b() {
        return this.f9995e;
    }

    /* renamed from: c */
    public long m6232c(int i) {
        return this.f9992b.localToGlobal(this.f9993c.getItemId(i));
    }

    /* renamed from: d */
    public int m6233d(int i) {
        return this.f9991a.localToGlobal(this.f9993c.getItemViewType(i));
    }

    /* renamed from: e */
    public void m6234e(RecyclerView.ViewHolder viewHolder, int i) {
        this.f9993c.bindViewHolder(viewHolder, i);
    }

    /* renamed from: f */
    public RecyclerView.ViewHolder m6235f(ViewGroup viewGroup, int i) {
        return this.f9993c.onCreateViewHolder(viewGroup, this.f9991a.globalToLocal(i));
    }
}
