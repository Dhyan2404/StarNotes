package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.manager.TargetTracker;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.CustomViewTarget;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import com.sunia.HTREnginev2.roj;
import java.io.File;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public class RequestManager implements ComponentCallbacks2, LifecycleListener, roj<RequestBuilder<Drawable>> {

    /* renamed from: n */
    public static final RequestOptions f14336n = RequestOptions.decodeTypeOf(Bitmap.class).lock();

    /* renamed from: o */
    public static final RequestOptions f14337o = RequestOptions.decodeTypeOf(GifDrawable.class).lock();

    /* renamed from: p */
    public static final RequestOptions f14338p = RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.DATA).priority(Priority.LOW).skipMemoryCache(true);
    protected final Context context;

    /* renamed from: e */
    public final Lifecycle f14339e;

    /* renamed from: f */
    @GuardedBy("this")
    public final RequestTracker f14340f;

    /* renamed from: g */
    @GuardedBy("this")
    public final RequestManagerTreeNode f14341g;
    protected final Glide glide;

    /* renamed from: h */
    @GuardedBy("this")
    public final TargetTracker f14342h;

    /* renamed from: i */
    public final Runnable f14343i;

    /* renamed from: j */
    public final ConnectivityMonitor f14344j;

    /* renamed from: k */
    public final CopyOnWriteArrayList<RequestListener<Object>> f14345k;

    /* renamed from: l */
    @GuardedBy("this")
    public RequestOptions f14346l;

    /* renamed from: m */
    public boolean f14347m;

    /* renamed from: com.bumptech.glide.RequestManager$a */
    /* loaded from: classes3.dex */
    public class RunnableC1898a implements Runnable {
        public RunnableC1898a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RequestManager requestManager = RequestManager.this;
            requestManager.f14339e.addListener(requestManager);
        }
    }

    /* renamed from: com.bumptech.glide.RequestManager$b */
    /* loaded from: classes3.dex */
    public static class C1899b extends CustomViewTarget<View, Object> {
        public C1899b(@NonNull View view) {
            super(view);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadFailed(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.CustomViewTarget
        public void onResourceCleared(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(@NonNull Object obj, @Nullable Transition<? super Object> transition) {
        }
    }

    /* renamed from: com.bumptech.glide.RequestManager$c */
    /* loaded from: classes3.dex */
    public class C1900c implements ConnectivityMonitor.ConnectivityListener {

        /* renamed from: a */
        @GuardedBy("RequestManager.this")
        public final RequestTracker f14349a;

        public C1900c(@NonNull RequestTracker requestTracker) {
            this.f14349a = requestTracker;
        }

        @Override // com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener
        public void onConnectivityChanged(boolean z) {
            if (z) {
                synchronized (RequestManager.this) {
                    this.f14349a.restartRequests();
                }
            }
        }
    }

    public RequestManager(@NonNull Glide glide, @NonNull Lifecycle lifecycle, @NonNull RequestManagerTreeNode requestManagerTreeNode, @NonNull Context context) {
        this(glide, lifecycle, requestManagerTreeNode, new RequestTracker(), glide.m8560c(), context);
    }

    /* renamed from: a */
    public List<RequestListener<Object>> m8591a() {
        return this.f14345k;
    }

    public RequestManager addDefaultRequestListener(RequestListener<Object> requestListener) {
        this.f14345k.add(requestListener);
        return this;
    }

    @NonNull
    public synchronized RequestManager applyDefaultRequestOptions(@NonNull RequestOptions requestOptions) {
        m8598g(requestOptions);
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: as */
    public <ResourceType> RequestBuilder<ResourceType> mo8592as(@NonNull Class<ResourceType> cls) {
        return new RequestBuilder<>(this.glide, this, cls, this.context);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<Bitmap> asBitmap() {
        return mo8592as(Bitmap.class).apply((BaseRequestOptions<?>) f14336n);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<Drawable> asDrawable() {
        return mo8592as(Drawable.class);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<File> asFile() {
        return mo8592as(File.class).apply((BaseRequestOptions<?>) RequestOptions.skipMemoryCacheOf(true));
    }

    @NonNull
    @CheckResult
    public RequestBuilder<GifDrawable> asGif() {
        return mo8592as(GifDrawable.class).apply((BaseRequestOptions<?>) f14337o);
    }

    /* renamed from: b */
    public synchronized RequestOptions m8593b() {
        return this.f14346l;
    }

    @NonNull
    /* renamed from: c */
    public <T> TransitionOptions<?, T> m8594c(Class<T> cls) {
        return this.glide.m8561d().getDefaultTransitionOptions(cls);
    }

    public void clear(@NonNull View view) {
        clear(new C1899b(view));
    }

    /* renamed from: d */
    public synchronized void m8595d(@NonNull Target<?> target, @NonNull Request request) {
        this.f14342h.track(target);
        this.f14340f.runRequest(request);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<File> download(@Nullable Object obj) {
        return downloadOnly().load(obj);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<File> downloadOnly() {
        return mo8592as(File.class).apply((BaseRequestOptions<?>) f14338p);
    }

    /* renamed from: e */
    public synchronized boolean m8596e(@NonNull Target<?> target) {
        Request request = target.getRequest();
        if (request == null) {
            return true;
        }
        if (!this.f14340f.clearAndRemove(request)) {
            return false;
        }
        this.f14342h.untrack(target);
        target.setRequest(null);
        return true;
    }

    /* renamed from: f */
    public final void m8597f(@NonNull Target<?> target) {
        boolean m8596e = m8596e(target);
        Request request = target.getRequest();
        if (m8596e || this.glide.m8563i(target) || request == null) {
            return;
        }
        target.setRequest(null);
        request.clear();
    }

    /* renamed from: g */
    public final synchronized void m8598g(@NonNull RequestOptions requestOptions) {
        this.f14346l = this.f14346l.apply(requestOptions);
    }

    public synchronized boolean isPaused() {
        return this.f14340f.isPaused();
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public synchronized void onDestroy() {
        this.f14342h.onDestroy();
        Iterator<Target<?>> it2 = this.f14342h.getAll().iterator();
        while (it2.hasNext()) {
            clear(it2.next());
        }
        this.f14342h.clear();
        this.f14340f.clearRequests();
        this.f14339e.removeListener(this);
        this.f14339e.removeListener(this.f14344j);
        Util.removeCallbacksOnUiThread(this.f14343i);
        this.glide.m8564k(this);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public synchronized void onStart() {
        resumeRequests();
        this.f14342h.onStart();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public synchronized void onStop() {
        pauseRequests();
        this.f14342h.onStop();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i == 60 && this.f14347m) {
            pauseAllRequestsRecursive();
        }
    }

    public synchronized void pauseAllRequests() {
        this.f14340f.pauseAllRequests();
    }

    public synchronized void pauseAllRequestsRecursive() {
        pauseAllRequests();
        Iterator<RequestManager> it2 = this.f14341g.getDescendants().iterator();
        while (it2.hasNext()) {
            it2.next().pauseAllRequests();
        }
    }

    public synchronized void pauseRequests() {
        this.f14340f.pauseRequests();
    }

    public synchronized void pauseRequestsRecursive() {
        pauseRequests();
        Iterator<RequestManager> it2 = this.f14341g.getDescendants().iterator();
        while (it2.hasNext()) {
            it2.next().pauseRequests();
        }
    }

    public synchronized void resumeRequests() {
        this.f14340f.resumeRequests();
    }

    public synchronized void resumeRequestsRecursive() {
        Util.assertMainThread();
        resumeRequests();
        Iterator<RequestManager> it2 = this.f14341g.getDescendants().iterator();
        while (it2.hasNext()) {
            it2.next().resumeRequests();
        }
    }

    @NonNull
    public synchronized RequestManager setDefaultRequestOptions(@NonNull RequestOptions requestOptions) {
        setRequestOptions(requestOptions);
        return this;
    }

    public void setPauseAllRequestsOnTrimMemoryModerate(boolean z) {
        this.f14347m = z;
    }

    public synchronized void setRequestOptions(@NonNull RequestOptions requestOptions) {
        this.f14346l = requestOptions.mo72155clone().autoClone();
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.f14340f + ", treeNode=" + this.f14341g + "}";
    }

    public void clear(@Nullable Target<?> target) {
        if (target == null) {
            return;
        }
        m8597f(target);
    }

    public RequestManager(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, RequestTracker requestTracker, ConnectivityMonitorFactory connectivityMonitorFactory, Context context) {
        this.f14342h = new TargetTracker();
        RunnableC1898a runnableC1898a = new RunnableC1898a();
        this.f14343i = runnableC1898a;
        this.glide = glide;
        this.f14339e = lifecycle;
        this.f14341g = requestManagerTreeNode;
        this.f14340f = requestTracker;
        this.context = context;
        ConnectivityMonitor build = connectivityMonitorFactory.build(context.getApplicationContext(), new C1900c(requestTracker));
        this.f14344j = build;
        if (Util.isOnBackgroundThread()) {
            Util.postOnUiThread(runnableC1898a);
        } else {
            lifecycle.addListener(this);
        }
        lifecycle.addListener(build);
        this.f14345k = new CopyOnWriteArrayList<>(glide.m8561d().getDefaultRequestListeners());
        setRequestOptions(glide.m8561d().getDefaultRequestOptions());
        glide.m8562h(this);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<Drawable> load(@Nullable Bitmap bitmap) {
        return asDrawable().load(bitmap);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<Drawable> load(@Nullable Drawable drawable) {
        return asDrawable().load(drawable);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<Drawable> load(@Nullable String str) {
        return asDrawable().load(str);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<Drawable> load(@Nullable Uri uri) {
        return asDrawable().load(uri);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<Drawable> load(@Nullable File file) {
        return asDrawable().load(file);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<Drawable> load(@Nullable @DrawableRes @RawRes Integer num) {
        return asDrawable().load(num);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sunia.HTREnginev2.roj
    @CheckResult
    @Deprecated
    public RequestBuilder<Drawable> load(@Nullable URL url) {
        return asDrawable().load(url);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<Drawable> load(@Nullable byte[] bArr) {
        return asDrawable().load(bArr);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<Drawable> load(@Nullable Object obj) {
        return asDrawable().load(obj);
    }
}
