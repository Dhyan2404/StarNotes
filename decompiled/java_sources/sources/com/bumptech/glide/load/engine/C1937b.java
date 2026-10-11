package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.model.ModelLoader;
import com.sunia.HTREnginev2.lse;
import java.io.File;
import java.util.List;

/* renamed from: com.bumptech.glide.load.engine.b */
/* loaded from: classes3.dex */
public class C1937b implements DataFetcherGenerator, DataFetcher.DataCallback<Object> {

    /* renamed from: e */
    public final List<Key> f14629e;

    /* renamed from: f */
    public final C1947c<?> f14630f;

    /* renamed from: g */
    public final DataFetcherGenerator.FetcherReadyCallback f14631g;

    /* renamed from: h */
    public int f14632h;

    /* renamed from: i */
    public Key f14633i;

    /* renamed from: j */
    public List<ModelLoader<File, ?>> f14634j;

    /* renamed from: k */
    public int f14635k;

    /* renamed from: l */
    public volatile ModelLoader.LoadData<?> f14636l;

    /* renamed from: m */
    public File f14637m;

    public C1937b(C1947c<?> c1947c, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this(c1947c.m8800c(), c1947c, fetcherReadyCallback);
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    /* renamed from: a */
    public boolean mo8689a() {
        while (true) {
            boolean z = false;
            if (this.f14634j != null && m8753b()) {
                this.f14636l = null;
                while (!z && m8753b()) {
                    List<ModelLoader<File, ?>> list = this.f14634j;
                    int i = this.f14635k;
                    this.f14635k = i + 1;
                    this.f14636l = list.get(i).buildLoadData(this.f14637m, this.f14630f.m8816s(), this.f14630f.m8803f(), this.f14630f.m8808k());
                    if (this.f14636l != null && this.f14630f.m8817t(this.f14636l.fetcher.getDataClass())) {
                        this.f14636l.fetcher.loadData(this.f14630f.m8809l(), this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.f14632h + 1;
            this.f14632h = i2;
            if (i2 >= this.f14629e.size()) {
                return false;
            }
            Key key = this.f14629e.get(this.f14632h);
            File file = this.f14630f.m8801d().get(new lse(key, this.f14630f.m8812o()));
            this.f14637m = file;
            if (file != null) {
                this.f14633i = key;
                this.f14634j = this.f14630f.m8807j(file);
                this.f14635k = 0;
            }
        }
    }

    /* renamed from: b */
    public final boolean m8753b() {
        return this.f14635k < this.f14634j.size();
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public void cancel() {
        ModelLoader.LoadData<?> loadData = this.f14636l;
        if (loadData != null) {
            loadData.fetcher.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void onDataReady(Object obj) {
        this.f14631g.onDataFetcherReady(this.f14633i, obj, this.f14636l.fetcher, DataSource.DATA_DISK_CACHE, this.f14633i);
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void onLoadFailed(@NonNull Exception exc) {
        this.f14631g.onDataFetcherFailed(this.f14633i, exc, this.f14636l.fetcher, DataSource.DATA_DISK_CACHE);
    }

    public C1937b(List<Key> list, C1947c<?> c1947c, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f14632h = -1;
        this.f14629e = list;
        this.f14630f = c1947c;
        this.f14631g = fetcherReadyCallback;
    }
}
