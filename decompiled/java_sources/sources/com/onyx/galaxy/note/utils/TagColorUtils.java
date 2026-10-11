package com.onyx.galaxy.note.utils;

import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import androidx.annotation.ColorInt;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/TagColorUtils;", "", "()V", "generateTagColor", "", "color", "generateTagDrawable", "Landroid/graphics/drawable/GradientDrawable;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class TagColorUtils {

    @NotNull
    public static final TagColorUtils INSTANCE = new TagColorUtils();

    public final int generateTagColor(@ColorInt int color) {
        return ColorKt.multiplyColorAlpha(ColorKt.removeAlpha(color), 0.5f);
    }

    @NotNull
    public final GradientDrawable generateTagDrawable(int color) {
        int generateTagColor = generateTagColor(color);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        ResManager resManager = ResManager.INSTANCE;
        gradientDrawable.setCornerRadius(resManager.getDimension(C7384R.dimen.dp_18));
        gradientDrawable.setColor(ColorStateList.valueOf(generateTagColor));
        gradientDrawable.setStroke(resManager.getDimens(C7384R.dimen.dp_1), ColorStateList.valueOf(generateTagColor).withAlpha(255));
        return gradientDrawable;
    }
}
