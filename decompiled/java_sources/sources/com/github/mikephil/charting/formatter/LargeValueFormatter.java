package com.github.mikephil.charting.formatter;

import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import java.text.DecimalFormat;

/* loaded from: classes4.dex */
public class LargeValueFormatter implements IValueFormatter, IAxisValueFormatter {

    /* renamed from: c */
    public static String[] f21648c = {"", C4921e.f26537n, "m", "b", "t"};

    /* renamed from: d */
    public static final int f21649d = 5;

    /* renamed from: a */
    public DecimalFormat f21650a;

    /* renamed from: b */
    public String f21651b;

    public LargeValueFormatter() {
        this.f21651b = "";
        this.f21650a = new DecimalFormat("###E00");
    }

    /* renamed from: a */
    public final String m17365a(double d) {
        String format = this.f21650a.format(d);
        int numericValue = Character.getNumericValue(format.charAt(format.length() - 1));
        String replaceAll = format.replaceAll("E[0-9][0-9]", f21648c[Integer.valueOf(Character.getNumericValue(format.charAt(format.length() - 2)) + "" + numericValue).intValue() / 3]);
        while (true) {
            if (replaceAll.length() <= 5 && !replaceAll.matches("[0-9]+\\.[a-z]")) {
                return replaceAll;
            }
            replaceAll = replaceAll.substring(0, replaceAll.length() - 2) + replaceAll.substring(replaceAll.length() - 1);
        }
    }

    public int getDecimalDigits() {
        return 0;
    }

    @Override // com.github.mikephil.charting.formatter.IValueFormatter
    public String getFormattedValue(float f, Entry entry, int i, ViewPortHandler viewPortHandler) {
        return m17365a(f) + this.f21651b;
    }

    public void setAppendix(String str) {
        this.f21651b = str;
    }

    public void setSuffix(String[] strArr) {
        f21648c = strArr;
    }

    @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
    public String getFormattedValue(float f, AxisBase axisBase) {
        return m17365a(f) + this.f21651b;
    }

    public LargeValueFormatter(String str) {
        this();
        this.f21651b = str;
    }
}
