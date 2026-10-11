package org.apache.poi.xslf.draw.formatter;

import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.text.DecimalFormat;
import java.util.List;

/* loaded from: classes13.dex */
public class NormalAxisFormatter extends AxisFormatter {
    private DecimalFormat decimalFormat;

    public NormalAxisFormatter(FormatType formatType) {
        super(formatType);
        this.decimalFormat = new DecimalFormat("###,###,###.#");
    }

    @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
    public String getFormattedValue(float f, AxisBase axisBase) {
        List<String> list = this.data;
        if (list == null || list.isEmpty()) {
            return this.decimalFormat.format(f);
        }
        int i = (int) f;
        return (i < 0 || i >= this.data.size()) ? "" : this.data.get(i);
    }

    public NormalAxisFormatter(List<String> list, FormatType formatType) {
        super(list, formatType);
        this.decimalFormat = new DecimalFormat("###,###,###.#");
    }

    @Override // com.github.mikephil.charting.formatter.IValueFormatter
    public String getFormattedValue(float f, Entry entry, int i, ViewPortHandler viewPortHandler) {
        return this.decimalFormat.format(f);
    }
}
