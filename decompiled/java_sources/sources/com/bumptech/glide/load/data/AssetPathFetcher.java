package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.DataFetcher;
import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class AssetPathFetcher<T> implements DataFetcher<T> {

    /* renamed from: h */
    public static final String f14475h = "AssetPathFetcher";

    /* renamed from: e */
    public final String f14476e;

    /* renamed from: f */
    public final AssetManager f14477f;

    /* renamed from: g */
    public T f14478g;

    public AssetPathFetcher(AssetManager assetManager, String str) {
        this.f14477f = assetManager;
        this.f14476e = str;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
        T t = this.f14478g;
        if (t == null) {
            return;
        }
        try {
            close(t);
        } catch (IOException unused) {
        }
    }

    public abstract void close(T t) throws IOException;

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public DataSource getDataSource() {
        return DataSource.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super T> dataCallback) {
        try {
            T loadResource = loadResource(this.f14477f, this.f14476e);
            this.f14478g = loadResource;
            dataCallback.onDataReady(loadResource);
        } catch (IOException e) {
            if (Log.isLoggable(f14475h, 3)) {
                Log.d(f14475h, "Failed to load data from asset manager", e);
            }
            dataCallback.onLoadFailed(e);
        }
    }

    public abstract T loadResource(AssetManager assetManager, String str) throws IOException;
}
