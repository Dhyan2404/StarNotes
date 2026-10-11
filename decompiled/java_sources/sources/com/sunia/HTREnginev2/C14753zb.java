package com.sunia.HTREnginev2;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.ColorRes;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.TintCardView;

/* renamed from: com.sunia.HTREnginev2.zb */
/* loaded from: classes8.dex */
public class C14753zb extends AbstractC14698yb<TintCardView> {

    /* renamed from: b */
    @ColorRes
    public int f91572b;

    /* renamed from: c */
    @ColorRes
    public int f91573c;

    public C14753zb(TintCardView tintCardView, TintManager tintManager) {
        super(tintCardView, tintManager);
    }

    /* renamed from: a */
    public final void m58656a() {
        int i = this.f91572b;
        if (i != -1) {
            ((TintCardView) this.mView).setCardBackgroundColor(ThemeUtils.getColorById(i));
        }
        if (this.f91573c != -1) {
            T t = this.mView;
            ((TintCardView) t).setStrokeColor(ThemeUtils.getThemeColorStateList(((TintCardView) t).getContext(), this.f91573c));
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((TintCardView) this.mView).getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintCardViewHelper, i, 0);
        this.f91572b = obtainStyledAttributes.getResourceId(C7996R.styleable.TintCardViewHelper_cardBackgroundColor, -1);
        this.f91573c = obtainStyledAttributes.getResourceId(C7996R.styleable.TintCardViewHelper_strokeColor, -1);
        m58656a();
        obtainStyledAttributes.recycle();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        m58656a();
    }
}
