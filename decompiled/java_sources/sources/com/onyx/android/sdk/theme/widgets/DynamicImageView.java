package com.onyx.android.sdk.theme.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;

/* loaded from: classes8.dex */
public class DynamicImageView extends AppCompatImageView implements Tintable {

    /* renamed from: h */
    public int f46926h;

    public DynamicImageView(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    public final void m36344a() {
        if (this.f46926h == -1) {
            return;
        }
        setImageDrawable(ThemeUtils.getThemeDrawableById(getContext(), this.f46926h));
    }

    /* renamed from: b */
    public final void m36345b(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C7996R.styleable.DynamicImageView);
        this.f46926h = obtainStyledAttributes.getResourceId(C7996R.styleable.DynamicImageView_android_src, -1);
        m36344a();
        obtainStyledAttributes.recycle();
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        m36344a();
    }

    public DynamicImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public DynamicImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f46926h = -1;
        m36345b(context, attributeSet);
    }
}
