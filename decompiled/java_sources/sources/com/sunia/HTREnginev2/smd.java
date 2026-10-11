package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;

/* loaded from: classes6.dex */
public final class smd {

    /* renamed from: a */
    @NonNull
    public final Rect f84286a;

    /* renamed from: b */
    public final ColorStateList f84287b;

    /* renamed from: c */
    public final ColorStateList f84288c;

    /* renamed from: d */
    public final ColorStateList f84289d;

    /* renamed from: e */
    public final int f84290e;

    /* renamed from: f */
    public final ShapeAppearanceModel f84291f;

    public smd(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, ShapeAppearanceModel shapeAppearanceModel, @NonNull Rect rect) {
        Preconditions.checkArgumentNonnegative(rect.left);
        Preconditions.checkArgumentNonnegative(rect.top);
        Preconditions.checkArgumentNonnegative(rect.right);
        Preconditions.checkArgumentNonnegative(rect.bottom);
        this.f84286a = rect;
        this.f84287b = colorStateList2;
        this.f84288c = colorStateList;
        this.f84289d = colorStateList3;
        this.f84290e = i;
        this.f84291f = shapeAppearanceModel;
    }

    @NonNull
    /* renamed from: a */
    public static smd m57172a(@NonNull Context context, @StyleRes int i) {
        Preconditions.checkArgument(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C5139R.styleable.MaterialCalendarItem);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(C5139R.styleable.MaterialCalendarItem_android_insetLeft, 0), obtainStyledAttributes.getDimensionPixelOffset(C5139R.styleable.MaterialCalendarItem_android_insetTop, 0), obtainStyledAttributes.getDimensionPixelOffset(C5139R.styleable.MaterialCalendarItem_android_insetRight, 0), obtainStyledAttributes.getDimensionPixelOffset(C5139R.styleable.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.MaterialCalendarItem_itemFillColor);
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.MaterialCalendarItem_itemTextColor);
        ColorStateList colorStateList3 = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.MaterialCalendarItem_itemStrokeWidth, 0);
        ShapeAppearanceModel build = ShapeAppearanceModel.builder(context, obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialCalendarItem_itemShapeAppearance, 0), obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).build();
        obtainStyledAttributes.recycle();
        return new smd(colorStateList, colorStateList2, colorStateList3, dimensionPixelSize, build, rect);
    }

    /* renamed from: b */
    public int m57173b() {
        return this.f84286a.bottom;
    }

    /* renamed from: c */
    public int m57174c() {
        return this.f84286a.left;
    }

    /* renamed from: d */
    public int m57175d() {
        return this.f84286a.right;
    }

    /* renamed from: e */
    public int m57176e() {
        return this.f84286a.top;
    }

    /* renamed from: f */
    public void m57177f(@NonNull TextView textView) {
        m57178g(textView, null, null);
    }

    /* renamed from: g */
    public void m57178g(@NonNull TextView textView, @Nullable ColorStateList colorStateList, @Nullable ColorStateList colorStateList2) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
        materialShapeDrawable.setShapeAppearanceModel(this.f84291f);
        materialShapeDrawable2.setShapeAppearanceModel(this.f84291f);
        if (colorStateList == null) {
            colorStateList = this.f84288c;
        }
        materialShapeDrawable.setFillColor(colorStateList);
        materialShapeDrawable.setStroke(this.f84290e, this.f84289d);
        if (colorStateList2 == null) {
            colorStateList2 = this.f84287b;
        }
        textView.setTextColor(colorStateList2);
        RippleDrawable rippleDrawable = new RippleDrawable(this.f84287b.withAlpha(30), materialShapeDrawable, materialShapeDrawable2);
        Rect rect = this.f84286a;
        ViewCompat.setBackground(textView, new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}
