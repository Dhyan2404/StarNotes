package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class LiveData<T> {

    /* renamed from: k */
    public static final int f7875k = -1;

    /* renamed from: l */
    public static final Object f7876l = new Object();

    /* renamed from: a */
    public final Object f7877a;

    /* renamed from: b */
    public SafeIterableMap<Observer<? super T>, LiveData<T>.AbstractC1142c> f7878b;

    /* renamed from: c */
    public int f7879c;

    /* renamed from: d */
    public boolean f7880d;

    /* renamed from: e */
    public volatile Object f7881e;

    /* renamed from: f */
    public volatile Object f7882f;

    /* renamed from: g */
    public int f7883g;

    /* renamed from: h */
    public boolean f7884h;

    /* renamed from: i */
    public boolean f7885i;

    /* renamed from: j */
    public final Runnable f7886j;

    /* loaded from: classes3.dex */
    public class LifecycleBoundObserver extends LiveData<T>.AbstractC1142c implements LifecycleEventObserver {

        /* renamed from: i */
        @NonNull
        public final LifecycleOwner f7887i;

        public LifecycleBoundObserver(@NonNull LifecycleOwner lifecycleOwner, Observer<? super T> observer) {
            super(observer);
            this.f7887i = lifecycleOwner;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC1142c
        /* renamed from: b */
        public void mo4906b() {
            this.f7887i.getLifecycle().removeObserver(this);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC1142c
        /* renamed from: c */
        public boolean mo4907c(LifecycleOwner lifecycleOwner) {
            return this.f7887i == lifecycleOwner;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC1142c
        /* renamed from: d */
        public boolean mo4908d() {
            return this.f7887i.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED);
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            Lifecycle.State currentState = this.f7887i.getLifecycle().getCurrentState();
            if (currentState == Lifecycle.State.DESTROYED) {
                LiveData.this.removeObserver(this.f7891e);
                return;
            }
            Lifecycle.State state = null;
            while (state != currentState) {
                m4909a(mo4908d());
                state = currentState;
                currentState = this.f7887i.getLifecycle().getCurrentState();
            }
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$a */
    /* loaded from: classes3.dex */
    public class RunnableC1140a implements Runnable {
        public RunnableC1140a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f7877a) {
                obj = LiveData.this.f7882f;
                LiveData.this.f7882f = LiveData.f7876l;
            }
            LiveData.this.setValue(obj);
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$b */
    /* loaded from: classes3.dex */
    public class C1141b extends LiveData<T>.AbstractC1142c {
        public C1141b(Observer<? super T> observer) {
            super(observer);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC1142c
        /* renamed from: d */
        public boolean mo4908d() {
            return true;
        }
    }

    /* renamed from: androidx.lifecycle.LiveData$c */
    /* loaded from: classes3.dex */
    public abstract class AbstractC1142c {

        /* renamed from: e */
        public final Observer<? super T> f7891e;

        /* renamed from: f */
        public boolean f7892f;

        /* renamed from: g */
        public int f7893g = -1;

        public AbstractC1142c(Observer<? super T> observer) {
            this.f7891e = observer;
        }

        /* renamed from: a */
        public void m4909a(boolean z) {
            if (z == this.f7892f) {
                return;
            }
            this.f7892f = z;
            LiveData.this.m4902b(z ? 1 : -1);
            if (this.f7892f) {
                LiveData.this.m4904d(this);
            }
        }

        /* renamed from: b */
        public void mo4906b() {
        }

        /* renamed from: c */
        public boolean mo4907c(LifecycleOwner lifecycleOwner) {
            return false;
        }

        /* renamed from: d */
        public abstract boolean mo4908d();
    }

    public LiveData(T t) {
        this.f7877a = new Object();
        this.f7878b = new SafeIterableMap<>();
        this.f7879c = 0;
        this.f7882f = f7876l;
        this.f7886j = new RunnableC1140a();
        this.f7881e = t;
        this.f7883g = 0;
    }

    /* renamed from: a */
    public static void m4901a(String str) {
        if (ArchTaskExecutor.getInstance().isMainThread()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    @MainThread
    /* renamed from: b */
    public void m4902b(int i) {
        int i2 = this.f7879c;
        this.f7879c = i + i2;
        if (this.f7880d) {
            return;
        }
        this.f7880d = true;
        while (true) {
            try {
                int i3 = this.f7879c;
                if (i2 == i3) {
                    return;
                }
                boolean z = i2 == 0 && i3 > 0;
                boolean z2 = i2 > 0 && i3 == 0;
                if (z) {
                    onActive();
                } else if (z2) {
                    onInactive();
                }
                i2 = i3;
            } finally {
                this.f7880d = false;
            }
        }
    }

    /* renamed from: c */
    public final void m4903c(LiveData<T>.AbstractC1142c abstractC1142c) {
        if (abstractC1142c.f7892f) {
            if (!abstractC1142c.mo4908d()) {
                abstractC1142c.m4909a(false);
                return;
            }
            int i = abstractC1142c.f7893g;
            int i2 = this.f7883g;
            if (i >= i2) {
                return;
            }
            abstractC1142c.f7893g = i2;
            abstractC1142c.f7891e.onChanged((Object) this.f7881e);
        }
    }

    /* renamed from: d */
    public void m4904d(@Nullable LiveData<T>.AbstractC1142c abstractC1142c) {
        if (this.f7884h) {
            this.f7885i = true;
            return;
        }
        this.f7884h = true;
        do {
            this.f7885i = false;
            if (abstractC1142c != null) {
                m4903c(abstractC1142c);
                abstractC1142c = null;
            } else {
                SafeIterableMap<Observer<? super T>, LiveData<T>.AbstractC1142c>.IteratorWithAdditions iteratorWithAdditions = this.f7878b.iteratorWithAdditions();
                while (iteratorWithAdditions.hasNext()) {
                    m4903c((AbstractC1142c) iteratorWithAdditions.next().getValue());
                    if (this.f7885i) {
                        break;
                    }
                }
            }
        } while (this.f7885i);
        this.f7884h = false;
    }

    /* renamed from: e */
    public int m4905e() {
        return this.f7883g;
    }

    @Nullable
    public T getValue() {
        T t = (T) this.f7881e;
        if (t != f7876l) {
            return t;
        }
        return null;
    }

    public boolean hasActiveObservers() {
        return this.f7879c > 0;
    }

    public boolean hasObservers() {
        return this.f7878b.size() > 0;
    }

    public boolean isInitialized() {
        return this.f7881e != f7876l;
    }

    @MainThread
    public void observe(@NonNull LifecycleOwner lifecycleOwner, @NonNull Observer<? super T> observer) {
        m4901a("observe");
        if (lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(lifecycleOwner, observer);
        LiveData<T>.AbstractC1142c putIfAbsent = this.f7878b.putIfAbsent(observer, lifecycleBoundObserver);
        if (putIfAbsent != null && !putIfAbsent.mo4907c(lifecycleOwner)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (putIfAbsent != null) {
            return;
        }
        lifecycleOwner.getLifecycle().addObserver(lifecycleBoundObserver);
    }

    @MainThread
    public void observeForever(@NonNull Observer<? super T> observer) {
        m4901a("observeForever");
        C1141b c1141b = new C1141b(observer);
        LiveData<T>.AbstractC1142c putIfAbsent = this.f7878b.putIfAbsent(observer, c1141b);
        if (putIfAbsent instanceof LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (putIfAbsent != null) {
            return;
        }
        c1141b.m4909a(true);
    }

    public void onActive() {
    }

    public void onInactive() {
    }

    public void postValue(T t) {
        boolean z;
        synchronized (this.f7877a) {
            z = this.f7882f == f7876l;
            this.f7882f = t;
        }
        if (z) {
            ArchTaskExecutor.getInstance().postToMainThread(this.f7886j);
        }
    }

    @MainThread
    public void removeObserver(@NonNull Observer<? super T> observer) {
        m4901a("removeObserver");
        LiveData<T>.AbstractC1142c remove = this.f7878b.remove(observer);
        if (remove == null) {
            return;
        }
        remove.mo4906b();
        remove.m4909a(false);
    }

    @MainThread
    public void removeObservers(@NonNull LifecycleOwner lifecycleOwner) {
        m4901a("removeObservers");
        Iterator<Map.Entry<Observer<? super T>, LiveData<T>.AbstractC1142c>> it2 = this.f7878b.iterator();
        while (it2.hasNext()) {
            Map.Entry<Observer<? super T>, LiveData<T>.AbstractC1142c> next = it2.next();
            if (next.getValue().mo4907c(lifecycleOwner)) {
                removeObserver(next.getKey());
            }
        }
    }

    @MainThread
    public void setValue(T t) {
        m4901a("setValue");
        this.f7883g++;
        this.f7881e = t;
        m4904d(null);
    }

    public LiveData() {
        this.f7877a = new Object();
        this.f7878b = new SafeIterableMap<>();
        this.f7879c = 0;
        Object obj = f7876l;
        this.f7882f = obj;
        this.f7886j = new RunnableC1140a();
        this.f7881e = obj;
        this.f7883g = -1;
    }
}
