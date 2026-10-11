package com.bumptech.glide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.ErrorRequestCoordinator;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestCoordinator;
import com.bumptech.glide.request.RequestFutureTarget;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.ThumbnailRequestCoordinator;
import com.bumptech.glide.request.target.PreloadTarget;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.target.ViewTarget;
import com.bumptech.glide.signature.AndroidResourceSignature;
import com.bumptech.glide.util.Executors;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import com.sunia.HTREnginev2.roj;
import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class RequestBuilder<TranscodeType> extends BaseRequestOptions<RequestBuilder<TranscodeType>> implements Cloneable, roj<RequestBuilder<TranscodeType>> {
    protected static final RequestOptions DOWNLOAD_ONLY_OPTIONS = new RequestOptions().diskCacheStrategy(DiskCacheStrategy.DATA).priority(Priority.LOW).skipMemoryCache(true);

    /* renamed from: M0 */
    public final Context f14320M0;

    /* renamed from: N0 */
    public final RequestManager f14321N0;

    /* renamed from: O0 */
    public final Class<TranscodeType> f14322O0;

    /* renamed from: P0 */
    public final Glide f14323P0;

    /* renamed from: Q0 */
    public final GlideContext f14324Q0;

    /* renamed from: R0 */
    @NonNull
    public TransitionOptions<?, ? super TranscodeType> f14325R0;

    /* renamed from: S0 */
    @Nullable
    public Object f14326S0;

    /* renamed from: T0 */
    @Nullable
    public List<RequestListener<TranscodeType>> f14327T0;

    /* renamed from: U0 */
    @Nullable
    public RequestBuilder<TranscodeType> f14328U0;

    /* renamed from: V0 */
    @Nullable
    public RequestBuilder<TranscodeType> f14329V0;

    /* renamed from: W0 */
    @Nullable
    public Float f14330W0;

    /* renamed from: X0 */
    public boolean f14331X0;

    /* renamed from: Y0 */
    public boolean f14332Y0;

    /* renamed from: Z0 */
    public boolean f14333Z0;

    /* renamed from: com.bumptech.glide.RequestBuilder$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C1897a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14334a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f14335b;

        static {
            int[] iArr = new int[Priority.values().length];
            f14335b = iArr;
            try {
                iArr[Priority.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14335b[Priority.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14335b[Priority.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14335b[Priority.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f14334a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14334a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14334a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14334a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14334a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14334a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14334a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14334a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    @SuppressLint({"CheckResult"})
    public RequestBuilder(@NonNull Glide glide, RequestManager requestManager, Class<TranscodeType> cls, Context context) {
        this.f14331X0 = true;
        this.f14323P0 = glide;
        this.f14321N0 = requestManager;
        this.f14322O0 = cls;
        this.f14320M0 = context;
        this.f14325R0 = requestManager.m8594c(cls);
        this.f14324Q0 = glide.m8561d();
        m8585q(requestManager.m8591a());
        apply((BaseRequestOptions<?>) requestManager.m8593b());
    }

    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> addListener(@Nullable RequestListener<TranscodeType> requestListener) {
        if (isAutoCloneEnabled()) {
            return mo72155clone().addListener(requestListener);
        }
        if (requestListener != null) {
            if (this.f14327T0 == null) {
                this.f14327T0 = new ArrayList();
            }
            this.f14327T0.add(requestListener);
        }
        return selfOrThrowIfLocked();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    @NonNull
    @CheckResult
    public /* bridge */ /* synthetic */ BaseRequestOptions apply(@NonNull BaseRequestOptions baseRequestOptions) {
        return apply((BaseRequestOptions<?>) baseRequestOptions);
    }

    @CheckResult
    @Deprecated
    public <Y extends Target<File>> Y downloadOnly(@NonNull Y y) {
        return (Y) getDownloadOnlyRequest().into((RequestBuilder<File>) y);
    }

    @NonNull
    public RequestBuilder<TranscodeType> error(@Nullable RequestBuilder<TranscodeType> requestBuilder) {
        if (isAutoCloneEnabled()) {
            return mo72155clone().error((RequestBuilder) requestBuilder);
        }
        this.f14329V0 = requestBuilder;
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public RequestBuilder<File> getDownloadOnlyRequest() {
        return new RequestBuilder(File.class, this).apply((BaseRequestOptions<?>) DOWNLOAD_ONLY_OPTIONS);
    }

    @NonNull
    public <Y extends Target<TranscodeType>> Y into(@NonNull Y y) {
        return (Y) m8587s(y, null, Executors.mainThreadExecutor());
    }

    /* renamed from: l */
    public final Request m8580l(Target<TranscodeType> target, @Nullable RequestListener<TranscodeType> requestListener, BaseRequestOptions<?> baseRequestOptions, Executor executor) {
        return m8581m(new Object(), target, requestListener, null, this.f14325R0, baseRequestOptions.getPriority(), baseRequestOptions.getOverrideWidth(), baseRequestOptions.getOverrideHeight(), baseRequestOptions, executor);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> listener(@Nullable RequestListener<TranscodeType> requestListener) {
        if (isAutoCloneEnabled()) {
            return mo72155clone().listener(requestListener);
        }
        this.f14327T0 = null;
        return addListener(requestListener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    public final Request m8581m(Object obj, Target<TranscodeType> target, @Nullable RequestListener<TranscodeType> requestListener, @Nullable RequestCoordinator requestCoordinator, TransitionOptions<?, ? super TranscodeType> transitionOptions, Priority priority, int i, int i2, BaseRequestOptions<?> baseRequestOptions, Executor executor) {
        ErrorRequestCoordinator errorRequestCoordinator;
        RequestCoordinator requestCoordinator2;
        if (this.f14329V0 != null) {
            requestCoordinator2 = new ErrorRequestCoordinator(obj, requestCoordinator);
            errorRequestCoordinator = requestCoordinator2;
        } else {
            errorRequestCoordinator = 0;
            requestCoordinator2 = requestCoordinator;
        }
        Request m8582n = m8582n(obj, target, requestListener, requestCoordinator2, transitionOptions, priority, i, i2, baseRequestOptions, executor);
        if (errorRequestCoordinator == 0) {
            return m8582n;
        }
        int overrideWidth = this.f14329V0.getOverrideWidth();
        int overrideHeight = this.f14329V0.getOverrideHeight();
        if (Util.isValidDimensions(i, i2) && !this.f14329V0.isValidOverride()) {
            overrideWidth = baseRequestOptions.getOverrideWidth();
            overrideHeight = baseRequestOptions.getOverrideHeight();
        }
        RequestBuilder<TranscodeType> requestBuilder = this.f14329V0;
        errorRequestCoordinator.setRequests(m8582n, requestBuilder.m8581m(obj, target, requestListener, errorRequestCoordinator, requestBuilder.f14325R0, requestBuilder.getPriority(), overrideWidth, overrideHeight, this.f14329V0, executor));
        return errorRequestCoordinator;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.bumptech.glide.request.BaseRequestOptions] */
    /* renamed from: n */
    public final Request m8582n(Object obj, Target<TranscodeType> target, RequestListener<TranscodeType> requestListener, @Nullable RequestCoordinator requestCoordinator, TransitionOptions<?, ? super TranscodeType> transitionOptions, Priority priority, int i, int i2, BaseRequestOptions<?> baseRequestOptions, Executor executor) {
        RequestBuilder<TranscodeType> requestBuilder = this.f14328U0;
        if (requestBuilder == null) {
            if (this.f14330W0 == null) {
                return m8590v(obj, target, requestListener, baseRequestOptions, requestCoordinator, transitionOptions, priority, i, i2, executor);
            }
            ThumbnailRequestCoordinator thumbnailRequestCoordinator = new ThumbnailRequestCoordinator(obj, requestCoordinator);
            thumbnailRequestCoordinator.setRequests(m8590v(obj, target, requestListener, baseRequestOptions, thumbnailRequestCoordinator, transitionOptions, priority, i, i2, executor), m8590v(obj, target, requestListener, baseRequestOptions.mo72155clone().sizeMultiplier(this.f14330W0.floatValue()), thumbnailRequestCoordinator, transitionOptions, m8584p(priority), i, i2, executor));
            return thumbnailRequestCoordinator;
        }
        if (this.f14333Z0) {
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        }
        TransitionOptions<?, ? super TranscodeType> transitionOptions2 = requestBuilder.f14331X0 ? transitionOptions : requestBuilder.f14325R0;
        Priority priority2 = requestBuilder.isPrioritySet() ? this.f14328U0.getPriority() : m8584p(priority);
        int overrideWidth = this.f14328U0.getOverrideWidth();
        int overrideHeight = this.f14328U0.getOverrideHeight();
        if (Util.isValidDimensions(i, i2) && !this.f14328U0.isValidOverride()) {
            overrideWidth = baseRequestOptions.getOverrideWidth();
            overrideHeight = baseRequestOptions.getOverrideHeight();
        }
        ThumbnailRequestCoordinator thumbnailRequestCoordinator2 = new ThumbnailRequestCoordinator(obj, requestCoordinator);
        Request m8590v = m8590v(obj, target, requestListener, baseRequestOptions, thumbnailRequestCoordinator2, transitionOptions, priority, i, i2, executor);
        this.f14333Z0 = true;
        RequestBuilder<TranscodeType> requestBuilder2 = this.f14328U0;
        Request m8581m = requestBuilder2.m8581m(obj, target, requestListener, thumbnailRequestCoordinator2, transitionOptions2, priority2, overrideWidth, overrideHeight, requestBuilder2, executor);
        this.f14333Z0 = false;
        thumbnailRequestCoordinator2.setRequests(m8590v, m8581m);
        return thumbnailRequestCoordinator2;
    }

    /* renamed from: o */
    public final RequestBuilder<TranscodeType> m8583o() {
        return mo72155clone().error((RequestBuilder) null).thumbnail((RequestBuilder) null);
    }

    @NonNull
    /* renamed from: p */
    public final Priority m8584p(@NonNull Priority priority) {
        int i = C1897a.f14335b[priority.ordinal()];
        if (i == 1) {
            return Priority.NORMAL;
        }
        if (i == 2) {
            return Priority.HIGH;
        }
        if (i == 3 || i == 4) {
            return Priority.IMMEDIATE;
        }
        throw new IllegalArgumentException("unknown priority: " + getPriority());
    }

    @NonNull
    public Target<TranscodeType> preload(int i, int i2) {
        return into((RequestBuilder<TranscodeType>) PreloadTarget.obtain(this.f14321N0, i, i2));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: q */
    public final void m8585q(List<RequestListener<Object>> list) {
        Iterator<RequestListener<Object>> it2 = list.iterator();
        while (it2.hasNext()) {
            addListener((RequestListener) it2.next());
        }
    }

    /* renamed from: r */
    public final <Y extends Target<TranscodeType>> Y m8586r(@NonNull Y y, @Nullable RequestListener<TranscodeType> requestListener, BaseRequestOptions<?> baseRequestOptions, Executor executor) {
        Preconditions.checkNotNull(y);
        if (!this.f14332Y0) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        Request m8580l = m8580l(y, requestListener, baseRequestOptions, executor);
        Request request = y.getRequest();
        if (m8580l.isEquivalentTo(request) && !m8588t(baseRequestOptions, request)) {
            if (!((Request) Preconditions.checkNotNull(request)).isRunning()) {
                request.begin();
            }
            return y;
        }
        this.f14321N0.clear((Target<?>) y);
        y.setRequest(m8580l);
        this.f14321N0.m8595d(y, m8580l);
        return y;
    }

    @NonNull
    /* renamed from: s */
    public <Y extends Target<TranscodeType>> Y m8587s(@NonNull Y y, @Nullable RequestListener<TranscodeType> requestListener, Executor executor) {
        return (Y) m8586r(y, requestListener, this, executor);
    }

    @NonNull
    public FutureTarget<TranscodeType> submit() {
        return submit(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    /* renamed from: t */
    public final boolean m8588t(BaseRequestOptions<?> baseRequestOptions, Request request) {
        return !baseRequestOptions.isMemoryCacheable() && request.isComplete();
    }

    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> thumbnail(@Nullable RequestBuilder<TranscodeType> requestBuilder) {
        if (isAutoCloneEnabled()) {
            return mo72155clone().thumbnail(requestBuilder);
        }
        this.f14328U0 = requestBuilder;
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> transition(@NonNull TransitionOptions<?, ? super TranscodeType> transitionOptions) {
        if (isAutoCloneEnabled()) {
            return mo72155clone().transition(transitionOptions);
        }
        this.f14325R0 = (TransitionOptions) Preconditions.checkNotNull(transitionOptions);
        this.f14331X0 = false;
        return selfOrThrowIfLocked();
    }

    @NonNull
    /* renamed from: u */
    public final RequestBuilder<TranscodeType> m8589u(@Nullable Object obj) {
        if (isAutoCloneEnabled()) {
            return mo72155clone().m8589u(obj);
        }
        this.f14326S0 = obj;
        this.f14332Y0 = true;
        return selfOrThrowIfLocked();
    }

    /* renamed from: v */
    public final Request m8590v(Object obj, Target<TranscodeType> target, RequestListener<TranscodeType> requestListener, BaseRequestOptions<?> baseRequestOptions, RequestCoordinator requestCoordinator, TransitionOptions<?, ? super TranscodeType> transitionOptions, Priority priority, int i, int i2, Executor executor) {
        Context context = this.f14320M0;
        GlideContext glideContext = this.f14324Q0;
        return SingleRequest.obtain(context, glideContext, obj, this.f14326S0, this.f14322O0, baseRequestOptions, i, i2, priority, target, requestListener, this.f14327T0, requestCoordinator, glideContext.getEngine(), transitionOptions.m8599a(), executor);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> apply(@NonNull BaseRequestOptions<?> baseRequestOptions) {
        Preconditions.checkNotNull(baseRequestOptions);
        return (RequestBuilder) super.apply(baseRequestOptions);
    }

    @CheckResult
    @Deprecated
    public FutureTarget<File> downloadOnly(int i, int i2) {
        return getDownloadOnlyRequest().submit(i, i2);
    }

    @NonNull
    public ViewTarget<ImageView, TranscodeType> into(@NonNull ImageView imageView) {
        RequestBuilder<TranscodeType> requestBuilder;
        Util.assertMainThread();
        Preconditions.checkNotNull(imageView);
        if (!isTransformationSet() && isTransformationAllowed() && imageView.getScaleType() != null) {
            switch (C1897a.f14334a[imageView.getScaleType().ordinal()]) {
                case 1:
                    requestBuilder = mo72155clone().optionalCenterCrop();
                    break;
                case 2:
                    requestBuilder = mo72155clone().optionalCenterInside();
                    break;
                case 3:
                case 4:
                case 5:
                    requestBuilder = mo72155clone().optionalFitCenter();
                    break;
                case 6:
                    requestBuilder = mo72155clone().optionalCenterInside();
                    break;
            }
            return (ViewTarget) m8586r(this.f14324Q0.buildImageViewTarget(imageView, this.f14322O0), null, requestBuilder, Executors.mainThreadExecutor());
        }
        requestBuilder = this;
        return (ViewTarget) m8586r(this.f14324Q0.buildImageViewTarget(imageView, this.f14322O0), null, requestBuilder, Executors.mainThreadExecutor());
    }

    @NonNull
    public FutureTarget<TranscodeType> submit(int i, int i2) {
        RequestFutureTarget requestFutureTarget = new RequestFutureTarget(i, i2);
        return (FutureTarget) m8587s(requestFutureTarget, requestFutureTarget, Executors.directExecutor());
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    @CheckResult
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public RequestBuilder<TranscodeType> mo72155clone() {
        RequestBuilder<TranscodeType> requestBuilder = (RequestBuilder) super.mo72155clone();
        requestBuilder.f14325R0 = (TransitionOptions<?, ? super TranscodeType>) requestBuilder.f14325R0.m72156clone();
        if (requestBuilder.f14327T0 != null) {
            requestBuilder.f14327T0 = new ArrayList(requestBuilder.f14327T0);
        }
        RequestBuilder<TranscodeType> requestBuilder2 = requestBuilder.f14328U0;
        if (requestBuilder2 != null) {
            requestBuilder.f14328U0 = requestBuilder2.mo72155clone();
        }
        RequestBuilder<TranscodeType> requestBuilder3 = requestBuilder.f14329V0;
        if (requestBuilder3 != null) {
            requestBuilder.f14329V0 = requestBuilder3.mo72155clone();
        }
        return requestBuilder;
    }

    @NonNull
    public Target<TranscodeType> preload() {
        return preload(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> error(Object obj) {
        if (obj == null) {
            return error((RequestBuilder) null);
        }
        return error((RequestBuilder) m8583o().load(obj));
    }

    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> thumbnail(@Nullable RequestBuilder<TranscodeType>... requestBuilderArr) {
        if (requestBuilderArr != null && requestBuilderArr.length != 0) {
            return thumbnail(Arrays.asList(requestBuilderArr));
        }
        return thumbnail((RequestBuilder) null);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> thumbnail(@Nullable List<RequestBuilder<TranscodeType>> list) {
        RequestBuilder<TranscodeType> requestBuilder = null;
        if (list != null && !list.isEmpty()) {
            for (int size = list.size() - 1; size >= 0; size--) {
                RequestBuilder<TranscodeType> requestBuilder2 = list.get(size);
                if (requestBuilder2 != null) {
                    requestBuilder = requestBuilder == null ? requestBuilder2 : requestBuilder2.thumbnail(requestBuilder);
                }
            }
            return thumbnail(requestBuilder);
        }
        return thumbnail((RequestBuilder) null);
    }

    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> load(@Nullable Object obj) {
        return m8589u(obj);
    }

    @SuppressLint({"CheckResult"})
    public RequestBuilder(Class<TranscodeType> cls, RequestBuilder<?> requestBuilder) {
        this(requestBuilder.f14323P0, requestBuilder.f14321N0, cls, requestBuilder.f14320M0);
        this.f14326S0 = requestBuilder.f14326S0;
        this.f14332Y0 = requestBuilder.f14332Y0;
        apply((BaseRequestOptions<?>) requestBuilder);
    }

    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> load(@Nullable Bitmap bitmap) {
        return m8589u(bitmap).apply((BaseRequestOptions<?>) RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.NONE));
    }

    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> load(@Nullable Drawable drawable) {
        return m8589u(drawable).apply((BaseRequestOptions<?>) RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.NONE));
    }

    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> load(@Nullable String str) {
        return m8589u(str);
    }

    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> load(@Nullable Uri uri) {
        return m8589u(uri);
    }

    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> thumbnail(float f) {
        if (isAutoCloneEnabled()) {
            return mo72155clone().thumbnail(f);
        }
        if (f >= 0.0f && f <= 1.0f) {
            this.f14330W0 = Float.valueOf(f);
            return selfOrThrowIfLocked();
        }
        throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
    }

    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> load(@Nullable File file) {
        return m8589u(file);
    }

    @Deprecated
    public FutureTarget<TranscodeType> into(int i, int i2) {
        return submit(i, i2);
    }

    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> load(@Nullable @DrawableRes @RawRes Integer num) {
        return m8589u(num).apply((BaseRequestOptions<?>) RequestOptions.signatureOf(AndroidResourceSignature.obtain(this.f14320M0)));
    }

    @Override // com.sunia.HTREnginev2.roj
    @CheckResult
    @Deprecated
    public RequestBuilder<TranscodeType> load(@Nullable URL url) {
        return m8589u(url);
    }

    @Override // com.sunia.HTREnginev2.roj
    @NonNull
    @CheckResult
    public RequestBuilder<TranscodeType> load(@Nullable byte[] bArr) {
        RequestBuilder<TranscodeType> m8589u = m8589u(bArr);
        if (!m8589u.isDiskCacheStrategySet()) {
            m8589u = m8589u.apply((BaseRequestOptions<?>) RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.NONE));
        }
        return !m8589u.isSkipMemoryCacheSet() ? m8589u.apply((BaseRequestOptions<?>) RequestOptions.skipMemoryCacheOf(true)) : m8589u;
    }
}
