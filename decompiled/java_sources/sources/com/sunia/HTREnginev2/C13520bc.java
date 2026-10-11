package com.sunia.HTREnginev2;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.ColorRes;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.TintChipView;

/* renamed from: com.sunia.HTREnginev2.bc */
/* loaded from: classes8.dex */
public class C13520bc extends AbstractC14698yb<TintChipView> {

    /* renamed from: b */
    @ColorRes
    public int f65614b;

    /* renamed from: c */
    @ColorRes
    public int f65615c;

    public C13520bc(TintChipView tintChipView, TintManager tintManager) {
        super(tintChipView, tintManager);
    }

    /* renamed from: a */
    public final void m53234a() {
        if (this.f65614b != -1) {
            T t = this.mView;
            ((TintChipView) t).setChipBackgroundColor(ThemeUtils.getThemeColorStateList(((TintChipView) t).getContext(), this.f65614b));
        }
        int i = this.f65615c;
        if (i != -1) {
            ((TintChipView) this.mView).setTextColor(ThemeUtils.getColorById(i));
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((TintChipView) this.mView).getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintChipHelper, i, 0);
        this.f65614b = obtainStyledAttributes.getResourceId(C7996R.styleable.TintChipHelper_chipBackgroundColor, -1);
        this.f65615c = obtainStyledAttributes.getResourceId(C7996R.styleable.TintChipHelper_android_textColor, -1);
        m53234a();
        obtainStyledAttributes.recycle();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        m53234a();
    }
}
