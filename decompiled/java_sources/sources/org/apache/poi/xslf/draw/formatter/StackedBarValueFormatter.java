package org.apache.poi.xslf.draw.formatter;

import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.utils.ViewPortHandler;

/* loaded from: classes13.dex */
public class StackedBarValueFormatter implements IValueFormatter {
    private boolean[] drawVals;
    private IValueFormatter formatter;

    public StackedBarValueFormatter(IValueFormatter iValueFormatter, boolean[] zArr) {
        this.formatter = iValueFormatter;
        this.drawVals = zArr;
    }

    private int getValueIndex(float f, Entry entry) {
        if (entry instanceof BarEntry) {
            float[] yVals = ((BarEntry) entry).getYVals();
            for (int i = 0; i < yVals.length; i++) {
                if (Float.compare(yVals[i], f) == 0) {
                    return i;
                }
            }
        }
        return 0;
    }

    @Override // com.github.mikephil.charting.formatter.IValueFormatter
    public String getFormattedValue(float f, Entry entry, int i, ViewPortHandler viewPortHandler) {
        return !this.drawVals[getValueIndex(f, entry)] ? "" : this.formatter.getFormattedValue(f, entry, i, viewPortHandler);
    }
}
