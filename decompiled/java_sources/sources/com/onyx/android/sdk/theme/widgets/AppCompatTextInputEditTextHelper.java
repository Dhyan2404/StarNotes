package com.onyx.android.sdk.theme.widgets;

import android.content.res.TypedArray;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.ColorRes;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.lite.utils.ColorUtils;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.AbstractC14698yb;

/* loaded from: classes8.dex */
public class AppCompatTextInputEditTextHelper extends AbstractC14698yb<TintTextInputEditTextView> {

    /* renamed from: b */
    @ColorRes
    public int f46916b;

    /* renamed from: c */
    @ColorRes
    public int f46917c;

    /* renamed from: d */
    @ColorRes
    public int f46918d;

    /* renamed from: e */
    @ColorRes
    public int f46919e;

    public AppCompatTextInputEditTextHelper(TintTextInputEditTextView tintTextInputEditTextView, TintManager tintManager) {
        super(tintTextInputEditTextView, tintManager);
    }

    /* renamed from: a */
    public final void m36339a() {
        int i = this.f46916b;
        if (i != 0) {
            ((TintTextInputEditTextView) this.mView).setTextColor(ThemeUtils.getColorById(i));
        }
        if (this.f46917c != 0) {
            ((TintTextInputEditTextView) this.mView).setHintTextColor(ThemeUtils.getThemeColorStateList(((TintTextInputEditTextView) this.mView).getContext(), this.f46917c));
        }
        int i2 = this.f46918d;
        if (i2 != 0) {
            ((TintTextInputEditTextView) this.mView).setTextCursorDrawable(ThemeUtils.getThemeDrawable(i2));
            ((TintTextInputEditTextView) this.mView).setCursorVisible(true);
        }
        m36340b();
    }

    /* renamed from: b */
    public final void m36340b() {
        Drawable textCursorDrawable;
        if (BuildKt.isApiLevelBelow(29) || (textCursorDrawable = ((TintTextInputEditTextView) this.mView).getTextCursorDrawable()) == null) {
            return;
        }
        int colorById = ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
        int i = this.f46919e;
        if (i != 0) {
            colorById = ThemeUtils.getColorById(i);
        }
        BlendModeColorFilter blendModeColorFilter = new BlendModeColorFilter(colorById, BlendMode.SRC_ATOP);
        textCursorDrawable.setColorFilter(blendModeColorFilter);
        ((TintTextInputEditTextView) this.mView).setTextCursorDrawable(textCursorDrawable);
        Drawable textSelectHandle = ((TintTextInputEditTextView) this.mView).getTextSelectHandle();
        Drawable textSelectHandleLeft = ((TintTextInputEditTextView) this.mView).getTextSelectHandleLeft();
        Drawable textSelectHandleRight = ((TintTextInputEditTextView) this.mView).getTextSelectHandleRight();
        if (textSelectHandle != null) {
            textSelectHandle.setColorFilter(blendModeColorFilter);
        }
        if (textSelectHandleLeft != null) {
            textSelectHandleLeft.setColorFilter(blendModeColorFilter);
        }
        if (textSelectHandleRight != null) {
            textSelectHandleRight.setColorFilter(blendModeColorFilter);
        }
        ((TintTextInputEditTextView) this.mView).setHighlightColor(ColorUtils.INSTANCE.replaceAlphaWithBitwise(colorById, 85));
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((TintTextInputEditTextView) this.mView).getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintTextInputEditTextHelper);
        this.f46916b = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextInputEditTextHelper_android_textColor, 0);
        this.f46917c = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextInputEditTextHelper_android_textColorHint, 0);
        this.f46918d = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextInputEditTextHelper_textCursorDrawable, 0);
        this.f46919e = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextInputEditTextHelper_textCursorColor, 0);
        m36339a();
        obtainStyledAttributes.recycle();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        m36339a();
    }
}
