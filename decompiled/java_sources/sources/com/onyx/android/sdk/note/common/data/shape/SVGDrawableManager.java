package com.onyx.android.sdk.note.common.data.shape;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.LruCache;
import androidx.core.content.res.ResourcesCompat;
import androidx.transition.Transition;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.C7485R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0004R'\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u000b\u0010\r¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/SVGDrawableManager;", "", "Landroid/graphics/Matrix;", "matrix", "", HWREngineConstant.Constant.RES_ID, "Landroid/graphics/Bitmap;", "loadResource", "getIndicatorSize", "Landroid/util/LruCache;", "", "a", "Lkotlin/Lazy;", "()Landroid/util/LruCache;", "bitmapLruCache", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SVGDrawableManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: b */
    @NotNull
    public static final SVGDrawableManager f43347b = new SVGDrawableManager();

    /* renamed from: c */
    public static final int f43348c = 5;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy bitmapLruCache;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/SVGDrawableManager$Companion;", "", "()V", "MAX_CACHE_COUNT", "", "getMAX_CACHE_COUNT", "()I", Transition.f10626J0, "Lcom/onyx/android/sdk/note/common/data/shape/SVGDrawableManager;", "getInstance", "()Lcom/onyx/android/sdk/note/common/data/shape/SVGDrawableManager;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SVGDrawableManager getInstance() {
            return SVGDrawableManager.f43347b;
        }

        public final int getMAX_CACHE_COUNT() {
            return SVGDrawableManager.f43348c;
        }

        public Companion() {
        }
    }

    public SVGDrawableManager() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LruCache<String, Bitmap>>() { // from class: com.onyx.android.sdk.note.common.data.shape.SVGDrawableManager$bitmapLruCache$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LruCache<String, Bitmap> invoke() {
                return new LruCache<>(SVGDrawableManager.INSTANCE.getMAX_CACHE_COUNT());
            }
        });
        this.bitmapLruCache = lazy;
    }

    /* renamed from: a */
    public final LruCache<String, Bitmap> m33692a() {
        return (LruCache) this.bitmapLruCache.getValue();
    }

    public final int getIndicatorSize() {
        return ResManager.INSTANCE.getDimensionPixelSize(C7485R.dimen.indicator_size);
    }

    @Nullable
    public final Bitmap loadResource(@NotNull Matrix matrix, int resId) {
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        try {
            Drawable drawable = ResourcesCompat.getDrawable(ResManager.INSTANCE.getResources(), resId, null);
            if (drawable == null) {
                return null;
            }
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast((int) (getIndicatorSize() * MatrixKt.getMaxScale(matrix)), 1);
            Rect rect = new Rect(0, 0, coerceAtLeast, coerceAtLeast);
            String str = "id_" + resId + "_size_" + coerceAtLeast;
            Bitmap bitmap = m33692a().get(str);
            if (!BitmapKt.isValid(bitmap)) {
                drawable.setBounds(rect);
                Bitmap createBitmap = Bitmap.createBitmap(rect.width(), rect.height(), Bitmap.Config.ARGB_8888);
                drawable.draw(new Canvas(createBitmap));
                m33692a().put(str, createBitmap);
                return createBitmap;
            }
            Debug.INSTANCE.m32035d(SVGDrawableManager.class, "hit cache, key = " + str, new Object[0]);
            return bitmap;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
