package com.bumptech.glide.request;

import android.graphics.Bitmap;
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
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;

/* loaded from: classes3.dex */
public class RequestOptions extends BaseRequestOptions<RequestOptions> {

    /* renamed from: M0 */
    @Nullable
    public static RequestOptions f15326M0;

    /* renamed from: N0 */
    @Nullable
    public static RequestOptions f15327N0;

    /* renamed from: O0 */
    @Nullable
    public static RequestOptions f15328O0;

    /* renamed from: P0 */
    @Nullable
    public static RequestOptions f15329P0;

    /* renamed from: Q0 */
    @Nullable
    public static RequestOptions f15330Q0;

    /* renamed from: R0 */
    @Nullable
    public static RequestOptions f15331R0;

    /* renamed from: S0 */
    @Nullable
    public static RequestOptions f15332S0;

    /* renamed from: T0 */
    @Nullable
    public static RequestOptions f15333T0;

    @NonNull
    @CheckResult
    public static RequestOptions bitmapTransform(@NonNull Transformation<Bitmap> transformation) {
        return new RequestOptions().transform(transformation);
    }

    @NonNull
    @CheckResult
    public static RequestOptions centerCropTransform() {
        if (f15330Q0 == null) {
            f15330Q0 = new RequestOptions().centerCrop().autoClone();
        }
        return f15330Q0;
    }

    @NonNull
    @CheckResult
    public static RequestOptions centerInsideTransform() {
        if (f15329P0 == null) {
            f15329P0 = new RequestOptions().centerInside().autoClone();
        }
        return f15329P0;
    }

    @NonNull
    @CheckResult
    public static RequestOptions circleCropTransform() {
        if (f15331R0 == null) {
            f15331R0 = new RequestOptions().circleCrop().autoClone();
        }
        return f15331R0;
    }

    @NonNull
    @CheckResult
    public static RequestOptions decodeTypeOf(@NonNull Class<?> cls) {
        return new RequestOptions().decode(cls);
    }

    @NonNull
    @CheckResult
    public static RequestOptions diskCacheStrategyOf(@NonNull DiskCacheStrategy diskCacheStrategy) {
        return new RequestOptions().diskCacheStrategy(diskCacheStrategy);
    }

    @NonNull
    @CheckResult
    public static RequestOptions downsampleOf(@NonNull DownsampleStrategy downsampleStrategy) {
        return new RequestOptions().downsample(downsampleStrategy);
    }

    @NonNull
    @CheckResult
    public static RequestOptions encodeFormatOf(@NonNull Bitmap.CompressFormat compressFormat) {
        return new RequestOptions().encodeFormat(compressFormat);
    }

    @NonNull
    @CheckResult
    public static RequestOptions encodeQualityOf(@IntRange(from = 0, m281to = 100) int i) {
        return new RequestOptions().encodeQuality(i);
    }

    @NonNull
    @CheckResult
    public static RequestOptions errorOf(@Nullable Drawable drawable) {
        return new RequestOptions().error(drawable);
    }

    @NonNull
    @CheckResult
    public static RequestOptions fitCenterTransform() {
        if (f15328O0 == null) {
            f15328O0 = new RequestOptions().fitCenter().autoClone();
        }
        return f15328O0;
    }

    @NonNull
    @CheckResult
    public static RequestOptions formatOf(@NonNull DecodeFormat decodeFormat) {
        return new RequestOptions().format(decodeFormat);
    }

    @NonNull
    @CheckResult
    public static RequestOptions frameOf(@IntRange(from = 0) long j) {
        return new RequestOptions().frame(j);
    }

    @NonNull
    @CheckResult
    public static RequestOptions noAnimation() {
        if (f15333T0 == null) {
            f15333T0 = new RequestOptions().dontAnimate().autoClone();
        }
        return f15333T0;
    }

    @NonNull
    @CheckResult
    public static RequestOptions noTransformation() {
        if (f15332S0 == null) {
            f15332S0 = new RequestOptions().dontTransform().autoClone();
        }
        return f15332S0;
    }

    @NonNull
    @CheckResult
    public static <T> RequestOptions option(@NonNull Option<T> option, @NonNull T t) {
        return new RequestOptions().set(option, t);
    }

    @NonNull
    @CheckResult
    public static RequestOptions overrideOf(int i, int i2) {
        return new RequestOptions().override(i, i2);
    }

    @NonNull
    @CheckResult
    public static RequestOptions placeholderOf(@Nullable Drawable drawable) {
        return new RequestOptions().placeholder(drawable);
    }

    @NonNull
    @CheckResult
    public static RequestOptions priorityOf(@NonNull Priority priority) {
        return new RequestOptions().priority(priority);
    }

    @NonNull
    @CheckResult
    public static RequestOptions signatureOf(@NonNull Key key) {
        return new RequestOptions().signature(key);
    }

    @NonNull
    @CheckResult
    public static RequestOptions sizeMultiplierOf(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        return new RequestOptions().sizeMultiplier(f);
    }

    @NonNull
    @CheckResult
    public static RequestOptions skipMemoryCacheOf(boolean z) {
        if (z) {
            if (f15326M0 == null) {
                f15326M0 = new RequestOptions().skipMemoryCache(true).autoClone();
            }
            return f15326M0;
        }
        if (f15327N0 == null) {
            f15327N0 = new RequestOptions().skipMemoryCache(false).autoClone();
        }
        return f15327N0;
    }

    @NonNull
    @CheckResult
    public static RequestOptions timeoutOf(@IntRange(from = 0) int i) {
        return new RequestOptions().timeout(i);
    }

    @NonNull
    @CheckResult
    public static RequestOptions errorOf(@DrawableRes int i) {
        return new RequestOptions().error(i);
    }

    @NonNull
    @CheckResult
    public static RequestOptions overrideOf(int i) {
        return overrideOf(i, i);
    }

    @NonNull
    @CheckResult
    public static RequestOptions placeholderOf(@DrawableRes int i) {
        return new RequestOptions().placeholder(i);
    }
}
