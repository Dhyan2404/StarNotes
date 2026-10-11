package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.AsyncDifferConfig;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class AsyncListDiffer<T> {

    /* renamed from: h */
    public static final Executor f9173h = new ExecutorC1310b();

    /* renamed from: a */
    public final ListUpdateCallback f9174a;

    /* renamed from: b */
    public final AsyncDifferConfig<T> f9175b;

    /* renamed from: c */
    public Executor f9176c;

    /* renamed from: d */
    public final List<ListListener<T>> f9177d;

    /* renamed from: e */
    @Nullable
    public List<T> f9178e;

    /* renamed from: f */
    @NonNull
    public List<T> f9179f;

    /* renamed from: g */
    public int f9180g;

    /* loaded from: classes3.dex */
    public interface ListListener<T> {
        void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2);
    }

    /* renamed from: androidx.recyclerview.widget.AsyncListDiffer$a */
    /* loaded from: classes3.dex */
    public class RunnableC1309a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ List f9181e;

        /* renamed from: f */
        public final /* synthetic */ List f9182f;

        /* renamed from: g */
        public final /* synthetic */ int f9183g;

        /* renamed from: h */
        public final /* synthetic */ Runnable f9184h;

        /* renamed from: androidx.recyclerview.widget.AsyncListDiffer$a$a */
        /* loaded from: classes3.dex */
        public class a extends DiffUtil.Callback {
            public a() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areContentsTheSame(int i, int i2) {
                Object obj = RunnableC1309a.this.f9181e.get(i);
                Object obj2 = RunnableC1309a.this.f9182f.get(i2);
                if (obj != null && obj2 != null) {
                    return AsyncListDiffer.this.f9175b.getDiffCallback().areContentsTheSame(obj, obj2);
                }
                if (obj == null && obj2 == null) {
                    return true;
                }
                throw new AssertionError();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areItemsTheSame(int i, int i2) {
                Object obj = RunnableC1309a.this.f9181e.get(i);
                Object obj2 = RunnableC1309a.this.f9182f.get(i2);
                return (obj == null || obj2 == null) ? obj == null && obj2 == null : AsyncListDiffer.this.f9175b.getDiffCallback().areItemsTheSame(obj, obj2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            @Nullable
            public Object getChangePayload(int i, int i2) {
                Object obj = RunnableC1309a.this.f9181e.get(i);
                Object obj2 = RunnableC1309a.this.f9182f.get(i2);
                if (obj == null || obj2 == null) {
                    throw new AssertionError();
                }
                return AsyncListDiffer.this.f9175b.getDiffCallback().getChangePayload(obj, obj2);
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getNewListSize() {
                return RunnableC1309a.this.f9182f.size();
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getOldListSize() {
                return RunnableC1309a.this.f9181e.size();
            }
        }

        /* renamed from: androidx.recyclerview.widget.AsyncListDiffer$a$b */
        /* loaded from: classes3.dex */
        public class b implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ DiffUtil.DiffResult f9187e;

            public b(DiffUtil.DiffResult diffResult) {
                this.f9187e = diffResult;
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC1309a runnableC1309a = RunnableC1309a.this;
                AsyncListDiffer asyncListDiffer = AsyncListDiffer.this;
                if (asyncListDiffer.f9180g == runnableC1309a.f9183g) {
                    asyncListDiffer.m5497a(runnableC1309a.f9182f, this.f9187e, runnableC1309a.f9184h);
                }
            }
        }

        public RunnableC1309a(List list, List list2, int i, Runnable runnable) {
            this.f9181e = list;
            this.f9182f = list2;
            this.f9183g = i;
            this.f9184h = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            AsyncListDiffer.this.f9176c.execute(new b(DiffUtil.calculateDiff(new a())));
        }
    }

    /* renamed from: androidx.recyclerview.widget.AsyncListDiffer$b */
    /* loaded from: classes3.dex */
    public static class ExecutorC1310b implements Executor {

        /* renamed from: e */
        public final Handler f9189e = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.f9189e.post(runnable);
        }
    }

    public AsyncListDiffer(@NonNull RecyclerView.Adapter adapter, @NonNull DiffUtil.ItemCallback<T> itemCallback) {
        this(new AdapterListUpdateCallback(adapter), new AsyncDifferConfig.Builder(itemCallback).build());
    }

    /* renamed from: a */
    public void m5497a(@NonNull List<T> list, @NonNull DiffUtil.DiffResult diffResult, @Nullable Runnable runnable) {
        List<T> list2 = this.f9179f;
        this.f9178e = list;
        this.f9179f = Collections.unmodifiableList(list);
        diffResult.dispatchUpdatesTo(this.f9174a);
        m5498b(list2, runnable);
    }

    public void addListListener(@NonNull ListListener<T> listListener) {
        this.f9177d.add(listListener);
    }

    /* renamed from: b */
    public final void m5498b(@NonNull List<T> list, @Nullable Runnable runnable) {
        Iterator<ListListener<T>> it2 = this.f9177d.iterator();
        while (it2.hasNext()) {
            it2.next().onCurrentListChanged(list, this.f9179f);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    @NonNull
    public List<T> getCurrentList() {
        return this.f9179f;
    }

    public void removeListListener(@NonNull ListListener<T> listListener) {
        this.f9177d.remove(listListener);
    }

    public void submitList(@Nullable List<T> list) {
        submitList(list, null);
    }

    public void submitList(@Nullable List<T> list, @Nullable Runnable runnable) {
        int i = this.f9180g + 1;
        this.f9180g = i;
        List<T> list2 = this.f9178e;
        if (list == list2) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        List<T> list3 = this.f9179f;
        if (list == null) {
            int size = list2.size();
            this.f9178e = null;
            this.f9179f = Collections.emptyList();
            this.f9174a.onRemoved(0, size);
            m5498b(list3, runnable);
            return;
        }
        if (list2 == null) {
            this.f9178e = list;
            this.f9179f = Collections.unmodifiableList(list);
            this.f9174a.onInserted(0, list.size());
            m5498b(list3, runnable);
            return;
        }
        this.f9175b.getBackgroundThreadExecutor().execute(new RunnableC1309a(list2, list, i, runnable));
    }

    public AsyncListDiffer(@NonNull ListUpdateCallback listUpdateCallback, @NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        this.f9177d = new CopyOnWriteArrayList();
        this.f9179f = Collections.emptyList();
        this.f9174a = listUpdateCallback;
        this.f9175b = asyncDifferConfig;
        if (asyncDifferConfig.getMainThreadExecutor() != null) {
            this.f9176c = asyncDifferConfig.getMainThreadExecutor();
        } else {
            this.f9176c = f9173h;
        }
    }
}
