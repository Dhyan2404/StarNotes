package com.onyx.android.sdk.theme.widgets;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;

/* loaded from: classes8.dex */
public class TintAppAlertDialogDividingView extends View {
    public static final int[] TINT_ATTRS = {R.attr.background};

    public TintAppAlertDialogDividingView(Context context) {
        this(context, null);
    }

    public TintAppAlertDialogDividingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TintAppAlertDialogDividingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, TINT_ATTRS);
        if (obtainStyledAttributes.hasValue(0) && obtainStyledAttributes.getResourceId(0, 0) == 17170450) {
            setBackgroundColor(ThemeUtils.getThemeAttrColor(context, C7996R.attr.themeColorSecondary));
        }
        obtainStyledAttributes.recycle();
    }
}
