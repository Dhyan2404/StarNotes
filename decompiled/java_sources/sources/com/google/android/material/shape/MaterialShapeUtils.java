package com.google.android.material.shape;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.internal.ViewUtils;

/* loaded from: classes6.dex */
public class MaterialShapeUtils {
    @NonNull
    /* renamed from: a */
    public static CornerTreatment m24733a(int i) {
        return i != 0 ? i != 1 ? m24734b() : new CutCornerTreatment() : new RoundedCornerTreatment();
    }

    @NonNull
    /* renamed from: b */
    public static CornerTreatment m24734b() {
        return new RoundedCornerTreatment();
    }

    @NonNull
    /* renamed from: c */
    public static EdgeTreatment m24735c() {
        return new EdgeTreatment();
    }

    public static void setElevation(@NonNull View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) background).setElevation(f);
        }
    }

    public static void setParentAbsoluteElevation(@NonNull View view) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            setParentAbsoluteElevation(view, (MaterialShapeDrawable) background);
        }
    }

    public static void setParentAbsoluteElevation(@NonNull View view, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        if (materialShapeDrawable.isElevationOverlayEnabled()) {
            materialShapeDrawable.setParentAbsoluteElevation(ViewUtils.getParentAbsoluteElevation(view));
        }
    }
}
