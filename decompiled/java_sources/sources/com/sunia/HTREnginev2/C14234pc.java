package com.sunia.HTREnginev2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0118R;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.widget.PopupWindowCompat;

/* renamed from: com.sunia.HTREnginev2.pc */
/* loaded from: classes3.dex */
public class C14234pc extends PopupWindow {

    /* renamed from: b */
    public static final boolean f80647b = false;

    /* renamed from: a */
    public boolean f80648a;

    public C14234pc(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        m56251a(context, attributeSet, i, 0);
    }

    /* renamed from: a */
    public final void m56251a(Context context, AttributeSet attributeSet, int i, int i2) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0118R.styleable.PopupWindow, i, i2);
        if (obtainStyledAttributes.hasValue(C0118R.styleable.PopupWindow_overlapAnchor)) {
            m56252b(obtainStyledAttributes.getBoolean(C0118R.styleable.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(obtainStyledAttributes.getDrawable(C0118R.styleable.PopupWindow_android_popupBackground));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    public final void m56252b(boolean z) {
        if (f80647b) {
            this.f80648a = z;
        } else {
            PopupWindowCompat.setOverlapAnchor(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        if (f80647b && this.f80648a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        if (f80647b && this.f80648a) {
            i2 -= view.getHeight();
        }
        super.update(view, i, i2, i3, i4);
    }

    public C14234pc(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        m56251a(context, attributeSet, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (f80647b && this.f80648a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2, i3);
    }
}
