package com.onyx.android.sdk.matisse.internal.p030ui.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.res.ResourcesCompat;
import com.onyx.android.sdk.imagepicker.C7453R;

/* loaded from: classes7.dex */
public class CheckRadioView extends AppCompatImageView {

    /* renamed from: h */
    public Drawable f42792h;

    /* renamed from: i */
    public int f42793i;

    /* renamed from: j */
    public int f42794j;

    public CheckRadioView(Context context) {
        super(context);
        m33453a();
    }

    /* renamed from: a */
    public final void m33453a() {
        this.f42793i = ResourcesCompat.getColor(getResources(), C7453R.color.zhihu_item_checkCircle_backgroundColor, getContext().getTheme());
        this.f42794j = ResourcesCompat.getColor(getResources(), C7453R.color.zhihu_check_original_radio_disable, getContext().getTheme());
        setChecked(false);
    }

    public void setChecked(boolean z) {
        if (z) {
            setImageResource(C7453R.drawable.ic_preview_radio_on);
            Drawable drawable = getDrawable();
            this.f42792h = drawable;
            drawable.setColorFilter(this.f42793i, PorterDuff.Mode.SRC_IN);
            return;
        }
        setImageResource(C7453R.drawable.ic_preview_radio_off);
        Drawable drawable2 = getDrawable();
        this.f42792h = drawable2;
        drawable2.setColorFilter(this.f42794j, PorterDuff.Mode.SRC_IN);
    }

    public void setColor(int i) {
        if (this.f42792h == null) {
            this.f42792h = getDrawable();
        }
        this.f42792h.setColorFilter(i, PorterDuff.Mode.SRC_IN);
    }

    public CheckRadioView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m33453a();
    }
}
