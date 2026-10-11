package com.onyx.android.sdk.theme.widgets;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.tabs.TabLayout;
import com.onyx.android.sdk.theme.utils.TintManager;

/* loaded from: classes8.dex */
public class TintTabLayoutView extends TabLayout implements Tintable {

    /* renamed from: a1 */
    public AppCompatTabLayoutViewHelper f46987a1;

    public TintTabLayoutView(Context context) {
        this(context, null);
    }

    public void initTabViewBackgroundColor() {
        AppCompatTabLayoutViewHelper appCompatTabLayoutViewHelper = this.f46987a1;
        if (appCompatTabLayoutViewHelper != null) {
            appCompatTabLayoutViewHelper.initTabViewBackgroundColor();
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatTabLayoutViewHelper appCompatTabLayoutViewHelper = this.f46987a1;
        if (appCompatTabLayoutViewHelper != null) {
            appCompatTabLayoutViewHelper.tint();
        }
    }

    public TintTabLayoutView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TintTabLayoutView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            return;
        }
        AppCompatTabLayoutViewHelper appCompatTabLayoutViewHelper = new AppCompatTabLayoutViewHelper(this, TintManager.get(context));
        this.f46987a1 = appCompatTabLayoutViewHelper;
        appCompatTabLayoutViewHelper.loadFromAttribute(attributeSet, i);
    }
}
