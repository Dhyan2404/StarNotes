package com.github.mikephil.charting.formatter;

import com.github.mikephil.charting.components.AxisBase;
import java.util.Collection;

/* loaded from: classes4.dex */
public class IndexAxisValueFormatter implements IAxisValueFormatter {

    /* renamed from: a */
    public String[] f21646a;

    /* renamed from: b */
    public int f21647b;

    public IndexAxisValueFormatter() {
        this.f21646a = new String[0];
        this.f21647b = 0;
    }

    @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
    public String getFormattedValue(float f, AxisBase axisBase) {
        int round = Math.round(f);
        return (round < 0 || round >= this.f21647b || round != ((int) f)) ? "" : this.f21646a[round];
    }

    public String[] getValues() {
        return this.f21646a;
    }

    public void setValues(String[] strArr) {
        if (strArr == null) {
            strArr = new String[0];
        }
        this.f21646a = strArr;
        this.f21647b = strArr.length;
    }

    public IndexAxisValueFormatter(String[] strArr) {
        this.f21646a = new String[0];
        this.f21647b = 0;
        if (strArr != null) {
            setValues(strArr);
        }
    }

    public IndexAxisValueFormatter(Collection<String> collection) {
        this.f21646a = new String[0];
        this.f21647b = 0;
        if (collection != null) {
            setValues((String[]) collection.toArray(new String[collection.size()]));
        }
    }
}
