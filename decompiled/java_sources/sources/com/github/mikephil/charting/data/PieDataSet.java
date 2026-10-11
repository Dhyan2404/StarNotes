package com.github.mikephil.charting.data;

import com.github.mikephil.charting.interfaces.datasets.IPieDataSet;
import com.github.mikephil.charting.utils.Utils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class PieDataSet extends DataSet<PieEntry> implements IPieDataSet {

    /* renamed from: f */
    public float f21623f;

    /* renamed from: g */
    public boolean f21624g;

    /* renamed from: h */
    public float f21625h;

    /* renamed from: i */
    public ValuePosition f21626i;

    /* renamed from: j */
    public ValuePosition f21627j;

    /* renamed from: k */
    public int f21628k;

    /* renamed from: l */
    public float f21629l;

    /* renamed from: m */
    public float f21630m;

    /* renamed from: n */
    public float f21631n;

    /* renamed from: o */
    public float f21632o;

    /* renamed from: p */
    public boolean f21633p;

    /* loaded from: classes4.dex */
    public enum ValuePosition {
        INSIDE_SLICE,
        OUTSIDE_SLICE
    }

    public PieDataSet(List<PieEntry> list, String str) {
        super(list, str);
        this.f21623f = 0.0f;
        this.f21625h = 18.0f;
        ValuePosition valuePosition = ValuePosition.INSIDE_SLICE;
        this.f21626i = valuePosition;
        this.f21627j = valuePosition;
        this.f21628k = -16777216;
        this.f21629l = 1.0f;
        this.f21630m = 75.0f;
        this.f21631n = 0.3f;
        this.f21632o = 0.4f;
        this.f21633p = true;
    }

    @Override // com.github.mikephil.charting.data.DataSet
    public DataSet<PieEntry> copy() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.mValues.size(); i++) {
            arrayList.add(((PieEntry) this.mValues.get(i)).copy());
        }
        PieDataSet pieDataSet = new PieDataSet(arrayList, getLabel());
        pieDataSet.mColors = this.mColors;
        pieDataSet.f21623f = this.f21623f;
        pieDataSet.f21625h = this.f21625h;
        return pieDataSet;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IPieDataSet
    public float getSelectionShift() {
        return this.f21625h;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IPieDataSet
    public float getSliceSpace() {
        return this.f21623f;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IPieDataSet
    public int getValueLineColor() {
        return this.f21628k;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IPieDataSet
    public float getValueLinePart1Length() {
        return this.f21631n;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IPieDataSet
    public float getValueLinePart1OffsetPercentage() {
        return this.f21630m;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IPieDataSet
    public float getValueLinePart2Length() {
        return this.f21632o;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IPieDataSet
    public float getValueLineWidth() {
        return this.f21629l;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IPieDataSet
    public ValuePosition getXValuePosition() {
        return this.f21626i;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IPieDataSet
    public ValuePosition getYValuePosition() {
        return this.f21627j;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IPieDataSet
    public boolean isAutomaticallyDisableSliceSpacingEnabled() {
        return this.f21624g;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IPieDataSet
    public boolean isValueLineVariableLength() {
        return this.f21633p;
    }

    public void setAutomaticallyDisableSliceSpacing(boolean z) {
        this.f21624g = z;
    }

    public void setSelectionShift(float f) {
        this.f21625h = Utils.convertDpToPixel(f);
    }

    public void setSliceSpace(float f) {
        if (f > 20.0f) {
            f = 20.0f;
        }
        if (f < 0.0f) {
            f = 0.0f;
        }
        this.f21623f = Utils.convertDpToPixel(f);
    }

    public void setValueLineColor(int i) {
        this.f21628k = i;
    }

    public void setValueLinePart1Length(float f) {
        this.f21631n = f;
    }

    public void setValueLinePart1OffsetPercentage(float f) {
        this.f21630m = f;
    }

    public void setValueLinePart2Length(float f) {
        this.f21632o = f;
    }

    public void setValueLineVariableLength(boolean z) {
        this.f21633p = z;
    }

    public void setValueLineWidth(float f) {
        this.f21629l = f;
    }

    public void setXValuePosition(ValuePosition valuePosition) {
        this.f21626i = valuePosition;
    }

    public void setYValuePosition(ValuePosition valuePosition) {
        this.f21627j = valuePosition;
    }

    @Override // com.github.mikephil.charting.data.DataSet
    public void calcMinMax(PieEntry pieEntry) {
        if (pieEntry == null) {
            return;
        }
        calcMinMaxY(pieEntry);
    }
}
