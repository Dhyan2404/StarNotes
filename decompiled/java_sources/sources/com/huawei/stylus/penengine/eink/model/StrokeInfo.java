package com.huawei.stylus.penengine.eink.model;

import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class StrokeInfo {

    /* renamed from: f */
    public static final String f38980f = "StrokeInfo";

    /* renamed from: a */
    public int f38981a;

    /* renamed from: b */
    public float f38982b;

    /* renamed from: c */
    public int f38983c;

    /* renamed from: d */
    public RectF f38984d;

    /* renamed from: e */
    public List<StrokePoint> f38985e;

    public StrokeInfo(int i, float f, int i2, List<StrokePoint> list, RectF rectF) {
        new ArrayList();
        this.f38981a = i;
        this.f38982b = f;
        this.f38983c = i2;
        this.f38985e = list;
        this.f38984d = rectF;
    }

    public RectF getBound() {
        return this.f38984d;
    }

    public int getBrushColor() {
        return this.f38983c;
    }

    public int getBrushType() {
        return this.f38981a;
    }

    public float getBrushWidth() {
        return this.f38982b;
    }

    public List<StrokePoint> getStrokePoints() {
        return this.f38985e;
    }
}
