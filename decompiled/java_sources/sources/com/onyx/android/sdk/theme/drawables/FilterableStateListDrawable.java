package com.onyx.android.sdk.theme.drawables;

import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.SparseArray;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes8.dex */
public final class FilterableStateListDrawable extends StateListDrawable {

    /* renamed from: e */
    public int f46827e = -1;

    /* renamed from: f */
    public int f46828f = 0;

    /* renamed from: g */
    public SparseArray<ColorFilter> f46829g = new SparseArray<>();

    /* renamed from: a */
    public final ColorFilter m36214a(int i) {
        SparseArray<ColorFilter> sparseArray = this.f46829g;
        if (sparseArray != null) {
            return sparseArray.get(i);
        }
        return null;
    }

    @Override // android.graphics.drawable.StateListDrawable
    public void addState(int[] iArr, Drawable drawable) {
        super.addState(iArr, drawable);
        this.f46828f++;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return super.getConstantState();
    }

    @Override // android.graphics.drawable.DrawableContainer
    public boolean selectDrawable(int i) {
        boolean selectDrawable = super.selectDrawable(i);
        if (getCurrent() != null) {
            if (!selectDrawable) {
                i = this.f46827e;
            }
            this.f46827e = i;
            setColorFilter(m36214a(i));
        } else {
            this.f46827e = -1;
            setColorFilter(null);
        }
        return selectDrawable;
    }

    public void addState(int[] iArr, Drawable drawable, ColorFilter colorFilter) {
        if (colorFilter == null) {
            addState(iArr, drawable);
            return;
        }
        int i = this.f46828f;
        addState(iArr, drawable);
        this.f46829g.put(i, colorFilter);
    }
}
