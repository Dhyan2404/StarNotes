package androidx.databinding;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import androidx.databinding.CallbackRegistry;
import androidx.databinding.ObservableList;

/* loaded from: classes3.dex */
public class ListChangeRegistry extends CallbackRegistry<ObservableList.OnListChangedCallback, ObservableList, C0952b> {

    /* renamed from: l */
    public static final int f6675l = 0;

    /* renamed from: m */
    public static final int f6676m = 1;

    /* renamed from: n */
    public static final int f6677n = 2;

    /* renamed from: o */
    public static final int f6678o = 3;

    /* renamed from: p */
    public static final int f6679p = 4;

    /* renamed from: k */
    public static final Pools.SynchronizedPool<C0952b> f6674k = new Pools.SynchronizedPool<>(10);

    /* renamed from: q */
    public static final CallbackRegistry.NotifierCallback<ObservableList.OnListChangedCallback, ObservableList, C0952b> f6680q = new C0951a();

    /* renamed from: androidx.databinding.ListChangeRegistry$a */
    /* loaded from: classes3.dex */
    public class C0951a extends CallbackRegistry.NotifierCallback<ObservableList.OnListChangedCallback, ObservableList, C0952b> {
        @Override // androidx.databinding.CallbackRegistry.NotifierCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNotifyCallback(ObservableList.OnListChangedCallback onListChangedCallback, ObservableList observableList, int i, C0952b c0952b) {
            if (i == 1) {
                onListChangedCallback.onItemRangeChanged(observableList, c0952b.f6681a, c0952b.f6682b);
                return;
            }
            if (i == 2) {
                onListChangedCallback.onItemRangeInserted(observableList, c0952b.f6681a, c0952b.f6682b);
                return;
            }
            if (i == 3) {
                onListChangedCallback.onItemRangeMoved(observableList, c0952b.f6681a, c0952b.f6683c, c0952b.f6682b);
            } else if (i != 4) {
                onListChangedCallback.onChanged(observableList);
            } else {
                onListChangedCallback.onItemRangeRemoved(observableList, c0952b.f6681a, c0952b.f6682b);
            }
        }
    }

    /* renamed from: androidx.databinding.ListChangeRegistry$b */
    /* loaded from: classes3.dex */
    public static class C0952b {

        /* renamed from: a */
        public int f6681a;

        /* renamed from: b */
        public int f6682b;

        /* renamed from: c */
        public int f6683c;
    }

    public ListChangeRegistry() {
        super(f6680q);
    }

    /* renamed from: h */
    public static C0952b m4048h(int i, int i2, int i3) {
        C0952b acquire = f6674k.acquire();
        if (acquire == null) {
            acquire = new C0952b();
        }
        acquire.f6681a = i;
        acquire.f6683c = i2;
        acquire.f6682b = i3;
        return acquire;
    }

    public void notifyChanged(@NonNull ObservableList observableList) {
        notifyCallbacks(observableList, 0, (C0952b) null);
    }

    public void notifyInserted(@NonNull ObservableList observableList, int i, int i2) {
        notifyCallbacks(observableList, 2, m4048h(i, 0, i2));
    }

    public void notifyMoved(@NonNull ObservableList observableList, int i, int i2, int i3) {
        notifyCallbacks(observableList, 3, m4048h(i, i2, i3));
    }

    public void notifyRemoved(@NonNull ObservableList observableList, int i, int i2) {
        notifyCallbacks(observableList, 4, m4048h(i, 0, i2));
    }

    @Override // androidx.databinding.CallbackRegistry
    public synchronized void notifyCallbacks(@NonNull ObservableList observableList, int i, C0952b c0952b) {
        super.notifyCallbacks((ListChangeRegistry) observableList, i, (int) c0952b);
        if (c0952b != null) {
            f6674k.release(c0952b);
        }
    }

    public void notifyChanged(@NonNull ObservableList observableList, int i, int i2) {
        notifyCallbacks(observableList, 1, m4048h(i, 0, i2));
    }
}
