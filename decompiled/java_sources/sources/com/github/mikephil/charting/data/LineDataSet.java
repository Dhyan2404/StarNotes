package com.github.mikephil.charting.data;

import android.content.Context;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.util.Log;
import com.github.mikephil.charting.formatter.DefaultFillFormatter;
import com.github.mikephil.charting.formatter.IFillFormatter;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.github.mikephil.charting.utils.Utils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class LineDataSet extends LineRadarDataSet<Entry> implements ILineDataSet {

    /* renamed from: j */
    public Mode f21609j;

    /* renamed from: k */
    public List<Integer> f21610k;

    /* renamed from: l */
    public int f21611l;

    /* renamed from: m */
    public float f21612m;

    /* renamed from: n */
    public float f21613n;

    /* renamed from: o */
    public float f21614o;

    /* renamed from: p */
    public DashPathEffect f21615p;

    /* renamed from: q */
    public IFillFormatter f21616q;

    /* renamed from: r */
    public boolean f21617r;

    /* renamed from: s */
    public boolean f21618s;

    /* loaded from: classes4.dex */
    public enum Mode {
        LINEAR,
        STEPPED,
        CUBIC_BEZIER,
        HORIZONTAL_BEZIER
    }

    public LineDataSet(List<Entry> list, String str) {
        super(list, str);
        this.f21609j = Mode.LINEAR;
        this.f21610k = null;
        this.f21611l = -1;
        this.f21612m = 8.0f;
        this.f21613n = 4.0f;
        this.f21614o = 0.2f;
        this.f21615p = null;
        this.f21616q = new DefaultFillFormatter();
        this.f21617r = true;
        this.f21618s = true;
        if (this.f21610k == null) {
            this.f21610k = new ArrayList();
        }
        this.f21610k.clear();
        this.f21610k.add(Integer.valueOf(Color.rgb(140, 234, 255)));
    }

    @Override // com.github.mikephil.charting.data.DataSet
    public DataSet<Entry> copy() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.mValues.size(); i++) {
            arrayList.add(((Entry) this.mValues.get(i)).copy());
        }
        LineDataSet lineDataSet = new LineDataSet(arrayList, getLabel());
        lineDataSet.f21609j = this.f21609j;
        lineDataSet.mColors = this.mColors;
        lineDataSet.f21612m = this.f21612m;
        lineDataSet.f21613n = this.f21613n;
        lineDataSet.f21610k = this.f21610k;
        lineDataSet.f21615p = this.f21615p;
        lineDataSet.f21617r = this.f21617r;
        lineDataSet.f21618s = this.f21618s;
        lineDataSet.mHighLightColor = this.mHighLightColor;
        return lineDataSet;
    }

    public void disableDashedLine() {
        this.f21615p = null;
    }

    public void enableDashedLine(float f, float f2, float f3) {
        this.f21615p = new DashPathEffect(new float[]{f, f2}, f3);
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    public int getCircleColor(int i) {
        return this.f21610k.get(i).intValue();
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    public int getCircleColorCount() {
        return this.f21610k.size();
    }

    public List<Integer> getCircleColors() {
        return this.f21610k;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    public int getCircleHoleColor() {
        return this.f21611l;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    public float getCircleHoleRadius() {
        return this.f21613n;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    public float getCircleRadius() {
        return this.f21612m;
    }

    @Deprecated
    public float getCircleSize() {
        return getCircleRadius();
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    public float getCubicIntensity() {
        return this.f21614o;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    public DashPathEffect getDashPathEffect() {
        return this.f21615p;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    public IFillFormatter getFillFormatter() {
        return this.f21616q;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    public Mode getMode() {
        return this.f21609j;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    public boolean isDashedLineEnabled() {
        return this.f21615p != null;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    public boolean isDrawCircleHoleEnabled() {
        return this.f21618s;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    public boolean isDrawCirclesEnabled() {
        return this.f21617r;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    @Deprecated
    public boolean isDrawCubicEnabled() {
        return this.f21609j == Mode.CUBIC_BEZIER;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineDataSet
    @Deprecated
    public boolean isDrawSteppedEnabled() {
        return this.f21609j == Mode.STEPPED;
    }

    public void resetCircleColors() {
        if (this.f21610k == null) {
            this.f21610k = new ArrayList();
        }
        this.f21610k.clear();
    }

    public void setCircleColor(int i) {
        resetCircleColors();
        this.f21610k.add(Integer.valueOf(i));
    }

    public void setCircleColorHole(int i) {
        this.f21611l = i;
    }

    public void setCircleColors(List<Integer> list) {
        this.f21610k = list;
    }

    public void setCircleHoleRadius(float f) {
        if (f >= 0.5f) {
            this.f21613n = Utils.convertDpToPixel(f);
        } else {
            Log.e("LineDataSet", "Circle radius cannot be < 0.5");
        }
    }

    public void setCircleRadius(float f) {
        if (f >= 1.0f) {
            this.f21612m = Utils.convertDpToPixel(f);
        } else {
            Log.e("LineDataSet", "Circle radius cannot be < 1");
        }
    }

    @Deprecated
    public void setCircleSize(float f) {
        setCircleRadius(f);
    }

    public void setCubicIntensity(float f) {
        if (f > 1.0f) {
            f = 1.0f;
        }
        if (f < 0.05f) {
            f = 0.05f;
        }
        this.f21614o = f;
    }

    public void setDrawCircleHole(boolean z) {
        this.f21618s = z;
    }

    public void setDrawCircles(boolean z) {
        this.f21617r = z;
    }

    public void setFillFormatter(IFillFormatter iFillFormatter) {
        if (iFillFormatter == null) {
            this.f21616q = new DefaultFillFormatter();
        } else {
            this.f21616q = iFillFormatter;
        }
    }

    public void setMode(Mode mode) {
        this.f21609j = mode;
    }

    public void setCircleColors(int... iArr) {
        this.f21610k = ColorTemplate.createColors(iArr);
    }

    public void setCircleColors(int[] iArr, Context context) {
        List<Integer> list = this.f21610k;
        if (list == null) {
            list = new ArrayList<>();
        }
        list.clear();
        for (int i : iArr) {
            list.add(Integer.valueOf(context.getResources().getColor(i)));
        }
        this.f21610k = list;
    }
}
