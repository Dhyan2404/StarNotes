package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import com.google.android.material.C5139R;
import com.google.android.material.datepicker.MaterialCalendar;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;

/* loaded from: classes6.dex */
public final class tmd {

    /* renamed from: a */
    @NonNull
    public final smd f85481a;

    /* renamed from: b */
    @NonNull
    public final smd f85482b;

    /* renamed from: c */
    @NonNull
    public final smd f85483c;

    /* renamed from: d */
    @NonNull
    public final smd f85484d;

    /* renamed from: e */
    @NonNull
    public final smd f85485e;

    /* renamed from: f */
    @NonNull
    public final smd f85486f;

    /* renamed from: g */
    @NonNull
    public final smd f85487g;

    /* renamed from: h */
    @NonNull
    public final Paint f85488h;

    public tmd(@NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.resolveOrThrow(context, C5139R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), C5139R.styleable.MaterialCalendar);
        this.f85481a = smd.m57172a(context, obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialCalendar_dayStyle, 0));
        this.f85487g = smd.m57172a(context, obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialCalendar_dayInvalidStyle, 0));
        this.f85482b = smd.m57172a(context, obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialCalendar_daySelectedStyle, 0));
        this.f85483c = smd.m57172a(context, obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.MaterialCalendar_rangeFillColor);
        this.f85484d = smd.m57172a(context, obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialCalendar_yearStyle, 0));
        this.f85485e = smd.m57172a(context, obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialCalendar_yearSelectedStyle, 0));
        this.f85486f = smd.m57172a(context, obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.f85488h = paint;
        paint.setColor(colorStateList.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
