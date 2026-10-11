package com.github.mikephil.charting.components;

import android.graphics.Paint;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;

/* loaded from: classes4.dex */
public class Description extends ComponentBase {

    /* renamed from: b */
    public MPPointF f21536b;

    /* renamed from: a */
    public String f21535a = "Description Label";

    /* renamed from: c */
    public Paint.Align f21537c = Paint.Align.RIGHT;

    public Description() {
        this.mTextSize = Utils.convertDpToPixel(8.0f);
    }

    public MPPointF getPosition() {
        return this.f21536b;
    }

    public String getText() {
        return this.f21535a;
    }

    public Paint.Align getTextAlign() {
        return this.f21537c;
    }

    public void setPosition(float f, float f2) {
        MPPointF mPPointF = this.f21536b;
        if (mPPointF == null) {
            this.f21536b = MPPointF.getInstance(f, f2);
        } else {
            mPPointF.f21741x = f;
            mPPointF.f21742y = f2;
        }
    }

    public void setText(String str) {
        this.f21535a = str;
    }

    public void setTextAlign(Paint.Align align) {
        this.f21537c = align;
    }
}
