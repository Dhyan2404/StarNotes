package com.github.mikephil.charting.formatter;

import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.text.DecimalFormat;

/* loaded from: classes4.dex */
public class StackedValueFormatter implements IValueFormatter {

    /* renamed from: a */
    public boolean f21652a;

    /* renamed from: b */
    public String f21653b;

    /* renamed from: c */
    public DecimalFormat f21654c;

    public StackedValueFormatter(boolean z, String str, int i) {
        this.f21652a = z;
        this.f21653b = str;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 == 0) {
                stringBuffer.append(".");
            }
            stringBuffer.append("0");
        }
        this.f21654c = new DecimalFormat("###,###,###,##0" + stringBuffer.toString());
    }

    @Override // com.github.mikephil.charting.formatter.IValueFormatter
    public String getFormattedValue(float f, Entry entry, int i, ViewPortHandler viewPortHandler) {
        BarEntry barEntry;
        float[] yVals;
        if (this.f21652a || !(entry instanceof BarEntry) || (yVals = (barEntry = (BarEntry) entry).getYVals()) == null) {
            return this.f21654c.format(f) + this.f21653b;
        }
        if (yVals[yVals.length - 1] != f) {
            return "";
        }
        return this.f21654c.format(barEntry.getY()) + this.f21653b;
    }
}
