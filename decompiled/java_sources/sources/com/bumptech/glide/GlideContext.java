package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.widget.ImageView;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.request.target.ViewTarget;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class GlideContext extends ContextWrapper {

    /* renamed from: k */
    @VisibleForTesting
    public static final TransitionOptions<?, ?> f14281k = new GenericTransitionOptions();

    /* renamed from: a */
    public final ArrayPool f14282a;

    /* renamed from: b */
    public final Registry f14283b;

    /* renamed from: c */
    public final ImageViewTargetFactory f14284c;

    /* renamed from: d */
    public final Glide.RequestOptionsFactory f14285d;

    /* renamed from: e */
    public final List<RequestListener<Object>> f14286e;

    /* renamed from: f */
    public final Map<Class<?>, TransitionOptions<?, ?>> f14287f;

    /* renamed from: g */
    public final Engine f14288g;

    /* renamed from: h */
    public final GlideExperiments f14289h;

    /* renamed from: i */
    public final int f14290i;

    /* renamed from: j */
    @Nullable
    @GuardedBy("this")
    public RequestOptions f14291j;

    public GlideContext(@NonNull Context context, @NonNull ArrayPool arrayPool, @NonNull Registry registry, @NonNull ImageViewTargetFactory imageViewTargetFactory, @NonNull Glide.RequestOptionsFactory requestOptionsFactory, @NonNull Map<Class<?>, TransitionOptions<?, ?>> map, @NonNull List<RequestListener<Object>> list, @NonNull Engine engine, @NonNull GlideExperiments glideExperiments, int i) {
        super(context.getApplicationContext());
        this.f14282a = arrayPool;
        this.f14283b = registry;
        this.f14284c = imageViewTargetFactory;
        this.f14285d = requestOptionsFactory;
        this.f14286e = list;
        this.f14287f = map;
        this.f14288g = engine;
        this.f14289h = glideExperiments;
        this.f14290i = i;
    }

    @NonNull
    public <X> ViewTarget<ImageView, X> buildImageViewTarget(@NonNull ImageView imageView, @NonNull Class<X> cls) {
        return this.f14284c.buildTarget(imageView, cls);
    }

    @NonNull
    public ArrayPool getArrayPool() {
        return this.f14282a;
    }

    public List<RequestListener<Object>> getDefaultRequestListeners() {
        return this.f14286e;
    }

    public synchronized RequestOptions getDefaultRequestOptions() {
        if (this.f14291j == null) {
            this.f14291j = this.f14285d.build().lock();
        }
        return this.f14291j;
    }

    @NonNull
    public <T> TransitionOptions<?, T> getDefaultTransitionOptions(@NonNull Class<T> cls) {
        TransitionOptions<?, T> transitionOptions = (TransitionOptions) this.f14287f.get(cls);
        if (transitionOptions == null) {
            for (Map.Entry<Class<?>, TransitionOptions<?, ?>> entry : this.f14287f.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    transitionOptions = (TransitionOptions) entry.getValue();
                }
            }
        }
        return transitionOptions == null ? (TransitionOptions<?, T>) f14281k : transitionOptions;
    }

    @NonNull
    public Engine getEngine() {
        return this.f14288g;
    }

    public GlideExperiments getExperiments() {
        return this.f14289h;
    }

    public int getLogLevel() {
        return this.f14290i;
    }

    @NonNull
    public Registry getRegistry() {
        return this.f14283b;
    }
}
