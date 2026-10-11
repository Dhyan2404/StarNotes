package org.apache.poi.ss.usermodel;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.util.Locale;

/* loaded from: classes13.dex */
public class ExcelGeneralNumberFormat extends Format {
    private static final MathContext TO_10_SF = new MathContext(10, RoundingMode.HALF_UP);
    private static final long serialVersionUID = 1;
    private final DecimalFormat decimalFormat;
    private final DecimalFormatSymbols decimalSymbols;
    private final DecimalFormat integerFormat;
    private final DecimalFormat scientificFormat;

    public ExcelGeneralNumberFormat(Locale locale) {
        DecimalFormatSymbols decimalFormatSymbols = DecimalFormatSymbols.getInstance(locale);
        this.decimalSymbols = decimalFormatSymbols;
        DecimalFormat decimalFormat = new DecimalFormat("0.#####E0", decimalFormatSymbols);
        this.scientificFormat = decimalFormat;
        DataFormatter.setExcelStyleRoundingMode(decimalFormat);
        DecimalFormat decimalFormat2 = new DecimalFormat("#", decimalFormatSymbols);
        this.integerFormat = decimalFormat2;
        DataFormatter.setExcelStyleRoundingMode(decimalFormat2);
        DecimalFormat decimalFormat3 = new DecimalFormat("#.##########", decimalFormatSymbols);
        this.decimalFormat = decimalFormat3;
        DataFormatter.setExcelStyleRoundingMode(decimalFormat3);
    }

    @Override // java.text.Format
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (!(obj instanceof Number)) {
            return this.integerFormat.format(obj, stringBuffer, fieldPosition);
        }
        double doubleValue = ((Number) obj).doubleValue();
        if (Double.isInfinite(doubleValue) || Double.isNaN(doubleValue)) {
            return this.integerFormat.format(obj, stringBuffer, fieldPosition);
        }
        double abs = Math.abs(doubleValue);
        if (abs >= 1.0E11d || (abs <= 1.0E-10d && abs > 0.0d)) {
            return this.scientificFormat.format(obj, stringBuffer, fieldPosition);
        }
        if (Math.floor(doubleValue) == doubleValue || abs >= 1.0E10d) {
            return this.integerFormat.format(obj, stringBuffer, fieldPosition);
        }
        return this.decimalFormat.format(BigDecimal.valueOf(doubleValue).round(TO_10_SF).doubleValue(), stringBuffer, fieldPosition);
    }

    @Override // java.text.Format
    public Object parseObject(String str, ParsePosition parsePosition) {
        throw new UnsupportedOperationException();
    }
}
