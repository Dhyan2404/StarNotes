package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.C5139R;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* loaded from: classes6.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: p */
    public static boolean m25355p(Context context) {
        return MaterialAttributes.resolveBoolean(context, C5139R.attr.textAppearanceLineHeightEnabled, true);
    }

    /* renamed from: q */
    public static int m25356q(@NonNull Resources.Theme theme, @Nullable AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C5139R.styleable.MaterialTextView, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialTextView_android_textAppearance, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: s */
    public static int m25357s(@NonNull Context context, @NonNull TypedArray typedArray, @NonNull @StyleableRes int... iArr) {
        int i = -1;
        for (int i2 = 0; i2 < iArr.length && i < 0; i2++) {
            i = MaterialResources.getDimensionPixelSize(context, typedArray, iArr[i2], -1);
        }
        return i;
    }

    /* renamed from: t */
    public static boolean m25358t(@NonNull Context context, @NonNull Resources.Theme theme, @Nullable AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C5139R.styleable.MaterialTextView, i, i2);
        int m25357s = m25357s(context, obtainStyledAttributes, C5139R.styleable.MaterialTextView_android_lineHeight, C5139R.styleable.MaterialTextView_lineHeight);
        obtainStyledAttributes.recycle();
        return m25357s != -1;
    }

    /* renamed from: o */
    public final void m25359o(@NonNull Resources.Theme theme, int i) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i, C5139R.styleable.MaterialTextAppearance);
        int m25357s = m25357s(getContext(), obtainStyledAttributes, C5139R.styleable.MaterialTextAppearance_android_lineHeight, C5139R.styleable.MaterialTextAppearance_lineHeight);
        obtainStyledAttributes.recycle();
        if (m25357s >= 0) {
            setLineHeight(m25357s);
        }
    }

    /* renamed from: r */
    public final void m25360r(@Nullable AttributeSet attributeSet, int i, int i2) {
        int m25356q;
        Context context = getContext();
        if (m25355p(context)) {
            Resources.Theme theme = context.getTheme();
            if (m25358t(context, theme, attributeSet, i, i2) || (m25356q = m25356q(theme, attributeSet, i, i2)) == -1) {
                return;
            }
            m25359o(theme, m25356q);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(@NonNull Context context, int i) {
        super.setTextAppearance(context, i);
        if (m25355p(context)) {
            m25359o(context.getTheme(), i);
        }
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, 0), attributeSet, i);
        m25360r(attributeSet, i, 0);
    }

    @Deprecated
    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        m25360r(attributeSet, i, i2);
    }
}
