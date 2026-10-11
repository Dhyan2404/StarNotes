package com.onyx.android.sdk.universal.theme;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.VectorDrawable;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.universal.C8045R;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0010\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0002R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;", "", "", "getThemePrimaryColor", "getThemeBackgroundColor", "getHighlightColor", "getBgOverlayColor", "drawableId", "Landroid/graphics/drawable/Drawable;", "getDrawable", "Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;", "a", "Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;", "getUniversalColorCallback", "()Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;", "setUniversalColorCallback", "(Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;)V", "universalColorCallback", Constants.CONSTRUCTOR_NAME, "()V", "UniversalColorCallback", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UniversalThemeUtils {

    @NotNull
    public static final UniversalThemeUtils INSTANCE = new UniversalThemeUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static UniversalColorCallback universalColorCallback = new UniversalColorCallback() { // from class: com.onyx.android.sdk.universal.theme.UniversalThemeUtils$universalColorCallback$1
        @Override // com.onyx.android.sdk.universal.theme.UniversalThemeUtils.UniversalColorCallback
        public int getBgOverlayColor() {
            return ResManager.INSTANCE.getColor(C7485R.color.primary_color);
        }

        @Override // com.onyx.android.sdk.universal.theme.UniversalThemeUtils.UniversalColorCallback
        public int getHighlightColor() {
            return ResManager.INSTANCE.getColor(C7485R.color.primary_color);
        }

        @Override // com.onyx.android.sdk.universal.theme.UniversalThemeUtils.UniversalColorCallback
        public int getThemeBackgroundColor() {
            return ResManager.INSTANCE.getColor(C7485R.color.primary_color);
        }

        @Override // com.onyx.android.sdk.universal.theme.UniversalThemeUtils.UniversalColorCallback
        public int getThemePrimaryColor() {
            return ResManager.INSTANCE.getColor(C7485R.color.primary_color);
        }
    };

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;", "", "getBgOverlayColor", "", "getHighlightColor", "getThemeBackgroundColor", "getThemePrimaryColor", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface UniversalColorCallback {
        int getBgOverlayColor();

        int getHighlightColor();

        int getThemeBackgroundColor();

        int getThemePrimaryColor();
    }

    public final int getBgOverlayColor() {
        return universalColorCallback.getBgOverlayColor();
    }

    @Nullable
    public final Drawable getDrawable(int drawableId) {
        Drawable drawable = ResManager.INSTANCE.getDrawable(drawableId);
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(C8045R.id.tint_drawable);
            if (findDrawableByLayerId instanceof VectorDrawable) {
                findDrawableByLayerId.setTint(getThemePrimaryColor());
            }
            Drawable findDrawableByLayerId2 = layerDrawable.findDrawableByLayerId(C8045R.id.tint_drawable_center);
            if (findDrawableByLayerId2 instanceof VectorDrawable) {
                findDrawableByLayerId2.setTint(getThemePrimaryColor());
            }
        } else if (drawable instanceof VectorDrawable) {
            ((VectorDrawable) drawable).setTint(getThemePrimaryColor());
        }
        return drawable;
    }

    public final int getHighlightColor() {
        return universalColorCallback.getHighlightColor();
    }

    public final int getThemeBackgroundColor() {
        return universalColorCallback.getThemeBackgroundColor();
    }

    public final int getThemePrimaryColor() {
        return universalColorCallback.getThemePrimaryColor();
    }

    @NotNull
    public final UniversalColorCallback getUniversalColorCallback() {
        return universalColorCallback;
    }

    public final void setUniversalColorCallback(@NotNull UniversalColorCallback universalColorCallback2) {
        Intrinsics.checkNotNullParameter(universalColorCallback2, "<set-?>");
        universalColorCallback = universalColorCallback2;
    }
}
