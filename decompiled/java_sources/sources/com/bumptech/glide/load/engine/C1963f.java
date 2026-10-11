package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.model.ModelLoader;
import com.sunia.HTREnginev2.qll;
import java.io.File;
import java.util.List;

/* renamed from: com.bumptech.glide.load.engine.f */
/* loaded from: classes3.dex */
public class C1963f implements DataFetcherGenerator, DataFetcher.DataCallback<Object> {

    /* renamed from: e */
    public final DataFetcherGenerator.FetcherReadyCallback f14812e;

    /* renamed from: f */
    public final C1947c<?> f14813f;

    /* renamed from: g */
    public int f14814g;

    /* renamed from: h */
    public int f14815h = -1;

    /* renamed from: i */
    public Key f14816i;

    /* renamed from: j */
    public List<ModelLoader<File, ?>> f14817j;

    /* renamed from: k */
    public int f14818k;

    /* renamed from: l */
    public volatile ModelLoader.LoadData<?> f14819l;

    /* renamed from: m */
    public File f14820m;

    /* renamed from: n */
    public qll f14821n;

    public C1963f(C1947c<?> c1947c, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f14813f = c1947c;
        this.f14812e = fetcherReadyCallback;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    /* renamed from: a */
    public boolean mo8689a() {
        List<Key> m8800c = this.f14813f.m8800c();
        boolean z = false;
        if (m8800c.isEmpty()) {
            return false;
        }
        List<Class<?>> m8810m = this.f14813f.m8810m();
        if (m8810m.isEmpty()) {
            if (File.class.equals(this.f14813f.m8814q())) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f14813f.m8806i() + " to " + this.f14813f.m8814q());
        }
        while (true) {
            if (this.f14817j != null && m8860b()) {
                this.f14819l = null;
                while (!z && m8860b()) {
                    List<ModelLoader<File, ?>> list = this.f14817j;
                    int i = this.f14818k;
                    this.f14818k = i + 1;
                    this.f14819l = list.get(i).buildLoadData(this.f14820m, this.f14813f.m8816s(), this.f14813f.m8803f(), this.f14813f.m8808k());
                    if (this.f14819l != null && this.f14813f.m8817t(this.f14819l.fetcher.getDataClass())) {
                        this.f14819l.fetcher.loadData(this.f14813f.m8809l(), this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.f14815h + 1;
            this.f14815h = i2;
            if (i2 >= m8810m.size()) {
                int i3 = this.f14814g + 1;
                this.f14814g = i3;
                if (i3 >= m8800c.size()) {
                    return false;
                }
                this.f14815h = 0;
            }
            Key key = m8800c.get(this.f14814g);
            Class<?> cls = m8810m.get(this.f14815h);
            this.f14821n = new qll(this.f14813f.m8799b(), key, this.f14813f.m8812o(), this.f14813f.m8816s(), this.f14813f.m8803f(), this.f14813f.m8815r(cls), cls, this.f14813f.m8808k());
            File file = this.f14813f.m8801d().get(this.f14821n);
            this.f14820m = file;
            if (file != null) {
                this.f14816i = key;
                this.f14817j = this.f14813f.m8807j(file);
                this.f14818k = 0;
            }
        }
    }

    /* renamed from: b */
    public final boolean m8860b() {
        return this.f14818k < this.f14817j.size();
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public void cancel() {
        ModelLoader.LoadData<?> loadData = this.f14819l;
        if (loadData != null) {
            loadData.fetcher.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void onDataReady(Object obj) {
        this.f14812e.onDataFetcherReady(this.f14816i, obj, this.f14819l.fetcher, DataSource.RESOURCE_DISK_CACHE, this.f14821n);
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void onLoadFailed(@NonNull Exception exc) {
        this.f14812e.onDataFetcherFailed(this.f14821n, exc, this.f14819l.fetcher, DataSource.RESOURCE_DISK_CACHE);
    }
}
