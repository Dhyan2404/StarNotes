package androidx.lifecycle;

import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.internal.SafeIterableMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class MediatorLiveData<T> extends MutableLiveData<T> {

    /* renamed from: m */
    public SafeIterableMap<LiveData<?>, C1143a<?>> f7896m;

    /* renamed from: androidx.lifecycle.MediatorLiveData$a */
    /* loaded from: classes3.dex */
    public static class C1143a<V> implements Observer<V> {

        /* renamed from: a */
        public final LiveData<V> f7897a;

        /* renamed from: b */
        public final Observer<? super V> f7898b;

        /* renamed from: c */
        public int f7899c = -1;

        public C1143a(LiveData<V> liveData, Observer<? super V> observer) {
            this.f7897a = liveData;
            this.f7898b = observer;
        }

        /* renamed from: a */
        public void m4910a() {
            this.f7897a.observeForever(this);
        }

        /* renamed from: b */
        public void m4911b() {
            this.f7897a.removeObserver(this);
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable V v) {
            if (this.f7899c != this.f7897a.m4905e()) {
                this.f7899c = this.f7897a.m4905e();
                this.f7898b.onChanged(v);
            }
        }
    }

    public MediatorLiveData() {
        this.f7896m = new SafeIterableMap<>();
    }

    @MainThread
    public <S> void addSource(@NonNull LiveData<S> liveData, @NonNull Observer<? super S> observer) {
        if (liveData == null) {
            throw new NullPointerException("source cannot be null");
        }
        C1143a<?> c1143a = new C1143a<>(liveData, observer);
        C1143a<?> putIfAbsent = this.f7896m.putIfAbsent(liveData, c1143a);
        if (putIfAbsent != null && putIfAbsent.f7898b != observer) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (putIfAbsent == null && hasActiveObservers()) {
            c1143a.m4910a();
        }
    }

    @Override // androidx.lifecycle.LiveData
    @CallSuper
    public void onActive() {
        Iterator<Map.Entry<LiveData<?>, C1143a<?>>> it2 = this.f7896m.iterator();
        while (it2.hasNext()) {
            it2.next().getValue().m4910a();
        }
    }

    @Override // androidx.lifecycle.LiveData
    @CallSuper
    public void onInactive() {
        Iterator<Map.Entry<LiveData<?>, C1143a<?>>> it2 = this.f7896m.iterator();
        while (it2.hasNext()) {
            it2.next().getValue().m4911b();
        }
    }

    @MainThread
    public <S> void removeSource(@NonNull LiveData<S> liveData) {
        C1143a<?> remove = this.f7896m.remove(liveData);
        if (remove != null) {
            remove.m4911b();
        }
    }

    public MediatorLiveData(T t) {
        super(t);
        this.f7896m = new SafeIterableMap<>();
    }
}
