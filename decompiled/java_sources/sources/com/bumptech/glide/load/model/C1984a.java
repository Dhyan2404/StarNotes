package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.bumptech.glide.load.model.a */
/* loaded from: classes3.dex */
public class C1984a<Model, Data> implements ModelLoader<Model, Data> {

    /* renamed from: a */
    public final List<ModelLoader<Model, Data>> f14936a;

    /* renamed from: b */
    public final Pools.Pool<List<Throwable>> f14937b;

    /* renamed from: com.bumptech.glide.load.model.a$a */
    /* loaded from: classes3.dex */
    public static class a<Data> implements DataFetcher<Data>, DataFetcher.DataCallback<Data> {

        /* renamed from: e */
        public final List<DataFetcher<Data>> f14938e;

        /* renamed from: f */
        public final Pools.Pool<List<Throwable>> f14939f;

        /* renamed from: g */
        public int f14940g;

        /* renamed from: h */
        public Priority f14941h;

        /* renamed from: i */
        public DataFetcher.DataCallback<? super Data> f14942i;

        /* renamed from: j */
        @Nullable
        public List<Throwable> f14943j;

        /* renamed from: k */
        public boolean f14944k;

        public a(@NonNull List<DataFetcher<Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            this.f14939f = pool;
            Preconditions.checkNotEmpty(list);
            this.f14938e = list;
            this.f14940g = 0;
        }

        /* renamed from: a */
        public final void m8918a() {
            if (this.f14944k) {
                return;
            }
            if (this.f14940g < this.f14938e.size() - 1) {
                this.f14940g++;
                loadData(this.f14941h, this.f14942i);
            } else {
                Preconditions.checkNotNull(this.f14943j);
                this.f14942i.onLoadFailed(new GlideException("Fetch failed", new ArrayList(this.f14943j)));
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
            this.f14944k = true;
            Iterator<DataFetcher<Data>> it2 = this.f14938e.iterator();
            while (it2.hasNext()) {
                it2.next().cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
            List<Throwable> list = this.f14943j;
            if (list != null) {
                this.f14939f.release(list);
            }
            this.f14943j = null;
            Iterator<DataFetcher<Data>> it2 = this.f14938e.iterator();
            while (it2.hasNext()) {
                it2.next().cleanup();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<Data> getDataClass() {
            return this.f14938e.get(0).getDataClass();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public DataSource getDataSource() {
            return this.f14938e.get(0).getDataSource();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super Data> dataCallback) {
            this.f14941h = priority;
            this.f14942i = dataCallback;
            this.f14943j = this.f14939f.acquire();
            this.f14938e.get(this.f14940g).loadData(priority, this);
            if (this.f14944k) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public void onDataReady(@Nullable Data data) {
            if (data != null) {
                this.f14942i.onDataReady(data);
            } else {
                m8918a();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public void onLoadFailed(@NonNull Exception exc) {
            ((List) Preconditions.checkNotNull(this.f14943j)).add(exc);
            m8918a();
        }
    }

    public C1984a(@NonNull List<ModelLoader<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
        this.f14936a = list;
        this.f14937b = pool;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<Data> buildLoadData(@NonNull Model model, int i, int i2, @NonNull Options options) {
        ModelLoader.LoadData<Data> buildLoadData;
        int size = this.f14936a.size();
        ArrayList arrayList = new ArrayList(size);
        Key key = null;
        for (int i3 = 0; i3 < size; i3++) {
            ModelLoader<Model, Data> modelLoader = this.f14936a.get(i3);
            if (modelLoader.handles(model) && (buildLoadData = modelLoader.buildLoadData(model, i, i2, options)) != null) {
                key = buildLoadData.sourceKey;
                arrayList.add(buildLoadData.fetcher);
            }
        }
        if (arrayList.isEmpty() || key == null) {
            return null;
        }
        return new ModelLoader.LoadData<>(key, new a(arrayList, this.f14937b));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(@NonNull Model model) {
        Iterator<ModelLoader<Model, Data>> it2 = this.f14936a.iterator();
        while (it2.hasNext()) {
            if (it2.next().handles(model)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f14936a.toArray()) + '}';
    }
}
