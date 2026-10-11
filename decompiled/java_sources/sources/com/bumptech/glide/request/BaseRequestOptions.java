package com.bumptech.glide.request;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.MultiTransformation;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.model.stream.HttpGlideUrlLoader;
import com.bumptech.glide.load.resource.bitmap.BitmapEncoder;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.bumptech.glide.load.resource.bitmap.CircleCrop;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.DrawableTransformation;
import com.bumptech.glide.load.resource.bitmap.FitCenter;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableTransformation;
import com.bumptech.glide.load.resource.gif.GifOptions;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.signature.EmptySignature;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class BaseRequestOptions<T extends BaseRequestOptions<T>> implements Cloneable {

    /* renamed from: A0 */
    public static final int f15262A0 = 512;

    /* renamed from: B0 */
    public static final int f15263B0 = 1024;

    /* renamed from: C0 */
    public static final int f15264C0 = 2048;

    /* renamed from: D0 */
    public static final int f15265D0 = 4096;

    /* renamed from: E0 */
    public static final int f15266E0 = 8192;

    /* renamed from: F0 */
    public static final int f15267F0 = 16384;

    /* renamed from: G0 */
    public static final int f15268G0 = 32768;

    /* renamed from: H0 */
    public static final int f15269H0 = 65536;

    /* renamed from: I0 */
    public static final int f15270I0 = 131072;

    /* renamed from: J0 */
    public static final int f15271J0 = 262144;

    /* renamed from: K0 */
    public static final int f15272K0 = 524288;

    /* renamed from: L0 */
    public static final int f15273L0 = 1048576;

    /* renamed from: k0 */
    public static final int f15274k0 = -1;

    /* renamed from: q0 */
    public static final int f15275q0 = 2;

    /* renamed from: t0 */
    public static final int f15276t0 = 4;

    /* renamed from: u0 */
    public static final int f15277u0 = 8;

    /* renamed from: v0 */
    public static final int f15278v0 = 16;

    /* renamed from: w0 */
    public static final int f15279w0 = 32;

    /* renamed from: x0 */
    public static final int f15280x0 = 64;

    /* renamed from: y0 */
    public static final int f15281y0 = 128;

    /* renamed from: z0 */
    public static final int f15282z0 = 256;

    /* renamed from: J */
    public boolean f15283J;

    /* renamed from: O */
    public boolean f15284O;

    /* renamed from: Z */
    public boolean f15286Z;

    /* renamed from: e */
    public int f15287e;

    /* renamed from: i */
    @Nullable
    public Drawable f15291i;

    /* renamed from: j */
    public int f15292j;

    /* renamed from: k */
    @Nullable
    public Drawable f15293k;

    /* renamed from: l */
    public int f15294l;

    /* renamed from: q */
    public boolean f15299q;

    /* renamed from: s */
    @Nullable
    public Drawable f15301s;

    /* renamed from: t */
    public int f15302t;

    /* renamed from: x */
    public boolean f15306x;

    /* renamed from: y */
    @Nullable
    public Resources.Theme f15307y;

    /* renamed from: z */
    public boolean f15308z;

    /* renamed from: f */
    public float f15288f = 1.0f;

    /* renamed from: g */
    @NonNull
    public DiskCacheStrategy f15289g = DiskCacheStrategy.AUTOMATIC;

    /* renamed from: h */
    @NonNull
    public Priority f15290h = Priority.NORMAL;

    /* renamed from: m */
    public boolean f15295m = true;

    /* renamed from: n */
    public int f15296n = -1;

    /* renamed from: o */
    public int f15297o = -1;

    /* renamed from: p */
    @NonNull
    public Key f15298p = EmptySignature.obtain();

    /* renamed from: r */
    public boolean f15300r = true;

    /* renamed from: u */
    @NonNull
    public Options f15303u = new Options();

    /* renamed from: v */
    @NonNull
    public Map<Class<?>, Transformation<?>> f15304v = new CachedHashCodeArrayMap();

    /* renamed from: w */
    @NonNull
    public Class<?> f15305w = Object.class;

    /* renamed from: Q */
    public boolean f15285Q = true;

    /* renamed from: b */
    private boolean m9087b(int i) {
        return m9088c(this.f15287e, i);
    }

    /* renamed from: c */
    public static boolean m9088c(int i, int i2) {
        return (i & i2) != 0;
    }

    /* renamed from: a */
    public boolean m9089a() {
        return this.f15285Q;
    }

    @NonNull
    @CheckResult
    public T apply(@NonNull BaseRequestOptions<?> baseRequestOptions) {
        if (this.f15308z) {
            return (T) mo72155clone().apply(baseRequestOptions);
        }
        if (m9088c(baseRequestOptions.f15287e, 2)) {
            this.f15288f = baseRequestOptions.f15288f;
        }
        if (m9088c(baseRequestOptions.f15287e, 262144)) {
            this.f15283J = baseRequestOptions.f15283J;
        }
        if (m9088c(baseRequestOptions.f15287e, 1048576)) {
            this.f15286Z = baseRequestOptions.f15286Z;
        }
        if (m9088c(baseRequestOptions.f15287e, 4)) {
            this.f15289g = baseRequestOptions.f15289g;
        }
        if (m9088c(baseRequestOptions.f15287e, 8)) {
            this.f15290h = baseRequestOptions.f15290h;
        }
        if (m9088c(baseRequestOptions.f15287e, 16)) {
            this.f15291i = baseRequestOptions.f15291i;
            this.f15292j = 0;
            this.f15287e &= -33;
        }
        if (m9088c(baseRequestOptions.f15287e, 32)) {
            this.f15292j = baseRequestOptions.f15292j;
            this.f15291i = null;
            this.f15287e &= -17;
        }
        if (m9088c(baseRequestOptions.f15287e, 64)) {
            this.f15293k = baseRequestOptions.f15293k;
            this.f15294l = 0;
            this.f15287e &= -129;
        }
        if (m9088c(baseRequestOptions.f15287e, 128)) {
            this.f15294l = baseRequestOptions.f15294l;
            this.f15293k = null;
            this.f15287e &= -65;
        }
        if (m9088c(baseRequestOptions.f15287e, 256)) {
            this.f15295m = baseRequestOptions.f15295m;
        }
        if (m9088c(baseRequestOptions.f15287e, 512)) {
            this.f15297o = baseRequestOptions.f15297o;
            this.f15296n = baseRequestOptions.f15296n;
        }
        if (m9088c(baseRequestOptions.f15287e, 1024)) {
            this.f15298p = baseRequestOptions.f15298p;
        }
        if (m9088c(baseRequestOptions.f15287e, 4096)) {
            this.f15305w = baseRequestOptions.f15305w;
        }
        if (m9088c(baseRequestOptions.f15287e, 8192)) {
            this.f15301s = baseRequestOptions.f15301s;
            this.f15302t = 0;
            this.f15287e &= -16385;
        }
        if (m9088c(baseRequestOptions.f15287e, 16384)) {
            this.f15302t = baseRequestOptions.f15302t;
            this.f15301s = null;
            this.f15287e &= -8193;
        }
        if (m9088c(baseRequestOptions.f15287e, 32768)) {
            this.f15307y = baseRequestOptions.f15307y;
        }
        if (m9088c(baseRequestOptions.f15287e, 65536)) {
            this.f15300r = baseRequestOptions.f15300r;
        }
        if (m9088c(baseRequestOptions.f15287e, 131072)) {
            this.f15299q = baseRequestOptions.f15299q;
        }
        if (m9088c(baseRequestOptions.f15287e, 2048)) {
            this.f15304v.putAll(baseRequestOptions.f15304v);
            this.f15285Q = baseRequestOptions.f15285Q;
        }
        if (m9088c(baseRequestOptions.f15287e, 524288)) {
            this.f15284O = baseRequestOptions.f15284O;
        }
        if (!this.f15300r) {
            this.f15304v.clear();
            int i = this.f15287e & (-2049);
            this.f15299q = false;
            this.f15287e = i & (-131073);
            this.f15285Q = true;
        }
        this.f15287e |= baseRequestOptions.f15287e;
        this.f15303u.putAll(baseRequestOptions.f15303u);
        return selfOrThrowIfLocked();
    }

    @NonNull
    public T autoClone() {
        if (this.f15306x && !this.f15308z) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.f15308z = true;
        return lock();
    }

    @NonNull
    @CheckResult
    public T centerCrop() {
        return m9096j(DownsampleStrategy.CENTER_OUTSIDE, new CenterCrop());
    }

    @NonNull
    @CheckResult
    public T centerInside() {
        return m9092f(DownsampleStrategy.CENTER_INSIDE, new CenterInside());
    }

    @NonNull
    @CheckResult
    public T circleCrop() {
        return m9096j(DownsampleStrategy.CENTER_INSIDE, new CircleCrop());
    }

    @NonNull
    /* renamed from: d */
    public final T m9090d(@NonNull DownsampleStrategy downsampleStrategy, @NonNull Transformation<Bitmap> transformation) {
        return m9093g(downsampleStrategy, transformation, false);
    }

    @NonNull
    @CheckResult
    public T decode(@NonNull Class<?> cls) {
        if (this.f15308z) {
            return (T) mo72155clone().decode(cls);
        }
        this.f15305w = (Class) Preconditions.checkNotNull(cls);
        this.f15287e |= 4096;
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T disallowHardwareConfig() {
        return set(Downsampler.ALLOW_HARDWARE_CONFIG, Boolean.FALSE);
    }

    @NonNull
    @CheckResult
    public T diskCacheStrategy(@NonNull DiskCacheStrategy diskCacheStrategy) {
        if (this.f15308z) {
            return (T) mo72155clone().diskCacheStrategy(diskCacheStrategy);
        }
        this.f15289g = (DiskCacheStrategy) Preconditions.checkNotNull(diskCacheStrategy);
        this.f15287e |= 4;
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T dontAnimate() {
        return set(GifOptions.DISABLE_ANIMATION, Boolean.TRUE);
    }

    @NonNull
    @CheckResult
    public T dontTransform() {
        if (this.f15308z) {
            return (T) mo72155clone().dontTransform();
        }
        this.f15304v.clear();
        int i = this.f15287e & (-2049);
        this.f15299q = false;
        this.f15300r = false;
        this.f15287e = (i & (-131073)) | 65536;
        this.f15285Q = true;
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T downsample(@NonNull DownsampleStrategy downsampleStrategy) {
        return set(DownsampleStrategy.OPTION, Preconditions.checkNotNull(downsampleStrategy));
    }

    @NonNull
    /* renamed from: e */
    public final T m9091e(@NonNull DownsampleStrategy downsampleStrategy, @NonNull Transformation<Bitmap> transformation) {
        if (this.f15308z) {
            return (T) mo72155clone().m9091e(downsampleStrategy, transformation);
        }
        downsample(downsampleStrategy);
        return m9095i(transformation, false);
    }

    @NonNull
    @CheckResult
    public T encodeFormat(@NonNull Bitmap.CompressFormat compressFormat) {
        return set(BitmapEncoder.COMPRESSION_FORMAT, Preconditions.checkNotNull(compressFormat));
    }

    @NonNull
    @CheckResult
    public T encodeQuality(@IntRange(from = 0, m281to = 100) int i) {
        return set(BitmapEncoder.COMPRESSION_QUALITY, Integer.valueOf(i));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BaseRequestOptions)) {
            return false;
        }
        BaseRequestOptions baseRequestOptions = (BaseRequestOptions) obj;
        return Float.compare(baseRequestOptions.f15288f, this.f15288f) == 0 && this.f15292j == baseRequestOptions.f15292j && Util.bothNullOrEqual(this.f15291i, baseRequestOptions.f15291i) && this.f15294l == baseRequestOptions.f15294l && Util.bothNullOrEqual(this.f15293k, baseRequestOptions.f15293k) && this.f15302t == baseRequestOptions.f15302t && Util.bothNullOrEqual(this.f15301s, baseRequestOptions.f15301s) && this.f15295m == baseRequestOptions.f15295m && this.f15296n == baseRequestOptions.f15296n && this.f15297o == baseRequestOptions.f15297o && this.f15299q == baseRequestOptions.f15299q && this.f15300r == baseRequestOptions.f15300r && this.f15283J == baseRequestOptions.f15283J && this.f15284O == baseRequestOptions.f15284O && this.f15289g.equals(baseRequestOptions.f15289g) && this.f15290h == baseRequestOptions.f15290h && this.f15303u.equals(baseRequestOptions.f15303u) && this.f15304v.equals(baseRequestOptions.f15304v) && this.f15305w.equals(baseRequestOptions.f15305w) && Util.bothNullOrEqual(this.f15298p, baseRequestOptions.f15298p) && Util.bothNullOrEqual(this.f15307y, baseRequestOptions.f15307y);
    }

    @NonNull
    @CheckResult
    public T error(@Nullable Drawable drawable) {
        if (this.f15308z) {
            return (T) mo72155clone().error(drawable);
        }
        this.f15291i = drawable;
        int i = this.f15287e | 16;
        this.f15292j = 0;
        this.f15287e = i & (-33);
        return selfOrThrowIfLocked();
    }

    @NonNull
    /* renamed from: f */
    public final T m9092f(@NonNull DownsampleStrategy downsampleStrategy, @NonNull Transformation<Bitmap> transformation) {
        return m9093g(downsampleStrategy, transformation, true);
    }

    @NonNull
    @CheckResult
    public T fallback(@Nullable Drawable drawable) {
        if (this.f15308z) {
            return (T) mo72155clone().fallback(drawable);
        }
        this.f15301s = drawable;
        int i = this.f15287e | 8192;
        this.f15302t = 0;
        this.f15287e = i & (-16385);
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T fitCenter() {
        return m9092f(DownsampleStrategy.FIT_CENTER, new FitCenter());
    }

    @NonNull
    @CheckResult
    public T format(@NonNull DecodeFormat decodeFormat) {
        Preconditions.checkNotNull(decodeFormat);
        return (T) set(Downsampler.DECODE_FORMAT, decodeFormat).set(GifOptions.DECODE_FORMAT, decodeFormat);
    }

    @NonNull
    @CheckResult
    public T frame(@IntRange(from = 0) long j) {
        return set(VideoDecoder.TARGET_FRAME, Long.valueOf(j));
    }

    @NonNull
    /* renamed from: g */
    public final T m9093g(@NonNull DownsampleStrategy downsampleStrategy, @NonNull Transformation<Bitmap> transformation, boolean z) {
        T m9096j = z ? m9096j(downsampleStrategy, transformation) : m9091e(downsampleStrategy, transformation);
        m9096j.f15285Q = true;
        return m9096j;
    }

    @NonNull
    public final DiskCacheStrategy getDiskCacheStrategy() {
        return this.f15289g;
    }

    public final int getErrorId() {
        return this.f15292j;
    }

    @Nullable
    public final Drawable getErrorPlaceholder() {
        return this.f15291i;
    }

    @Nullable
    public final Drawable getFallbackDrawable() {
        return this.f15301s;
    }

    public final int getFallbackId() {
        return this.f15302t;
    }

    public final boolean getOnlyRetrieveFromCache() {
        return this.f15284O;
    }

    @NonNull
    public final Options getOptions() {
        return this.f15303u;
    }

    public final int getOverrideHeight() {
        return this.f15296n;
    }

    public final int getOverrideWidth() {
        return this.f15297o;
    }

    @Nullable
    public final Drawable getPlaceholderDrawable() {
        return this.f15293k;
    }

    public final int getPlaceholderId() {
        return this.f15294l;
    }

    @NonNull
    public final Priority getPriority() {
        return this.f15290h;
    }

    @NonNull
    public final Class<?> getResourceClass() {
        return this.f15305w;
    }

    @NonNull
    public final Key getSignature() {
        return this.f15298p;
    }

    public final float getSizeMultiplier() {
        return this.f15288f;
    }

    @Nullable
    public final Resources.Theme getTheme() {
        return this.f15307y;
    }

    @NonNull
    public final Map<Class<?>, Transformation<?>> getTransformations() {
        return this.f15304v;
    }

    public final boolean getUseAnimationPool() {
        return this.f15286Z;
    }

    public final boolean getUseUnlimitedSourceGeneratorsPool() {
        return this.f15283J;
    }

    /* renamed from: h */
    public final T m9094h() {
        return this;
    }

    public int hashCode() {
        return Util.hashCode(this.f15307y, Util.hashCode(this.f15298p, Util.hashCode(this.f15305w, Util.hashCode(this.f15304v, Util.hashCode(this.f15303u, Util.hashCode(this.f15290h, Util.hashCode(this.f15289g, Util.hashCode(this.f15284O, Util.hashCode(this.f15283J, Util.hashCode(this.f15300r, Util.hashCode(this.f15299q, Util.hashCode(this.f15297o, Util.hashCode(this.f15296n, Util.hashCode(this.f15295m, Util.hashCode(this.f15301s, Util.hashCode(this.f15302t, Util.hashCode(this.f15293k, Util.hashCode(this.f15294l, Util.hashCode(this.f15291i, Util.hashCode(this.f15292j, Util.hashCode(this.f15288f)))))))))))))))))))));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    /* renamed from: i */
    public T m9095i(@NonNull Transformation<Bitmap> transformation, boolean z) {
        if (this.f15308z) {
            return (T) mo72155clone().m9095i(transformation, z);
        }
        DrawableTransformation drawableTransformation = new DrawableTransformation(transformation, z);
        m9097k(Bitmap.class, transformation, z);
        m9097k(Drawable.class, drawableTransformation, z);
        m9097k(BitmapDrawable.class, drawableTransformation.asBitmapDrawable(), z);
        m9097k(GifDrawable.class, new GifDrawableTransformation(transformation), z);
        return selfOrThrowIfLocked();
    }

    public final boolean isAutoCloneEnabled() {
        return this.f15308z;
    }

    public final boolean isDiskCacheStrategySet() {
        return m9087b(4);
    }

    public final boolean isLocked() {
        return this.f15306x;
    }

    public final boolean isMemoryCacheable() {
        return this.f15295m;
    }

    public final boolean isPrioritySet() {
        return m9087b(8);
    }

    public final boolean isSkipMemoryCacheSet() {
        return m9087b(256);
    }

    public final boolean isTransformationAllowed() {
        return this.f15300r;
    }

    public final boolean isTransformationRequired() {
        return this.f15299q;
    }

    public final boolean isTransformationSet() {
        return m9087b(2048);
    }

    public final boolean isValidOverride() {
        return Util.isValidDimensions(this.f15297o, this.f15296n);
    }

    @NonNull
    @CheckResult
    /* renamed from: j */
    public final T m9096j(@NonNull DownsampleStrategy downsampleStrategy, @NonNull Transformation<Bitmap> transformation) {
        if (this.f15308z) {
            return (T) mo72155clone().m9096j(downsampleStrategy, transformation);
        }
        downsample(downsampleStrategy);
        return transform(transformation);
    }

    @NonNull
    /* renamed from: k */
    public <Y> T m9097k(@NonNull Class<Y> cls, @NonNull Transformation<Y> transformation, boolean z) {
        if (this.f15308z) {
            return (T) mo72155clone().m9097k(cls, transformation, z);
        }
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(transformation);
        this.f15304v.put(cls, transformation);
        int i = this.f15287e | 2048;
        this.f15300r = true;
        int i2 = i | 65536;
        this.f15287e = i2;
        this.f15285Q = false;
        if (z) {
            this.f15287e = i2 | 131072;
            this.f15299q = true;
        }
        return selfOrThrowIfLocked();
    }

    @NonNull
    public T lock() {
        this.f15306x = true;
        return m9094h();
    }

    @NonNull
    @CheckResult
    public T onlyRetrieveFromCache(boolean z) {
        if (this.f15308z) {
            return (T) mo72155clone().onlyRetrieveFromCache(z);
        }
        this.f15284O = z;
        this.f15287e |= 524288;
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T optionalCenterCrop() {
        return m9091e(DownsampleStrategy.CENTER_OUTSIDE, new CenterCrop());
    }

    @NonNull
    @CheckResult
    public T optionalCenterInside() {
        return m9090d(DownsampleStrategy.CENTER_INSIDE, new CenterInside());
    }

    @NonNull
    @CheckResult
    public T optionalCircleCrop() {
        return m9091e(DownsampleStrategy.CENTER_OUTSIDE, new CircleCrop());
    }

    @NonNull
    @CheckResult
    public T optionalFitCenter() {
        return m9090d(DownsampleStrategy.FIT_CENTER, new FitCenter());
    }

    @NonNull
    @CheckResult
    public T optionalTransform(@NonNull Transformation<Bitmap> transformation) {
        return m9095i(transformation, false);
    }

    @NonNull
    @CheckResult
    public T override(int i, int i2) {
        if (this.f15308z) {
            return (T) mo72155clone().override(i, i2);
        }
        this.f15297o = i;
        this.f15296n = i2;
        this.f15287e |= 512;
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T placeholder(@Nullable Drawable drawable) {
        if (this.f15308z) {
            return (T) mo72155clone().placeholder(drawable);
        }
        this.f15293k = drawable;
        int i = this.f15287e | 64;
        this.f15294l = 0;
        this.f15287e = i & (-129);
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T priority(@NonNull Priority priority) {
        if (this.f15308z) {
            return (T) mo72155clone().priority(priority);
        }
        this.f15290h = (Priority) Preconditions.checkNotNull(priority);
        this.f15287e |= 8;
        return selfOrThrowIfLocked();
    }

    @NonNull
    public final T selfOrThrowIfLocked() {
        if (this.f15306x) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
        return m9094h();
    }

    @NonNull
    @CheckResult
    public <Y> T set(@NonNull Option<Y> option, @NonNull Y y) {
        if (this.f15308z) {
            return (T) mo72155clone().set(option, y);
        }
        Preconditions.checkNotNull(option);
        Preconditions.checkNotNull(y);
        this.f15303u.set(option, y);
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T signature(@NonNull Key key) {
        if (this.f15308z) {
            return (T) mo72155clone().signature(key);
        }
        this.f15298p = (Key) Preconditions.checkNotNull(key);
        this.f15287e |= 1024;
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T sizeMultiplier(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        if (this.f15308z) {
            return (T) mo72155clone().sizeMultiplier(f);
        }
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f15288f = f;
        this.f15287e |= 2;
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T skipMemoryCache(boolean z) {
        if (this.f15308z) {
            return (T) mo72155clone().skipMemoryCache(true);
        }
        this.f15295m = !z;
        this.f15287e |= 256;
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T theme(@Nullable Resources.Theme theme) {
        if (this.f15308z) {
            return (T) mo72155clone().theme(theme);
        }
        this.f15307y = theme;
        this.f15287e |= 32768;
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T timeout(@IntRange(from = 0) int i) {
        return set(HttpGlideUrlLoader.TIMEOUT, Integer.valueOf(i));
    }

    @NonNull
    @CheckResult
    public T transform(@NonNull Transformation<Bitmap> transformation) {
        return m9095i(transformation, true);
    }

    @NonNull
    @CheckResult
    @Deprecated
    public T transforms(@NonNull Transformation<Bitmap>... transformationArr) {
        return m9095i(new MultiTransformation(transformationArr), true);
    }

    @NonNull
    @CheckResult
    public T useAnimationPool(boolean z) {
        if (this.f15308z) {
            return (T) mo72155clone().useAnimationPool(z);
        }
        this.f15286Z = z;
        this.f15287e |= 1048576;
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T useUnlimitedSourceGeneratorsPool(boolean z) {
        if (this.f15308z) {
            return (T) mo72155clone().useUnlimitedSourceGeneratorsPool(z);
        }
        this.f15283J = z;
        this.f15287e |= 262144;
        return selfOrThrowIfLocked();
    }

    @Override // 
    @CheckResult
    /* renamed from: clone */
    public T mo72155clone() {
        try {
            T t = (T) super.clone();
            Options options = new Options();
            t.f15303u = options;
            options.putAll(this.f15303u);
            CachedHashCodeArrayMap cachedHashCodeArrayMap = new CachedHashCodeArrayMap();
            t.f15304v = cachedHashCodeArrayMap;
            cachedHashCodeArrayMap.putAll(this.f15304v);
            t.f15306x = false;
            t.f15308z = false;
            return t;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @NonNull
    @CheckResult
    public <Y> T optionalTransform(@NonNull Class<Y> cls, @NonNull Transformation<Y> transformation) {
        return m9097k(cls, transformation, false);
    }

    @NonNull
    @CheckResult
    public T transform(@NonNull Transformation<Bitmap>... transformationArr) {
        if (transformationArr.length > 1) {
            return m9095i(new MultiTransformation(transformationArr), true);
        }
        if (transformationArr.length == 1) {
            return transform(transformationArr[0]);
        }
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T override(int i) {
        return override(i, i);
    }

    @NonNull
    @CheckResult
    public <Y> T transform(@NonNull Class<Y> cls, @NonNull Transformation<Y> transformation) {
        return m9097k(cls, transformation, true);
    }

    @NonNull
    @CheckResult
    public T error(@DrawableRes int i) {
        if (this.f15308z) {
            return (T) mo72155clone().error(i);
        }
        this.f15292j = i;
        int i2 = this.f15287e | 32;
        this.f15291i = null;
        this.f15287e = i2 & (-17);
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T fallback(@DrawableRes int i) {
        if (this.f15308z) {
            return (T) mo72155clone().fallback(i);
        }
        this.f15302t = i;
        int i2 = this.f15287e | 16384;
        this.f15301s = null;
        this.f15287e = i2 & (-8193);
        return selfOrThrowIfLocked();
    }

    @NonNull
    @CheckResult
    public T placeholder(@DrawableRes int i) {
        if (this.f15308z) {
            return (T) mo72155clone().placeholder(i);
        }
        this.f15294l = i;
        int i2 = this.f15287e | 128;
        this.f15293k = null;
        this.f15287e = i2 & (-65);
        return selfOrThrowIfLocked();
    }
}
