package com.onegravity.rteditor.toolbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageButton;
import com.onegravity.rteditor.C7028R;

/* loaded from: classes7.dex */
public class RTToolbarImageButton extends AppCompatImageButton {

    /* renamed from: i */
    public static final int[] f40558i = {C7028R.attr.state_checked};

    /* renamed from: h */
    public boolean f40559h;

    public RTToolbarImageButton(Context context) {
        this(context, null);
    }

    public boolean isChecked() {
        return this.f40559h;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArr = f40558i;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        if (this.f40559h) {
            View.mergeDrawableStates(onCreateDrawableState, iArr);
        }
        return onCreateDrawableState;
    }

    public void setChecked(boolean z) {
        if (this.f40559h != z) {
            this.f40559h = z;
            refreshDrawableState();
        }
    }

    public RTToolbarImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C7028R.attr.rte_ToolbarButton);
    }

    public RTToolbarImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C7028R.styleable.ToolbarButton, i, 0);
        this.f40559h = obtainStyledAttributes.getBoolean(C7028R.styleable.ToolbarButton_checked, false);
        obtainStyledAttributes.recycle();
    }
}
