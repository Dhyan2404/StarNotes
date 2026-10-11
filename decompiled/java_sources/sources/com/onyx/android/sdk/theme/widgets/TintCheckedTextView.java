package com.onyx.android.sdk.theme.widgets;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import androidx.annotation.DrawableRes;
import androidx.core.graphics.drawable.DrawableCompat;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.TintManager;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes8.dex */
public class TintCheckedTextView extends CheckedTextView implements Tintable {

    /* renamed from: e */
    public static final int[] f46939e = {R.attr.drawableLeft, C7996R.attr.drawableLeftTint};

    public TintCheckedTextView(Context context) {
        this(context, null);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
    }

    public void tintCheckTextView(@DrawableRes int i, int i2) {
        Drawable wrap = DrawableCompat.wrap(getResources().getDrawable(i));
        DrawableCompat.setTintList(wrap, TintManager.get(getContext()).getColorStateList(i2));
        DrawableCompat.setTintMode(wrap, PorterDuff.Mode.SRC_IN);
        setCompoundDrawablesRelativeWithIntrinsicBounds(wrap, (Drawable) null, (Drawable) null, (Drawable) null);
        setCheckMarkDrawable((Drawable) null);
    }

    public TintCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        super.setCheckMarkDrawable(i);
    }

    @SuppressLint({"ResourceType"})
    public TintCheckedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f46939e);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        if (resourceId == 0 || resourceId2 == 0) {
            return;
        }
        tintCheckTextView(resourceId, resourceId2);
    }
}
