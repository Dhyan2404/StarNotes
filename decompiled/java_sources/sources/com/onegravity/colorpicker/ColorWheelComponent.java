package com.onegravity.colorpicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes7.dex */
public class ColorWheelComponent {

    /* renamed from: a */
    public final OnColorChangedListener f39856a;

    /* renamed from: b */
    public final int f39857b;

    /* renamed from: c */
    public final boolean f39858c;

    /* renamed from: d */
    public final int f39859d;

    /* renamed from: e */
    public ColorWheelView f39860e;

    public ColorWheelComponent(int i, int i2, boolean z, OnColorChangedListener onColorChangedListener) {
        this.f39857b = i;
        this.f39859d = i2;
        this.f39858c = z;
        this.f39856a = onColorChangedListener;
    }

    /* renamed from: a */
    public void m31463a(int i) {
        this.f39860e.setColor(i);
    }

    @SuppressLint({"InflateParams"})
    /* renamed from: b */
    public View m31464b(Context context) {
        View inflate = LayoutInflater.from(context).inflate(C7020R.layout.dialog_color_wheel, (ViewGroup) null);
        this.f39860e = (ColorWheelView) inflate.findViewById(C7020R.id.picker);
        ValueBar valueBar = (ValueBar) inflate.findViewById(C7020R.id.valuebar);
        if (valueBar != null) {
            this.f39860e.addValueBar(valueBar);
        }
        SaturationBar saturationBar = (SaturationBar) inflate.findViewById(C7020R.id.saturationbar);
        if (saturationBar != null) {
            this.f39860e.addSaturationBar(saturationBar);
        }
        OpacityBar opacityBar = (OpacityBar) inflate.findViewById(C7020R.id.opacitybar);
        if (opacityBar != null) {
            if (this.f39858c) {
                this.f39860e.addOpacityBar(opacityBar);
            }
            opacityBar.setVisibility(this.f39858c ? 0 : 8);
        }
        this.f39860e.setOldCenterColor(this.f39857b);
        this.f39860e.setColor(this.f39859d);
        this.f39860e.setOnColorChangedListener(this.f39856a);
        return inflate;
    }

    /* renamed from: c */
    public void m31465c() {
    }

    /* renamed from: d */
    public int m31466d() {
        return this.f39860e.getColor();
    }
}
