package com.onyx.android.sdk.theme.widgets;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.lite.utils.ColorUtils;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintInfo;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.AbstractC14698yb;

/* loaded from: classes8.dex */
public class AppCompatTextHelper extends AbstractC14698yb<TextView> {

    /* renamed from: b */
    public int f46910b;

    /* renamed from: c */
    public int f46911c;

    /* renamed from: d */
    public int f46912d;

    /* renamed from: e */
    public int f46913e;

    /* renamed from: f */
    public TintInfo f46914f;

    /* renamed from: g */
    public TintInfo f46915g;

    /* loaded from: classes8.dex */
    public interface TextExtensible {
        void setTextColorById(@ColorRes int i);
    }

    public AppCompatTextHelper(TextView textView, TintManager tintManager) {
        super(textView, tintManager);
    }

    /* renamed from: a */
    public final void m36323a() {
        TintInfo tintInfo = this.f46914f;
        if (tintInfo == null || !tintInfo.mHasTintList) {
            return;
        }
        m36334l(tintInfo.mTintList);
    }

    /* renamed from: b */
    public final void m36324b() {
        TintInfo tintInfo = this.f46915g;
        if (tintInfo == null || !tintInfo.mHasTintList) {
            return;
        }
        ((TextView) this.mView).setLinkTextColor(tintInfo.mTintList);
    }

    /* renamed from: c */
    public final void m36325c(@ColorRes int i) {
        this.f46910b = i;
        TintInfo tintInfo = this.f46914f;
        if (tintInfo != null) {
            tintInfo.mHasTintList = false;
            tintInfo.mTintList = null;
        }
    }

    /* renamed from: d */
    public final void m36326d(@ColorRes int i) {
        this.f46911c = i;
        TintInfo tintInfo = this.f46915g;
        if (tintInfo != null) {
            tintInfo.mHasTintList = false;
            tintInfo.mTintList = null;
        }
    }

    /* renamed from: e */
    public final void m36327e(@ColorRes int i) {
        if (this.f46911c != i) {
            m36326d(i);
            if (i != 0) {
                m36329g(i);
            }
        }
    }

    /* renamed from: f */
    public final void m36328f(int i) {
        if (i != 0) {
            if (this.f46914f == null) {
                this.f46914f = new TintInfo();
            }
            TintInfo tintInfo = this.f46914f;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = this.mTintManager.getColorStateList(i);
        }
        m36323a();
    }

    /* renamed from: g */
    public final void m36329g(int i) {
        if (i != 0) {
            if (this.f46915g == null) {
                this.f46915g = new TintInfo();
            }
            TintInfo tintInfo = this.f46915g;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = this.mTintManager.getColorStateList(i);
        }
        m36324b();
    }

    /* renamed from: h */
    public void m36330h(int i) {
        m36325c(0);
        m36331i(i, true);
    }

    /* renamed from: i */
    public void m36331i(int i, boolean z) {
    }

    /* renamed from: j */
    public void m36332j() {
        if (skipNextApply()) {
            return;
        }
        m36325c(0);
        setSkipNextApply(false);
    }

    /* renamed from: k */
    public final void m36333k(@ColorRes int i) {
        if (this.f46910b != i) {
            m36325c(i);
            if (i != 0) {
                m36328f(i);
            }
        }
    }

    /* renamed from: l */
    public final void m36334l(ColorStateList colorStateList) {
        if (skipNextApply()) {
            return;
        }
        ((TextView) this.mView).setTextColor(colorStateList);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((TextView) this.mView).getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintTextHelper, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextHelper_android_textColor, 0);
        if (resourceId == 0) {
            m36331i(obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextHelper_android_textAppearance, 0), false);
        } else {
            m36333k(resourceId);
        }
        this.f46912d = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextHelper_android_textColorHint, 0);
        this.f46913e = obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextHelper_textCursorColor, 0);
        m36336n();
        m36337o();
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintTextHelper_android_textColorLink)) {
            m36327e(obtainStyledAttributes.getResourceId(C7996R.styleable.TintTextHelper_android_textColorLink, 0));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: m */
    public void m36335m(@ColorRes int i) {
        m36333k(i);
    }

    /* renamed from: n */
    public final void m36336n() {
        if (this.f46912d != 0) {
            ((TextView) this.mView).setHintTextColor(ThemeUtils.getThemeColorStateList(((TextView) this.mView).getContext(), this.f46912d));
        }
    }

    /* renamed from: o */
    public final void m36337o() {
        Drawable textCursorDrawable;
        if (BuildKt.isApiLevelBelow(29) || (textCursorDrawable = ((TextView) this.mView).getTextCursorDrawable()) == null) {
            return;
        }
        int colorById = ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
        int i = this.f46913e;
        if (i != 0) {
            colorById = ThemeUtils.getColorById(i);
        }
        BlendModeColorFilter blendModeColorFilter = new BlendModeColorFilter(colorById, BlendMode.SRC_ATOP);
        textCursorDrawable.setColorFilter(blendModeColorFilter);
        ((TextView) this.mView).setTextCursorDrawable(textCursorDrawable);
        Drawable textSelectHandle = ((TextView) this.mView).getTextSelectHandle();
        Drawable textSelectHandleLeft = ((TextView) this.mView).getTextSelectHandleLeft();
        Drawable textSelectHandleRight = ((TextView) this.mView).getTextSelectHandleRight();
        if (textSelectHandle != null) {
            textSelectHandle.setColorFilter(blendModeColorFilter);
        }
        if (textSelectHandleLeft != null) {
            textSelectHandleLeft.setColorFilter(blendModeColorFilter);
        }
        if (textSelectHandleRight != null) {
            textSelectHandleRight.setColorFilter(blendModeColorFilter);
        }
        ((TextView) this.mView).setHighlightColor(ColorUtils.INSTANCE.replaceAlphaWithBitwise(colorById, 85));
    }

    @Deprecated
    /* renamed from: p */
    public void m36338p() {
        if (skipNextApply()) {
            return;
        }
        m36326d(0);
        setSkipNextApply(false);
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        int i = this.f46910b;
        if (i != 0) {
            m36328f(i);
        }
        int i2 = this.f46911c;
        if (i2 != 0) {
            m36329g(i2);
        }
        if (this.f46912d != 0) {
            m36336n();
        }
        m36337o();
    }
}
