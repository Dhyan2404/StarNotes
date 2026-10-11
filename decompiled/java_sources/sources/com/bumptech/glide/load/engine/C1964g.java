package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.LogTime;
import com.sunia.HTREnginev2.lse;
import com.sunia.HTREnginev2.mse;
import java.util.Collections;
import java.util.List;

/* renamed from: com.bumptech.glide.load.engine.g */
/* loaded from: classes3.dex */
public class C1964g implements DataFetcherGenerator, DataFetcherGenerator.FetcherReadyCallback {

    /* renamed from: l */
    public static final String f14822l = "SourceGenerator";

    /* renamed from: e */
    public final C1947c<?> f14823e;

    /* renamed from: f */
    public final DataFetcherGenerator.FetcherReadyCallback f14824f;

    /* renamed from: g */
    public int f14825g;

    /* renamed from: h */
    public C1937b f14826h;

    /* renamed from: i */
    public Object f14827i;

    /* renamed from: j */
    public volatile ModelLoader.LoadData<?> f14828j;

    /* renamed from: k */
    public lse f14829k;

    /* renamed from: com.bumptech.glide.load.engine.g$a */
    /* loaded from: classes3.dex */
    public class a implements DataFetcher.DataCallback<Object> {

        /* renamed from: e */
        public final /* synthetic */ ModelLoader.LoadData f14830e;

        public a(ModelLoader.LoadData loadData) {
            this.f14830e = loadData;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public void onDataReady(@Nullable Object obj) {
            if (C1964g.this.m8863d(this.f14830e)) {
                C1964g.this.m8864e(this.f14830e, obj);
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public void onLoadFailed(@NonNull Exception exc) {
            if (C1964g.this.m8863d(this.f14830e)) {
                C1964g.this.m8865f(this.f14830e, exc);
            }
        }
    }

    public C1964g(C1947c<?> c1947c, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f14823e = c1947c;
        this.f14824f = fetcherReadyCallback;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    /* renamed from: a */
    public boolean mo8689a() {
        Object obj = this.f14827i;
        if (obj != null) {
            this.f14827i = null;
            m8861b(obj);
        }
        C1937b c1937b = this.f14826h;
        if (c1937b != null && c1937b.mo8689a()) {
            return true;
        }
        this.f14826h = null;
        this.f14828j = null;
        boolean z = false;
        while (!z && m8862c()) {
            List<ModelLoader.LoadData<?>> m8804g = this.f14823e.m8804g();
            int i = this.f14825g;
            this.f14825g = i + 1;
            this.f14828j = m8804g.get(i);
            if (this.f14828j != null && (this.f14823e.m8802e().isDataCacheable(this.f14828j.fetcher.getDataSource()) || this.f14823e.m8817t(this.f14828j.fetcher.getDataClass()))) {
                m8866g(this.f14828j);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public final void m8861b(Object obj) {
        long logTime = LogTime.getLogTime();
        try {
            Encoder<X> m8813p = this.f14823e.m8813p(obj);
            mse mseVar = new mse(m8813p, obj, this.f14823e.m8808k());
            this.f14829k = new lse(this.f14828j.sourceKey, this.f14823e.m8812o());
            this.f14823e.m8801d().put(this.f14829k, mseVar);
            if (Log.isLoggable(f14822l, 2)) {
                Log.v(f14822l, "Finished encoding source to cache, key: " + this.f14829k + ", data: " + obj + ", encoder: " + m8813p + ", duration: " + LogTime.getElapsedMillis(logTime));
            }
            this.f14828j.fetcher.cleanup();
            this.f14826h = new C1937b(Collections.singletonList(this.f14828j.sourceKey), this.f14823e, this);
        } catch (Throwable th) {
            this.f14828j.fetcher.cleanup();
            throw th;
        }
    }

    /* renamed from: c */
    public final boolean m8862c() {
        return this.f14825g < this.f14823e.m8804g().size();
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public void cancel() {
        ModelLoader.LoadData<?> loadData = this.f14828j;
        if (loadData != null) {
            loadData.fetcher.cancel();
        }
    }

    /* renamed from: d */
    public boolean m8863d(ModelLoader.LoadData<?> loadData) {
        ModelLoader.LoadData<?> loadData2 = this.f14828j;
        return loadData2 != null && loadData2 == loadData;
    }

    /* renamed from: e */
    public void m8864e(ModelLoader.LoadData<?> loadData, Object obj) {
        DiskCacheStrategy m8802e = this.f14823e.m8802e();
        if (obj != null && m8802e.isDataCacheable(loadData.fetcher.getDataSource())) {
            this.f14827i = obj;
            this.f14824f.reschedule();
        } else {
            DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback = this.f14824f;
            Key key = loadData.sourceKey;
            DataFetcher<?> dataFetcher = loadData.fetcher;
            fetcherReadyCallback.onDataFetcherReady(key, obj, dataFetcher, dataFetcher.getDataSource(), this.f14829k);
        }
    }

    /* renamed from: f */
    public void m8865f(ModelLoader.LoadData<?> loadData, @NonNull Exception exc) {
        DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback = this.f14824f;
        lse lseVar = this.f14829k;
        DataFetcher<?> dataFetcher = loadData.fetcher;
        fetcherReadyCallback.onDataFetcherFailed(lseVar, exc, dataFetcher, dataFetcher.getDataSource());
    }

    /* renamed from: g */
    public final void m8866g(ModelLoader.LoadData<?> loadData) {
        this.f14828j.fetcher.loadData(this.f14823e.m8809l(), new a(loadData));
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void onDataFetcherFailed(Key key, Exception exc, DataFetcher<?> dataFetcher, DataSource dataSource) {
        this.f14824f.onDataFetcherFailed(key, exc, dataFetcher, this.f14828j.fetcher.getDataSource());
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void onDataFetcherReady(Key key, Object obj, DataFetcher<?> dataFetcher, DataSource dataSource, Key key2) {
        this.f14824f.onDataFetcherReady(key, obj, dataFetcher, this.f14828j.fetcher.getDataSource(), key);
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void reschedule() {
        throw new UnsupportedOperationException();
    }
}
