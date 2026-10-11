package com.bumptech.glide.request;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.drawable.DrawableDecoderCompat;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.StateVerifier;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public final class SingleRequest<R> implements Request, SizeReadyCallback, ResourceCallback {

    /* renamed from: E */
    public static final String f15335E = "Glide";

    /* renamed from: A */
    @GuardedBy("requestLock")
    public int f15337A;

    /* renamed from: B */
    @GuardedBy("requestLock")
    public boolean f15338B;

    /* renamed from: C */
    @Nullable
    public RuntimeException f15339C;

    /* renamed from: a */
    @Nullable
    public final String f15340a;

    /* renamed from: b */
    public final StateVerifier f15341b;

    /* renamed from: c */
    public final Object f15342c;

    /* renamed from: d */
    @Nullable
    public final RequestListener<R> f15343d;

    /* renamed from: e */
    public final RequestCoordinator f15344e;

    /* renamed from: f */
    public final Context f15345f;

    /* renamed from: g */
    public final GlideContext f15346g;

    /* renamed from: h */
    @Nullable
    public final Object f15347h;

    /* renamed from: i */
    public final Class<R> f15348i;

    /* renamed from: j */
    public final BaseRequestOptions<?> f15349j;

    /* renamed from: k */
    public final int f15350k;

    /* renamed from: l */
    public final int f15351l;

    /* renamed from: m */
    public final Priority f15352m;

    /* renamed from: n */
    public final Target<R> f15353n;

    /* renamed from: o */
    @Nullable
    public final List<RequestListener<R>> f15354o;

    /* renamed from: p */
    public final TransitionFactory<? super R> f15355p;

    /* renamed from: q */
    public final Executor f15356q;

    /* renamed from: r */
    @GuardedBy("requestLock")
    public Resource<R> f15357r;

    /* renamed from: s */
    @GuardedBy("requestLock")
    public Engine.LoadStatus f15358s;

    /* renamed from: t */
    @GuardedBy("requestLock")
    public long f15359t;

    /* renamed from: u */
    public volatile Engine f15360u;

    /* renamed from: v */
    @GuardedBy("requestLock")
    public Status f15361v;

    /* renamed from: w */
    @Nullable
    @GuardedBy("requestLock")
    public Drawable f15362w;

    /* renamed from: x */
    @Nullable
    @GuardedBy("requestLock")
    public Drawable f15363x;

    /* renamed from: y */
    @Nullable
    @GuardedBy("requestLock")
    public Drawable f15364y;

    /* renamed from: z */
    @GuardedBy("requestLock")
    public int f15365z;

    /* renamed from: D */
    public static final String f15334D = "Request";

    /* renamed from: F */
    public static final boolean f15336F = Log.isLoggable(f15334D, 2);

    /* loaded from: classes3.dex */
    public enum Status {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    public SingleRequest(Context context, GlideContext glideContext, @NonNull Object obj, @Nullable Object obj2, Class<R> cls, BaseRequestOptions<?> baseRequestOptions, int i, int i2, Priority priority, Target<R> target, @Nullable RequestListener<R> requestListener, @Nullable List<RequestListener<R>> list, RequestCoordinator requestCoordinator, Engine engine, TransitionFactory<? super R> transitionFactory, Executor executor) {
        this.f15340a = f15336F ? String.valueOf(super.hashCode()) : null;
        this.f15341b = StateVerifier.newInstance();
        this.f15342c = obj;
        this.f15345f = context;
        this.f15346g = glideContext;
        this.f15347h = obj2;
        this.f15348i = cls;
        this.f15349j = baseRequestOptions;
        this.f15350k = i;
        this.f15351l = i2;
        this.f15352m = priority;
        this.f15353n = target;
        this.f15343d = requestListener;
        this.f15354o = list;
        this.f15344e = requestCoordinator;
        this.f15360u = engine;
        this.f15355p = transitionFactory;
        this.f15356q = executor;
        this.f15361v = Status.PENDING;
        if (this.f15339C == null && glideContext.getExperiments().isEnabled(GlideBuilder.LogRequestOrigins.class)) {
            this.f15339C = new RuntimeException("Glide request origin trace");
        }
    }

    /* renamed from: l */
    public static int m9105l(int i, float f) {
        return i == Integer.MIN_VALUE ? i : Math.round(f * i);
    }

    public static <R> SingleRequest<R> obtain(Context context, GlideContext glideContext, Object obj, Object obj2, Class<R> cls, BaseRequestOptions<?> baseRequestOptions, int i, int i2, Priority priority, Target<R> target, RequestListener<R> requestListener, @Nullable List<RequestListener<R>> list, RequestCoordinator requestCoordinator, Engine engine, TransitionFactory<? super R> transitionFactory, Executor executor) {
        return new SingleRequest<>(context, glideContext, obj, obj2, cls, baseRequestOptions, i, i2, priority, target, requestListener, list, requestCoordinator, engine, transitionFactory, executor);
    }

    @GuardedBy("requestLock")
    /* renamed from: a */
    public final void m9106a() {
        if (this.f15338B) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: b */
    public final boolean m9107b() {
        RequestCoordinator requestCoordinator = this.f15344e;
        return requestCoordinator == null || requestCoordinator.canNotifyCleared(this);
    }

    @Override // com.bumptech.glide.request.Request
    public void begin() {
        synchronized (this.f15342c) {
            m9106a();
            this.f15341b.throwIfRecycled();
            this.f15359t = LogTime.getLogTime();
            if (this.f15347h == null) {
                if (Util.isValidDimensions(this.f15350k, this.f15351l)) {
                    this.f15365z = this.f15350k;
                    this.f15337A = this.f15351l;
                }
                m9119o(new GlideException("Received null model"), m9112g() == null ? 5 : 3);
                return;
            }
            Status status = this.f15361v;
            Status status2 = Status.RUNNING;
            if (status == status2) {
                throw new IllegalArgumentException("Cannot restart a running request");
            }
            if (status == Status.COMPLETE) {
                onResourceReady(this.f15357r, DataSource.MEMORY_CACHE, false);
                return;
            }
            Status status3 = Status.WAITING_FOR_SIZE;
            this.f15361v = status3;
            if (Util.isValidDimensions(this.f15350k, this.f15351l)) {
                onSizeReady(this.f15350k, this.f15351l);
            } else {
                this.f15353n.getSize(this);
            }
            Status status4 = this.f15361v;
            if ((status4 == status2 || status4 == status3) && m9108c()) {
                this.f15353n.onLoadStarted(m9113h());
            }
            if (f15336F) {
                m9116k("finished run method in " + LogTime.getElapsedMillis(this.f15359t));
            }
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: c */
    public final boolean m9108c() {
        RequestCoordinator requestCoordinator = this.f15344e;
        return requestCoordinator == null || requestCoordinator.canNotifyStatusChanged(this);
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        synchronized (this.f15342c) {
            m9106a();
            this.f15341b.throwIfRecycled();
            Status status = this.f15361v;
            Status status2 = Status.CLEARED;
            if (status == status2) {
                return;
            }
            m9110e();
            Resource<R> resource = this.f15357r;
            if (resource != null) {
                this.f15357r = null;
            } else {
                resource = null;
            }
            if (m9107b()) {
                this.f15353n.onLoadCleared(m9113h());
            }
            this.f15361v = status2;
            if (resource != null) {
                this.f15360u.release(resource);
            }
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: d */
    public final boolean m9109d() {
        RequestCoordinator requestCoordinator = this.f15344e;
        return requestCoordinator == null || requestCoordinator.canSetImage(this);
    }

    @GuardedBy("requestLock")
    /* renamed from: e */
    public final void m9110e() {
        m9106a();
        this.f15341b.throwIfRecycled();
        this.f15353n.removeCallback(this);
        Engine.LoadStatus loadStatus = this.f15358s;
        if (loadStatus != null) {
            loadStatus.cancel();
            this.f15358s = null;
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: f */
    public final Drawable m9111f() {
        if (this.f15362w == null) {
            Drawable errorPlaceholder = this.f15349j.getErrorPlaceholder();
            this.f15362w = errorPlaceholder;
            if (errorPlaceholder == null && this.f15349j.getErrorId() > 0) {
                this.f15362w = m9115j(this.f15349j.getErrorId());
            }
        }
        return this.f15362w;
    }

    @GuardedBy("requestLock")
    /* renamed from: g */
    public final Drawable m9112g() {
        if (this.f15364y == null) {
            Drawable fallbackDrawable = this.f15349j.getFallbackDrawable();
            this.f15364y = fallbackDrawable;
            if (fallbackDrawable == null && this.f15349j.getFallbackId() > 0) {
                this.f15364y = m9115j(this.f15349j.getFallbackId());
            }
        }
        return this.f15364y;
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public Object getLock() {
        this.f15341b.throwIfRecycled();
        return this.f15342c;
    }

    @GuardedBy("requestLock")
    /* renamed from: h */
    public final Drawable m9113h() {
        if (this.f15363x == null) {
            Drawable placeholderDrawable = this.f15349j.getPlaceholderDrawable();
            this.f15363x = placeholderDrawable;
            if (placeholderDrawable == null && this.f15349j.getPlaceholderId() > 0) {
                this.f15363x = m9115j(this.f15349j.getPlaceholderId());
            }
        }
        return this.f15363x;
    }

    @GuardedBy("requestLock")
    /* renamed from: i */
    public final boolean m9114i() {
        RequestCoordinator requestCoordinator = this.f15344e;
        return requestCoordinator == null || !requestCoordinator.getRoot().isAnyResourceSet();
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isAnyResourceSet() {
        boolean z;
        synchronized (this.f15342c) {
            z = this.f15361v == Status.COMPLETE;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isCleared() {
        boolean z;
        synchronized (this.f15342c) {
            z = this.f15361v == Status.CLEARED;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isComplete() {
        boolean z;
        synchronized (this.f15342c) {
            z = this.f15361v == Status.COMPLETE;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isEquivalentTo(Request request) {
        int i;
        int i2;
        Object obj;
        Class<R> cls;
        BaseRequestOptions<?> baseRequestOptions;
        Priority priority;
        int size;
        int i3;
        int i4;
        Object obj2;
        Class<R> cls2;
        BaseRequestOptions<?> baseRequestOptions2;
        Priority priority2;
        int size2;
        if (!(request instanceof SingleRequest)) {
            return false;
        }
        synchronized (this.f15342c) {
            i = this.f15350k;
            i2 = this.f15351l;
            obj = this.f15347h;
            cls = this.f15348i;
            baseRequestOptions = this.f15349j;
            priority = this.f15352m;
            List<RequestListener<R>> list = this.f15354o;
            size = list != null ? list.size() : 0;
        }
        SingleRequest singleRequest = (SingleRequest) request;
        synchronized (singleRequest.f15342c) {
            i3 = singleRequest.f15350k;
            i4 = singleRequest.f15351l;
            obj2 = singleRequest.f15347h;
            cls2 = singleRequest.f15348i;
            baseRequestOptions2 = singleRequest.f15349j;
            priority2 = singleRequest.f15352m;
            List<RequestListener<R>> list2 = singleRequest.f15354o;
            size2 = list2 != null ? list2.size() : 0;
        }
        return i == i3 && i2 == i4 && Util.bothModelsNullEquivalentOrEquals(obj, obj2) && cls.equals(cls2) && baseRequestOptions.equals(baseRequestOptions2) && priority == priority2 && size == size2;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        boolean z;
        synchronized (this.f15342c) {
            Status status = this.f15361v;
            z = status == Status.RUNNING || status == Status.WAITING_FOR_SIZE;
        }
        return z;
    }

    @GuardedBy("requestLock")
    /* renamed from: j */
    public final Drawable m9115j(@DrawableRes int i) {
        return DrawableDecoderCompat.getDrawable(this.f15346g, i, this.f15349j.getTheme() != null ? this.f15349j.getTheme() : this.f15345f.getTheme());
    }

    /* renamed from: k */
    public final void m9116k(String str) {
        Log.v(f15334D, str + " this: " + this.f15340a);
    }

    @GuardedBy("requestLock")
    /* renamed from: m */
    public final void m9117m() {
        RequestCoordinator requestCoordinator = this.f15344e;
        if (requestCoordinator != null) {
            requestCoordinator.onRequestFailed(this);
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: n */
    public final void m9118n() {
        RequestCoordinator requestCoordinator = this.f15344e;
        if (requestCoordinator != null) {
            requestCoordinator.onRequestSuccess(this);
        }
    }

    /* renamed from: o */
    public final void m9119o(GlideException glideException, int i) {
        boolean z;
        this.f15341b.throwIfRecycled();
        synchronized (this.f15342c) {
            glideException.setOrigin(this.f15339C);
            int logLevel = this.f15346g.getLogLevel();
            if (logLevel <= i) {
                Log.w("Glide", "Load failed for " + this.f15347h + " with size [" + this.f15365z + "x" + this.f15337A + IteratorUtils.f104924b, glideException);
                if (logLevel <= 4) {
                    glideException.logRootCauses("Glide");
                }
            }
            this.f15358s = null;
            this.f15361v = Status.FAILED;
            boolean z2 = true;
            this.f15338B = true;
            try {
                List<RequestListener<R>> list = this.f15354o;
                if (list != null) {
                    Iterator<RequestListener<R>> it2 = list.iterator();
                    z = false;
                    while (it2.hasNext()) {
                        z |= it2.next().onLoadFailed(glideException, this.f15347h, this.f15353n, m9114i());
                    }
                } else {
                    z = false;
                }
                RequestListener<R> requestListener = this.f15343d;
                if (requestListener == null || !requestListener.onLoadFailed(glideException, this.f15347h, this.f15353n, m9114i())) {
                    z2 = false;
                }
                if (!(z | z2)) {
                    m9121q();
                }
                this.f15338B = false;
                m9117m();
            } catch (Throwable th) {
                this.f15338B = false;
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public void onLoadFailed(GlideException glideException) {
        m9119o(glideException, 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.request.ResourceCallback
    public void onResourceReady(Resource<?> resource, DataSource dataSource, boolean z) {
        this.f15341b.throwIfRecycled();
        Resource<?> resource2 = null;
        try {
            synchronized (this.f15342c) {
                try {
                    this.f15358s = null;
                    if (resource == null) {
                        onLoadFailed(new GlideException("Expected to receive a Resource<R> with an object of " + this.f15348i + " inside, but instead got null."));
                        return;
                    }
                    Object obj = resource.get();
                    try {
                        if (obj != null && this.f15348i.isAssignableFrom(obj.getClass())) {
                            if (m9109d()) {
                                m9120p(resource, obj, dataSource, z);
                                return;
                            }
                            this.f15357r = null;
                            this.f15361v = Status.COMPLETE;
                            this.f15360u.release(resource);
                            return;
                        }
                        this.f15357r = null;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected to receive an object of ");
                        sb.append(this.f15348i);
                        sb.append(" but instead got ");
                        sb.append(obj != null ? obj.getClass() : "");
                        sb.append("{");
                        sb.append(obj);
                        sb.append("} inside Resource{");
                        sb.append(resource);
                        sb.append("}.");
                        sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        onLoadFailed(new GlideException(sb.toString()));
                        this.f15360u.release(resource);
                    } catch (Throwable th) {
                        resource2 = resource;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (resource2 != null) {
                this.f15360u.release(resource2);
            }
            throw th3;
        }
    }

    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public void onSizeReady(int i, int i2) {
        this.f15341b.throwIfRecycled();
        synchronized (this.f15342c) {
            try {
                try {
                    boolean z = f15336F;
                    if (z) {
                        m9116k("Got onSizeReady in " + LogTime.getElapsedMillis(this.f15359t));
                    }
                    if (this.f15361v != Status.WAITING_FOR_SIZE) {
                        return;
                    }
                    Status status = Status.RUNNING;
                    this.f15361v = status;
                    float sizeMultiplier = this.f15349j.getSizeMultiplier();
                    this.f15365z = m9105l(i, sizeMultiplier);
                    this.f15337A = m9105l(i2, sizeMultiplier);
                    if (z) {
                        m9116k("finished setup for calling load in " + LogTime.getElapsedMillis(this.f15359t));
                    }
                    this.f15358s = this.f15360u.load(this.f15346g, this.f15347h, this.f15349j.getSignature(), this.f15365z, this.f15337A, this.f15349j.getResourceClass(), this.f15348i, this.f15352m, this.f15349j.getDiskCacheStrategy(), this.f15349j.getTransformations(), this.f15349j.isTransformationRequired(), this.f15349j.m9089a(), this.f15349j.getOptions(), this.f15349j.isMemoryCacheable(), this.f15349j.getUseUnlimitedSourceGeneratorsPool(), this.f15349j.getUseAnimationPool(), this.f15349j.getOnlyRetrieveFromCache(), this, this.f15356q);
                    if (this.f15361v != status) {
                        this.f15358s = null;
                    }
                    if (z) {
                        m9116k("finished onSizeReady in " + LogTime.getElapsedMillis(this.f15359t));
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: p */
    public final void m9120p(Resource<R> resource, R r, DataSource dataSource, boolean z) {
        boolean z2;
        boolean m9114i = m9114i();
        this.f15361v = Status.COMPLETE;
        this.f15357r = resource;
        if (this.f15346g.getLogLevel() <= 3) {
            Log.d("Glide", "Finished loading " + r.getClass().getSimpleName() + " from " + dataSource + " for " + this.f15347h + " with size [" + this.f15365z + "x" + this.f15337A + "] in " + LogTime.getElapsedMillis(this.f15359t) + " ms");
        }
        boolean z3 = true;
        this.f15338B = true;
        try {
            List<RequestListener<R>> list = this.f15354o;
            if (list != null) {
                Iterator<RequestListener<R>> it2 = list.iterator();
                z2 = false;
                while (it2.hasNext()) {
                    z2 |= it2.next().onResourceReady(r, this.f15347h, this.f15353n, dataSource, m9114i);
                }
            } else {
                z2 = false;
            }
            RequestListener<R> requestListener = this.f15343d;
            if (requestListener == null || !requestListener.onResourceReady(r, this.f15347h, this.f15353n, dataSource, m9114i)) {
                z3 = false;
            }
            if (!(z3 | z2)) {
                this.f15353n.onResourceReady(r, this.f15355p.build(dataSource, m9114i));
            }
            this.f15338B = false;
            m9118n();
        } catch (Throwable th) {
            this.f15338B = false;
            throw th;
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void pause() {
        synchronized (this.f15342c) {
            if (isRunning()) {
                clear();
            }
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: q */
    public final void m9121q() {
        if (m9108c()) {
            Drawable m9112g = this.f15347h == null ? m9112g() : null;
            if (m9112g == null) {
                m9112g = m9111f();
            }
            if (m9112g == null) {
                m9112g = m9113h();
            }
            this.f15353n.onLoadFailed(m9112g);
        }
    }
}
