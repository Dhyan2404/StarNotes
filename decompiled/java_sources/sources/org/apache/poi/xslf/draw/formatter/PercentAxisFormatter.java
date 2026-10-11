package org.apache.poi.xslf.draw.formatter;

import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.List;

/* loaded from: classes13.dex */
public class PercentAxisFormatter extends AxisFormatter {
    private DecimalFormat decimalFormat;

    public PercentAxisFormatter(FormatType formatType) {
        super(formatType);
        this.decimalFormat = new DecimalFormat("##%");
    }

    @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
    public String getFormattedValue(float f, AxisBase axisBase) {
        List<String> list = this.data;
        if (list != null && !list.isEmpty()) {
            int i = (int) f;
            if (i < 0 || i >= this.data.size()) {
                return "";
            }
            return this.decimalFormat.format(new BigDecimal(this.data.get(i)).floatValue() / axisBase.getAxisMaximum());
        }
        return this.decimalFormat.format(f / axisBase.getAxisMaximum());
    }

    public PercentAxisFormatter(List<String> list, FormatType formatType) {
        super(list, formatType);
        this.decimalFormat = new DecimalFormat("##%");
    }

    @Override // com.github.mikephil.charting.formatter.IValueFormatter
    public String getFormattedValue(float f, Entry entry, int i, ViewPortHandler viewPortHandler) {
        return this.decimalFormat.format(f);
    }
}
