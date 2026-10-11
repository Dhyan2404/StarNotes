package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.browser.C0349R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@Deprecated
/* loaded from: classes3.dex */
public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* renamed from: e */
    public final int f2324e;

    /* renamed from: f */
    public final int f2325f;

    public BrowserActionsFallbackMenuView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2324e = getResources().getDimensionPixelOffset(C0349R.dimen.browser_actions_context_menu_min_padding);
        this.f2325f = getResources().getDimensionPixelOffset(C0349R.dimen.browser_actions_context_menu_max_width);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f2324e * 2), this.f2325f), 1073741824), i2);
    }
}
