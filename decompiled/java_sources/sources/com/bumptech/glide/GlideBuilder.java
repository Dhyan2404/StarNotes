package com.bumptech.glide;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideExperiments;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPoolAdapter;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory;
import com.bumptech.glide.load.engine.cache.LruResourceCache;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class GlideBuilder {

    /* renamed from: c */
    public Engine f14262c;

    /* renamed from: d */
    public BitmapPool f14263d;

    /* renamed from: e */
    public ArrayPool f14264e;

    /* renamed from: f */
    public MemoryCache f14265f;

    /* renamed from: g */
    public GlideExecutor f14266g;

    /* renamed from: h */
    public GlideExecutor f14267h;

    /* renamed from: i */
    public DiskCache.Factory f14268i;

    /* renamed from: j */
    public MemorySizeCalculator f14269j;

    /* renamed from: k */
    public ConnectivityMonitorFactory f14270k;

    /* renamed from: n */
    @Nullable
    public RequestManagerRetriever.RequestManagerFactory f14273n;

    /* renamed from: o */
    public GlideExecutor f14274o;

    /* renamed from: p */
    public boolean f14275p;

    /* renamed from: q */
    @Nullable
    public List<RequestListener<Object>> f14276q;

    /* renamed from: a */
    public final Map<Class<?>, TransitionOptions<?, ?>> f14260a = new ArrayMap();

    /* renamed from: b */
    public final GlideExperiments.C1892a f14261b = new GlideExperiments.C1892a();

    /* renamed from: l */
    public int f14271l = 4;

    /* renamed from: m */
    public Glide.RequestOptionsFactory f14272m = new C1888a();

    /* loaded from: classes3.dex */
    public static final class LogRequestOrigins implements GlideExperiments.InterfaceC1893b {
    }

    /* loaded from: classes3.dex */
    public static final class WaitForFramesAfterTrimMemory implements GlideExperiments.InterfaceC1893b {
    }

    /* renamed from: com.bumptech.glide.GlideBuilder$a */
    /* loaded from: classes3.dex */
    public class C1888a implements Glide.RequestOptionsFactory {
        public C1888a() {
        }

        @Override // com.bumptech.glide.Glide.RequestOptionsFactory
        @NonNull
        public RequestOptions build() {
            return new RequestOptions();
        }
    }

    /* renamed from: com.bumptech.glide.GlideBuilder$b */
    /* loaded from: classes3.dex */
    public class C1889b implements Glide.RequestOptionsFactory {

        /* renamed from: a */
        public final /* synthetic */ RequestOptions f14278a;

        public C1889b(RequestOptions requestOptions) {
            this.f14278a = requestOptions;
        }

        @Override // com.bumptech.glide.Glide.RequestOptionsFactory
        @NonNull
        public RequestOptions build() {
            RequestOptions requestOptions = this.f14278a;
            return requestOptions != null ? requestOptions : new RequestOptions();
        }
    }

    /* renamed from: com.bumptech.glide.GlideBuilder$c */
    /* loaded from: classes3.dex */
    public static final class C1890c implements GlideExperiments.InterfaceC1893b {
    }

    /* renamed from: com.bumptech.glide.GlideBuilder$d */
    /* loaded from: classes3.dex */
    public static final class C1891d implements GlideExperiments.InterfaceC1893b {

        /* renamed from: a */
        public final int f14280a;

        public C1891d(int i) {
            this.f14280a = i;
        }
    }

    @NonNull
    /* renamed from: a */
    public Glide m8565a(@NonNull Context context) {
        if (this.f14266g == null) {
            this.f14266g = GlideExecutor.newSourceExecutor();
        }
        if (this.f14267h == null) {
            this.f14267h = GlideExecutor.newDiskCacheExecutor();
        }
        if (this.f14274o == null) {
            this.f14274o = GlideExecutor.newAnimationExecutor();
        }
        if (this.f14269j == null) {
            this.f14269j = new MemorySizeCalculator.Builder(context).build();
        }
        if (this.f14270k == null) {
            this.f14270k = new DefaultConnectivityMonitorFactory();
        }
        if (this.f14263d == null) {
            int bitmapPoolSize = this.f14269j.getBitmapPoolSize();
            if (bitmapPoolSize > 0) {
                this.f14263d = new LruBitmapPool(bitmapPoolSize);
            } else {
                this.f14263d = new BitmapPoolAdapter();
            }
        }
        if (this.f14264e == null) {
            this.f14264e = new LruArrayPool(this.f14269j.getArrayPoolSizeInBytes());
        }
        if (this.f14265f == null) {
            this.f14265f = new LruResourceCache(this.f14269j.getMemoryCacheSize());
        }
        if (this.f14268i == null) {
            this.f14268i = new InternalCacheDiskCacheFactory(context);
        }
        if (this.f14262c == null) {
            this.f14262c = new Engine(this.f14265f, this.f14268i, this.f14267h, this.f14266g, GlideExecutor.newUnlimitedSourceExecutor(), this.f14274o, this.f14275p);
        }
        List<RequestListener<Object>> list = this.f14276q;
        if (list == null) {
            this.f14276q = Collections.emptyList();
        } else {
            this.f14276q = Collections.unmodifiableList(list);
        }
        GlideExperiments m8571c = this.f14261b.m8571c();
        return new Glide(context, this.f14262c, this.f14265f, this.f14263d, this.f14264e, new RequestManagerRetriever(this.f14273n, m8571c), this.f14270k, this.f14271l, this.f14272m, this.f14260a, this.f14276q, m8571c);
    }

    @NonNull
    public GlideBuilder addGlobalRequestListener(@NonNull RequestListener<Object> requestListener) {
        if (this.f14276q == null) {
            this.f14276q = new ArrayList();
        }
        this.f14276q.add(requestListener);
        return this;
    }

    /* renamed from: b */
    public GlideBuilder m8566b(Engine engine) {
        this.f14262c = engine;
        return this;
    }

    /* renamed from: c */
    public void m8567c(@Nullable RequestManagerRetriever.RequestManagerFactory requestManagerFactory) {
        this.f14273n = requestManagerFactory;
    }

    @NonNull
    public GlideBuilder setAnimationExecutor(@Nullable GlideExecutor glideExecutor) {
        this.f14274o = glideExecutor;
        return this;
    }

    @NonNull
    public GlideBuilder setArrayPool(@Nullable ArrayPool arrayPool) {
        this.f14264e = arrayPool;
        return this;
    }

    @NonNull
    public GlideBuilder setBitmapPool(@Nullable BitmapPool bitmapPool) {
        this.f14263d = bitmapPool;
        return this;
    }

    @NonNull
    public GlideBuilder setConnectivityMonitorFactory(@Nullable ConnectivityMonitorFactory connectivityMonitorFactory) {
        this.f14270k = connectivityMonitorFactory;
        return this;
    }

    @NonNull
    public GlideBuilder setDefaultRequestOptions(@Nullable RequestOptions requestOptions) {
        return setDefaultRequestOptions(new C1889b(requestOptions));
    }

    @NonNull
    public <T> GlideBuilder setDefaultTransitionOptions(@NonNull Class<T> cls, @Nullable TransitionOptions<?, T> transitionOptions) {
        this.f14260a.put(cls, transitionOptions);
        return this;
    }

    @NonNull
    public GlideBuilder setDiskCache(@Nullable DiskCache.Factory factory) {
        this.f14268i = factory;
        return this;
    }

    @NonNull
    public GlideBuilder setDiskCacheExecutor(@Nullable GlideExecutor glideExecutor) {
        this.f14267h = glideExecutor;
        return this;
    }

    public GlideBuilder setImageDecoderEnabledForBitmaps(boolean z) {
        this.f14261b.m8572d(new C1890c(), z);
        return this;
    }

    @NonNull
    public GlideBuilder setIsActiveResourceRetentionAllowed(boolean z) {
        this.f14275p = z;
        return this;
    }

    @NonNull
    public GlideBuilder setLogLevel(int i) {
        if (i < 2 || i > 6) {
            throw new IllegalArgumentException("Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR");
        }
        this.f14271l = i;
        return this;
    }

    public GlideBuilder setLogRequestOrigins(boolean z) {
        this.f14261b.m8572d(new LogRequestOrigins(), z);
        return this;
    }

    @NonNull
    public GlideBuilder setMemoryCache(@Nullable MemoryCache memoryCache) {
        this.f14265f = memoryCache;
        return this;
    }

    @NonNull
    public GlideBuilder setMemorySizeCalculator(@NonNull MemorySizeCalculator.Builder builder) {
        return setMemorySizeCalculator(builder.build());
    }

    @Deprecated
    public GlideBuilder setResizeExecutor(@Nullable GlideExecutor glideExecutor) {
        return setSourceExecutor(glideExecutor);
    }

    @NonNull
    public GlideBuilder setSourceExecutor(@Nullable GlideExecutor glideExecutor) {
        this.f14266g = glideExecutor;
        return this;
    }

    @NonNull
    public GlideBuilder setDefaultRequestOptions(@NonNull Glide.RequestOptionsFactory requestOptionsFactory) {
        this.f14272m = (Glide.RequestOptionsFactory) Preconditions.checkNotNull(requestOptionsFactory);
        return this;
    }

    @NonNull
    public GlideBuilder setMemorySizeCalculator(@Nullable MemorySizeCalculator memorySizeCalculator) {
        this.f14269j = memorySizeCalculator;
        return this;
    }
}
