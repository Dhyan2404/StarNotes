package org.apache.poi.xslf.draw.formatter;

import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes13.dex */
public class DateAxisFormatter extends AxisFormatter {
    private SimpleDateFormat dateFormat;
    private DecimalFormat decimalFormat;

    public DateAxisFormatter(FormatType formatType) {
        super(formatType);
        this.decimalFormat = new DecimalFormat("###,###,###.#");
        this.dateFormat = new SimpleDateFormat("yyyy/M/d");
    }

    @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
    public String getFormattedValue(float f, AxisBase axisBase) {
        List<String> list = this.data;
        if (list != null && !list.isEmpty()) {
            int i = (int) f;
            if (i < 0 || i >= this.data.size()) {
                return "";
            }
            String str = this.data.get(i);
            Calendar localeCalendar = LocaleUtil.getLocaleCalendar(1900, 0, 0);
            localeCalendar.add(6, new BigDecimal(str).intValue() - 1);
            return this.dateFormat.format(localeCalendar.getTime());
        }
        return this.decimalFormat.format(f);
    }

    public DateAxisFormatter(List<String> list, FormatType formatType) {
        super(list, formatType);
        this.decimalFormat = new DecimalFormat("###,###,###.#");
        this.dateFormat = new SimpleDateFormat("yyyy/M/d");
    }

    @Override // com.github.mikephil.charting.formatter.IValueFormatter
    public String getFormattedValue(float f, Entry entry, int i, ViewPortHandler viewPortHandler) {
        Calendar localeCalendar = LocaleUtil.getLocaleCalendar(1900, 0, 0);
        localeCalendar.add(6, ((int) f) - 1);
        return this.dateFormat.format(localeCalendar.getTime());
    }
}
