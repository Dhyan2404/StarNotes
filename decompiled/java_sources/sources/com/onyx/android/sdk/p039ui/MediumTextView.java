package com.onyx.android.sdk.p039ui;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes8.dex */
public class MediumTextView extends TintTextView {
    public MediumTextView(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: a */
    public final void m36403a() {
        ColorStateList textColors = getTextColors();
        if (textColors == null) {
            getPaint().setColor(getCurrentTextColor());
        } else {
            getPaint().setColor(textColors.getColorForState(getDrawableState(), textColors.getDefaultColor()));
        }
    }

    /* renamed from: b */
    public final void m36404b() {
        getPaint().setStyle(Paint.Style.FILL_AND_STROKE);
        getPaint().setStrokeWidth(ResManager.INSTANCE.getFloat(C8037R.dimen.medium_text_stroke_width));
        m36403a();
    }

    @Override // com.onyx.android.sdk.theme.widgets.TintTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        ColorStateList textColors = getTextColors();
        if (textColors == null) {
            getPaint().setColor(getCurrentTextColor());
        } else {
            getPaint().setColor(textColors.getColorForState(getDrawableState(), textColors.getDefaultColor()));
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.TintTextView, com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        super.tint();
        m36403a();
    }

    public MediumTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public MediumTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m36404b();
    }
}
