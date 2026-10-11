package org.apache.poi.ss.usermodel;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.beans.PropertyChangeSupport;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.format.CellFormat;
import org.apache.poi.ss.format.CellFormatResult;
import org.apache.poi.ss.formula.ConditionalFormattingEvaluator;
import org.apache.poi.ss.util.NumberToTextConverter;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.StringUtil;

/* loaded from: classes13.dex */
public class DataFormatter {
    private static final Logger LOG;
    private static final String defaultFractionFractionPartFormat = "#/##";
    private static final String defaultFractionWholePartFormat = "#";
    private static final String invalidDateTimeString;
    private DateFormatSymbols dateSymbols;
    private DecimalFormatSymbols decimalSymbols;
    private DateFormat defaultDateformat;
    private Format defaultNumFormat;
    private boolean emulateCSV;
    private final Map<String, Format> formats;
    private Format generalNumberFormat;
    private Locale locale;
    private boolean localeIsAdapting;
    private final PropertyChangeSupport pcs;
    private boolean use4DigitYearsInAllDateFormats;
    private boolean useCachedValuesForFormulaCells;
    private static final Pattern numPattern = Pattern.compile("[0#]+");
    private static final Pattern daysAsText = Pattern.compile("([d]{3,})", 2);
    private static final Pattern amPmPattern = Pattern.compile("(([AP])[M/P]*)", 2);
    private static final Pattern rangeConditionalPattern = Pattern.compile(".*\\[\\s*(>|>=|<|<=|=)\\s*[0-9]*\\.*[0-9].*");
    private static final Pattern localePatternGroup = Pattern.compile("(\\[\\$[^-\\]]*-[0-9A-Z]+])");
    private static final Pattern colorPattern = Pattern.compile("(\\[BLACK])|(\\[BLUE])|(\\[CYAN])|(\\[GREEN])|(\\[MAGENTA])|(\\[RED])|(\\[WHITE])|(\\[YELLOW])|(\\[COLOR\\s*\\d])|(\\[COLOR\\s*[0-5]\\d])", 2);
    private static final Pattern fractionPattern = Pattern.compile("(?:([#\\d]+)\\s+)?(#+)\\s*/\\s*([#\\d]+)");
    private static final Pattern fractionStripper = Pattern.compile("(\"[^\"]*\")|([^ ?#\\d/]+)");
    private static final Pattern alternateGrouping = Pattern.compile("([#0]([^.#0])[#0]{3})");

    /* renamed from: org.apache.poi.ss.usermodel.DataFormatter$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198221 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;

        static {
            int[] iArr = new int[CellType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$CellType = iArr;
            try {
                iArr[CellType.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BLANK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public final class CellFormatResultWrapper extends Format {
        private final CellFormatResult result;

        public /* synthetic */ CellFormatResultWrapper(DataFormatter dataFormatter, CellFormatResult cellFormatResult, C198221 c198221) {
            this(cellFormatResult);
        }

        @Override // java.text.Format
        public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
            if (DataFormatter.this.emulateCSV) {
                stringBuffer.append(this.result.text);
                return stringBuffer;
            }
            stringBuffer.append(this.result.text.trim());
            return stringBuffer;
        }

        @Override // java.text.Format
        public Object parseObject(String str, ParsePosition parsePosition) {
            return null;
        }

        private CellFormatResultWrapper(CellFormatResult cellFormatResult) {
            this.result = cellFormatResult;
        }
    }

    /* loaded from: classes13.dex */
    public static final class ConstantStringFormat extends Format {

        /* renamed from: df */
        private static final DecimalFormat f111559df = DataFormatter.createIntegerOnlyFormat("##########");
        private final String str;

        public ConstantStringFormat(String str) {
            this.str = str;
        }

        @Override // java.text.Format
        public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
            stringBuffer.append(this.str);
            return stringBuffer;
        }

        @Override // java.text.Format
        public Object parseObject(String str, ParsePosition parsePosition) {
            return f111559df.parseObject(str, parsePosition);
        }
    }

    /* loaded from: classes13.dex */
    public static class InternalDecimalFormatWithScale extends Format {

        /* renamed from: df */
        private final DecimalFormat f111560df;
        private final BigDecimal divider;
        private static final Pattern endsWithCommas = Pattern.compile("(,+)$");
        private static final BigDecimal ONE_THOUSAND = BigDecimal.valueOf(1000L);

        public InternalDecimalFormatWithScale(String str, DecimalFormatSymbols decimalFormatSymbols) {
            DecimalFormat decimalFormat = new DecimalFormat(trimTrailingCommas(str), decimalFormatSymbols);
            this.f111560df = decimalFormat;
            DataFormatter.setExcelStyleRoundingMode(decimalFormat);
            Matcher matcher = endsWithCommas.matcher(str);
            if (!matcher.find()) {
                this.divider = null;
                return;
            }
            String group = matcher.group(1);
            BigDecimal bigDecimal = BigDecimal.ONE;
            for (int i = 0; i < group.length(); i++) {
                bigDecimal = bigDecimal.multiply(ONE_THOUSAND);
            }
            this.divider = bigDecimal;
        }

        private Object scaleInput(Object obj) {
            BigDecimal bigDecimal = this.divider;
            if (bigDecimal == null) {
                return obj;
            }
            if (obj instanceof BigDecimal) {
                return ((BigDecimal) obj).divide(bigDecimal, RoundingMode.HALF_UP);
            }
            if (obj instanceof Double) {
                return Double.valueOf(((Double) obj).doubleValue() / this.divider.doubleValue());
            }
            throw new UnsupportedOperationException();
        }

        private static String trimTrailingCommas(String str) {
            return str.replaceAll(",+$", "");
        }

        @Override // java.text.Format
        public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
            return this.f111560df.format(scaleInput(obj), stringBuffer, fieldPosition);
        }

        @Override // java.text.Format
        public Object parseObject(String str, ParsePosition parsePosition) {
            throw new UnsupportedOperationException();
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 255; i++) {
            sb.append('#');
        }
        invalidDateTimeString = sb.toString();
        LOG = LogManager.getLogger((Class<?>) DataFormatter.class);
    }

    public DataFormatter() {
        this(false);
    }

    private void checkForLocaleChange() {
        checkForLocaleChange(LocaleUtil.getUserLocale());
    }

    private String cleanFormatForNumber(String str) {
        StringBuilder sb = new StringBuilder(str.replace("\\%", "'%'"));
        int i = 0;
        if (this.emulateCSV) {
            int i2 = 0;
            while (i2 < sb.length()) {
                char charAt = sb.charAt(i2);
                if ((charAt == '_' || charAt == '*' || charAt == '?') && (i2 <= 0 || sb.charAt(i2 - 1) != '\\')) {
                    if (charAt == '?') {
                        sb.setCharAt(i2, ' ');
                    } else if (i2 < sb.length() - 1) {
                        if (charAt == '_') {
                            sb.setCharAt(i2 + 1, ' ');
                        } else {
                            sb.deleteCharAt(i2 + 1);
                        }
                        sb.deleteCharAt(i2);
                        i2--;
                    }
                }
                i2++;
            }
        } else {
            int i3 = 0;
            while (i3 < sb.length()) {
                char charAt2 = sb.charAt(i3);
                if ((charAt2 == '_' || charAt2 == '*') && (i3 <= 0 || sb.charAt(i3 - 1) != '\\')) {
                    if (i3 < sb.length() - 1) {
                        sb.deleteCharAt(i3 + 1);
                    }
                    sb.deleteCharAt(i3);
                    i3--;
                }
                i3++;
            }
        }
        while (i < sb.length()) {
            char charAt3 = sb.charAt(i);
            if (charAt3 == '\\' || charAt3 == '\"') {
                sb.deleteCharAt(i);
            } else {
                if ((charAt3 == '+' || charAt3 == '-') && i > 0 && sb.charAt(i - 1) == 'E') {
                    sb.deleteCharAt(i);
                }
                i++;
            }
            i--;
            i++;
        }
        return sb.toString();
    }

    private Format createDateFormat(String str, double d) {
        int i;
        char c;
        String replace = adjustTo4DigitYearsIfConfigured(str).replace("\\-", "-").replace("\\,", ",").replace("\\.", ".").replace("\\ ", " ").replace("\\/", "/").replace(";@", "").replace("\"/\"", "/").replace("\"\"", CloudStorageConstants.SINGLE_QUOTES).replace("\\T", "'T'");
        Matcher matcher = amPmPattern.matcher(replace);
        boolean z = false;
        boolean z2 = false;
        while (matcher.find()) {
            replace = matcher.replaceAll("@");
            matcher = amPmPattern.matcher(replace);
            z2 = true;
        }
        String replace2 = replace.replace('@', 'a');
        Matcher matcher2 = daysAsText.matcher(replace2);
        if (matcher2.find()) {
            replace2 = matcher2.replaceAll(matcher2.group(0).toUpperCase(Locale.ROOT).replace('D', 'E'));
        }
        StringBuilder sb = new StringBuilder();
        char[] charArray = replace2.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        boolean z3 = false;
        boolean z4 = true;
        while (i2 < charArray.length) {
            char c2 = charArray[i2];
            if (c2 == '\'') {
                sb.append(c2);
                do {
                    i2++;
                    if (i2 >= charArray.length) {
                        break;
                    }
                    c = charArray[i2];
                    sb.append(c);
                } while (c != '\'');
            } else {
                if (c2 == '[' && !z3) {
                    sb.append(c2);
                    z4 = z;
                    i = 1;
                    z3 = true;
                } else if (c2 == ']' && z3) {
                    sb.append(c2);
                    z3 = z;
                } else if (z3) {
                    if (c2 == 'h' || c2 == 'H') {
                        sb.append('H');
                    } else if (c2 == 'm' || c2 == 'M') {
                        sb.append('m');
                    } else if (c2 == 's' || c2 == 'S') {
                        sb.append('s');
                    } else {
                        sb.append(c2);
                    }
                } else if (c2 == 'h' || c2 == 'H') {
                    if (z2) {
                        sb.append('h');
                    } else {
                        sb.append('H');
                    }
                    i = 1;
                    z4 = false;
                } else if (c2 != 'm' && c2 != 'M') {
                    if (c2 == 's' || c2 == 'S') {
                        sb.append('s');
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            int intValue = ((Integer) it2.next()).intValue();
                            if (sb.charAt(intValue) == 'M') {
                                sb.replace(intValue, intValue + 1, "m");
                            }
                        }
                        arrayList.clear();
                    } else if (Character.isLetter(c2)) {
                        arrayList.clear();
                        if (c2 == 'y' || c2 == 'Y') {
                            sb.append('y');
                        } else if (c2 == 'd' || c2 == 'D') {
                            sb.append('d');
                        } else {
                            sb.append(c2);
                        }
                    } else {
                        if (Character.isWhitespace(c2)) {
                            arrayList.clear();
                        }
                        sb.append(c2);
                    }
                    i = 1;
                    z4 = true;
                } else if (z4) {
                    sb.append('M');
                    arrayList.add(Integer.valueOf(sb.length() - 1));
                } else {
                    sb.append('m');
                }
                i2 += i;
                z = false;
            }
            i = 1;
            i2 += i;
            z = false;
        }
        String sb2 = sb.toString();
        try {
            return new ExcelStyleDateFormatter(sb2, this.dateSymbols);
        } catch (IllegalArgumentException e) {
            LOG.atDebug().withThrowable(e).log("Formatting failed for format {}, falling back", sb2);
            return getDefaultFormat(d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DecimalFormat createIntegerOnlyFormat(String str) {
        DecimalFormat decimalFormat = new DecimalFormat(str, DecimalFormatSymbols.getInstance(Locale.ROOT));
        decimalFormat.setParseIntegerOnly(true);
        return decimalFormat;
    }

    private Format createNumberFormat(String str, double d) {
        char charAt;
        String cleanFormatForNumber = cleanFormatForNumber(str);
        DecimalFormatSymbols decimalFormatSymbols = this.decimalSymbols;
        Matcher matcher = alternateGrouping.matcher(cleanFormatForNumber);
        if (matcher.find() && (charAt = matcher.group(2).charAt(0)) != ',') {
            decimalFormatSymbols = DecimalFormatSymbols.getInstance(this.locale);
            decimalFormatSymbols.setGroupingSeparator(charAt);
            String group = matcher.group(1);
            cleanFormatForNumber = cleanFormatForNumber.replace(group, group.replace(charAt, ','));
        }
        try {
            return new InternalDecimalFormatWithScale(cleanFormatForNumber, decimalFormatSymbols);
        } catch (IllegalArgumentException e) {
            LOG.atDebug().withThrowable(e).log("Formatting failed for format {}, falling back", str);
            return getDefaultFormat(d);
        }
    }

    private Format getFormat(Cell cell, ConditionalFormattingEvaluator conditionalFormattingEvaluator) {
        ExcelNumberFormat from;
        if (cell == null || (from = ExcelNumberFormat.from(cell, conditionalFormattingEvaluator)) == null) {
            return null;
        }
        int idx = from.getIdx();
        String format = from.getFormat();
        if (StringUtil.isBlank(format)) {
            return null;
        }
        return getFormat(cell.getNumericCellValue(), idx, format, isDate1904(cell));
    }

    private String getFormattedDateString(Cell cell, ConditionalFormattingEvaluator conditionalFormattingEvaluator) {
        String performDateFormatting;
        if (cell == null) {
            return null;
        }
        Format format = getFormat(cell, conditionalFormattingEvaluator);
        if (format == null) {
            if (this.defaultDateformat == null) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", DateFormatSymbols.getInstance(LocaleUtil.getUserLocale()));
                simpleDateFormat.setTimeZone(LocaleUtil.getUserTimeZone());
                format = simpleDateFormat;
            } else {
                format = this.defaultNumFormat;
            }
        }
        synchronized (format) {
            if (format instanceof ExcelStyleDateFormatter) {
                ((ExcelStyleDateFormatter) format).setDateToBeFormatted(cell.getNumericCellValue());
            }
            performDateFormatting = performDateFormatting(cell.getDateCellValue(), format);
        }
        return performDateFormatting;
    }

    private String getFormattedNumberString(Cell cell, ConditionalFormattingEvaluator conditionalFormattingEvaluator) {
        String format;
        if (cell == null) {
            return null;
        }
        Format format2 = getFormat(cell, conditionalFormattingEvaluator);
        double numericCellValue = cell.getNumericCellValue();
        if (format2 == null) {
            return Double.toString(numericCellValue);
        }
        try {
            format = format2.format(BigDecimal.valueOf(numericCellValue));
        } catch (NumberFormatException unused) {
            format = format2.format(Double.valueOf(numericCellValue));
        }
        return format.replaceFirst("E(\\d)", "E+$1");
    }

    private boolean isDate1904(Cell cell) {
        if (cell == null || !(cell.getSheet().getWorkbook() instanceof Date1904Support)) {
            return false;
        }
        return ((Date1904Support) cell.getSheet().getWorkbook()).isDate1904();
    }

    private String performDateFormatting(Date date, Format format) {
        String format2;
        if (format == null) {
            format = this.defaultDateformat;
        }
        synchronized (format) {
            format2 = format.format(date);
        }
        return format2;
    }

    public static void setExcelStyleRoundingMode(DecimalFormat decimalFormat) {
        setExcelStyleRoundingMode(decimalFormat, RoundingMode.HALF_UP);
    }

    public void addFormat(String str, Format format) {
        this.formats.put(str, format);
    }

    public String adjustTo4DigitYearsIfConfigured(String str) {
        int indexOf;
        if (!this.use4DigitYearsInAllDateFormats || (indexOf = str.indexOf("yy")) < 0) {
            return str;
        }
        int indexOf2 = str.indexOf("yyy");
        if (str.indexOf("yyyy") == indexOf) {
            int i = indexOf + 4;
            return str.substring(0, i) + adjustTo4DigitYearsIfConfigured(str.substring(i));
        }
        if (indexOf2 == indexOf) {
            return str;
        }
        int i2 = indexOf + 2;
        return str.substring(0, i2) + "yy" + adjustTo4DigitYearsIfConfigured(str.substring(i2));
    }

    public Format createFormat(Cell cell) {
        return createFormat(cell.getNumericCellValue(), cell.getCellStyle().getDataFormat(), cell.getCellStyle().getDataFormatString());
    }

    public String formatCellValue(Cell cell) {
        return formatCellValue(cell, null);
    }

    public String formatRawCellContents(double d, int i, String str) {
        return formatRawCellContents(d, i, str, false);
    }

    public Format getDefaultFormat(Cell cell) {
        return getDefaultFormat(cell.getNumericCellValue());
    }

    public PropertyChangeSupport getLocaleChangedObservable() {
        return this.pcs;
    }

    public boolean isEmulateCSV() {
        return this.emulateCSV;
    }

    public void setDefaultNumberFormat(Format format) {
        for (Map.Entry<String, Format> entry : this.formats.entrySet()) {
            if (entry.getValue() == this.generalNumberFormat) {
                entry.setValue(format);
            }
        }
        this.defaultNumFormat = format;
    }

    public void setEmulateCSV(boolean z) {
        this.emulateCSV = z;
    }

    public void setUse4DigitYearsInAllDateFormats(boolean z) {
        this.use4DigitYearsInAllDateFormats = z;
    }

    public void setUseCachedValuesForFormulaCells(boolean z) {
        this.useCachedValuesForFormulaCells = z;
    }

    public void updateLocale(Locale locale) {
        if (!this.localeIsAdapting || locale.equals(this.locale)) {
            return;
        }
        this.locale = locale;
        this.dateSymbols = DateFormatSymbols.getInstance(locale);
        this.decimalSymbols = DecimalFormatSymbols.getInstance(this.locale);
        this.generalNumberFormat = new ExcelGeneralNumberFormat(this.locale);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", this.dateSymbols);
        this.defaultDateformat = simpleDateFormat;
        simpleDateFormat.setTimeZone(LocaleUtil.getUserTimeZone());
        this.formats.clear();
        Format format = ZipPlusFourFormat.instance;
        addFormat("00000\\-0000", format);
        addFormat("00000-0000", format);
        Format format2 = PhoneFormat.instance;
        addFormat("[<=9999999]###\\-####;\\(###\\)\\ ###\\-####", format2);
        addFormat("[<=9999999]###-####;(###) ###-####", format2);
        addFormat("###\\-####;\\(###\\)\\ ###\\-####", format2);
        addFormat("###-####;(###) ###-####", format2);
        Format format3 = SSNFormat.instance;
        addFormat("000\\-00\\-0000", format3);
        addFormat("000-00-0000", format3);
    }

    public boolean use4DigitYearsInAllDateFormats() {
        return this.use4DigitYearsInAllDateFormats;
    }

    public boolean useCachedValuesForFormulaCells() {
        return this.useCachedValuesForFormulaCells;
    }

    public DataFormatter(boolean z) {
        this(LocaleUtil.getUserLocale(), true, z);
    }

    private void checkForLocaleChange(Locale locale) {
        if (this.localeIsAdapting && !locale.equals(this.locale)) {
            updateLocale(locale);
            this.pcs.firePropertyChange("locale", this.locale, locale);
        }
    }

    private Format getDefaultFormat(double d) {
        checkForLocaleChange();
        Format format = this.defaultNumFormat;
        return format != null ? format : this.generalNumberFormat;
    }

    public static void setExcelStyleRoundingMode(DecimalFormat decimalFormat, RoundingMode roundingMode) {
        decimalFormat.setRoundingMode(roundingMode);
    }

    public String formatCellValue(Cell cell, FormulaEvaluator formulaEvaluator) {
        return formatCellValue(cell, formulaEvaluator, null);
    }

    public String formatRawCellContents(double d, int i, String str, boolean z) {
        String format;
        checkForLocaleChange();
        if (DateUtil.isADateFormat(i, str)) {
            if (DateUtil.isValidExcelDate(d)) {
                Format format2 = getFormat(d, i, str, z);
                if (format2 instanceof ExcelStyleDateFormatter) {
                    ((ExcelStyleDateFormatter) format2).setDateToBeFormatted(d);
                }
                return performDateFormatting(DateUtil.getJavaDate(d, z), format2);
            }
            if (this.emulateCSV) {
                return invalidDateTimeString;
            }
        }
        Format format3 = getFormat(d, i, str, z);
        if (format3 == null) {
            return String.valueOf(d);
        }
        String text = NumberToTextConverter.toText(d);
        if (text.indexOf(69) > -1) {
            format = format3.format(Double.valueOf(d));
        } else {
            format = format3.format(new BigDecimal(text));
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        return ((lowerCase.contains("general") || lowerCase.contains("e+0")) && format.contains("E") && !format.contains("E-")) ? format.replaceFirst("E", "E+") : format;
    }

    /* loaded from: classes13.dex */
    public static final class ZipPlusFourFormat extends Format {
        public static final Format instance = new ZipPlusFourFormat();

        /* renamed from: df */
        private static final DecimalFormat f111563df = DataFormatter.createIntegerOnlyFormat("000000000");

        private ZipPlusFourFormat() {
        }

        public static String format(Number number) {
            String format = f111563df.format(number);
            return format.substring(0, 5) + '-' + format.substring(5, 9);
        }

        @Override // java.text.Format
        public Object parseObject(String str, ParsePosition parsePosition) {
            return f111563df.parseObject(str, parsePosition);
        }

        @Override // java.text.Format
        public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
            stringBuffer.append(format((Number) obj));
            return stringBuffer;
        }
    }

    public DataFormatter(Locale locale) {
        this(locale, false);
    }

    public String formatCellValue(Cell cell, FormulaEvaluator formulaEvaluator, ConditionalFormattingEvaluator conditionalFormattingEvaluator) {
        checkForLocaleChange();
        if (cell == null) {
            return "";
        }
        CellType cellType = cell.getCellType();
        if (cellType == CellType.FORMULA) {
            if (formulaEvaluator == null) {
                if (this.useCachedValuesForFormulaCells) {
                    try {
                        cellType = cell.getCachedFormulaResultType();
                    } catch (Exception unused) {
                        return cell.getCellFormula();
                    }
                } else {
                    return cell.getCellFormula();
                }
            } else {
                cellType = formulaEvaluator.evaluateFormulaCell(cell);
            }
        }
        int i = C198221.$SwitchMap$org$apache$poi$ss$usermodel$CellType[cellType.ordinal()];
        if (i == 1) {
            if (DateUtil.isCellDateFormatted(cell, conditionalFormattingEvaluator)) {
                return getFormattedDateString(cell, conditionalFormattingEvaluator);
            }
            return getFormattedNumberString(cell, conditionalFormattingEvaluator);
        }
        if (i == 2) {
            return cell.getRichStringCellValue().getString();
        }
        if (i == 3) {
            return cell.getBooleanCellValue() ? "TRUE" : "FALSE";
        }
        if (i == 4) {
            return "";
        }
        if (i == 5) {
            return FormulaError.forInt(cell.getErrorCellValue()).getString();
        }
        throw new IllegalStateException("Unexpected celltype (" + cellType + MotionUtils.f31762d);
    }

    /* loaded from: classes13.dex */
    public static final class SSNFormat extends Format {
        public static final Format instance = new SSNFormat();

        /* renamed from: df */
        private static final DecimalFormat f111562df = DataFormatter.createIntegerOnlyFormat("000000000");

        private SSNFormat() {
        }

        public static String format(Number number) {
            String format = f111562df.format(number);
            return format.substring(0, 3) + '-' + format.substring(3, 5) + '-' + format.substring(5, 9);
        }

        @Override // java.text.Format
        public Object parseObject(String str, ParsePosition parsePosition) {
            return f111562df.parseObject(str, parsePosition);
        }

        @Override // java.text.Format
        public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
            stringBuffer.append(format((Number) obj));
            return stringBuffer;
        }
    }

    public DataFormatter(Locale locale, boolean z) {
        this(locale, false, z);
    }

    private Format createFormat(double d, int i, String str) {
        String group;
        int indexOf;
        checkForLocaleChange();
        int i2 = 0;
        if (str != null) {
            Matcher matcher = colorPattern.matcher(str);
            while (matcher.find() && (indexOf = str.indexOf((group = matcher.group()))) != -1) {
                String str2 = str.substring(0, indexOf) + str.substring(indexOf + group.length());
                if (str2.equals(str)) {
                    break;
                }
                matcher = colorPattern.matcher(str2);
                str = str2;
            }
        }
        if (str != null) {
            Matcher matcher2 = localePatternGroup.matcher(str);
            while (matcher2.find()) {
                String group2 = matcher2.group();
                String substring = group2.substring(group2.indexOf(36) + 1, group2.indexOf(45));
                if (substring.indexOf(36) > -1) {
                    substring = substring.substring(0, substring.indexOf(36)) + '\\' + substring.substring(substring.indexOf(36));
                }
                str = matcher2.replaceAll(substring);
                matcher2 = localePatternGroup.matcher(str);
            }
        }
        if (StringUtil.isBlank(str)) {
            return getDefaultFormat(d);
        }
        if (!"General".equalsIgnoreCase(str) && !"@".equals(str)) {
            if (DateUtil.isADateFormat(i, str) && DateUtil.isValidExcelDate(d)) {
                return createDateFormat(str, d);
            }
            if (!str.contains("#/") && !str.contains("?/")) {
                if (numPattern.matcher(str).find()) {
                    return createNumberFormat(str, d);
                }
                if (this.emulateCSV) {
                    return new ConstantStringFormat(cleanFormatForNumber(str));
                }
                return null;
            }
            String[] split = str.split(AndroidTreeView.f47214k);
            int length = split.length;
            while (true) {
                if (i2 < length) {
                    Matcher matcher3 = fractionPattern.matcher(fractionStripper.matcher(split[i2].replace("?", "#")).replaceAll(" ").replaceAll(" +", " "));
                    if (matcher3.find()) {
                        return new FractionFormat(matcher3.group(1) == null ? "" : "#", matcher3.group(3));
                    }
                    i2++;
                } else {
                    return new FractionFormat("#", defaultFractionFractionPartFormat);
                }
            }
        } else {
            return this.generalNumberFormat;
        }
    }

    public DataFormatter(Locale locale, boolean z, boolean z2) {
        this.formats = new HashMap();
        this.emulateCSV = false;
        this.use4DigitYearsInAllDateFormats = false;
        this.useCachedValuesForFormulaCells = false;
        this.localeIsAdapting = true;
        this.pcs = new PropertyChangeSupport(this);
        checkForLocaleChange(locale);
        this.localeIsAdapting = z;
        this.emulateCSV = z2;
    }

    private Format getFormat(double d, int i, String str, boolean z) {
        Object valueOf;
        if (str != null) {
            checkForLocaleChange();
            String replace = str.replace("\\%", "'%'");
            if (replace.contains(AndroidTreeView.f47214k) && (replace.indexOf(59) != replace.lastIndexOf(59) || rangeConditionalPattern.matcher(replace).matches())) {
                try {
                    CellFormat cellFormat = CellFormat.getInstance(this.locale, replace);
                    if (d != 0.0d && DateUtil.isADateFormat(i, replace)) {
                        valueOf = DateUtil.getJavaDate(d, z);
                    } else {
                        valueOf = Double.valueOf(d);
                    }
                    return new CellFormatResultWrapper(this, cellFormat.apply(valueOf), null);
                } catch (Exception e) {
                    LOG.atWarn().withThrowable(e).log("Formatting failed for format {}, falling back", replace);
                }
            }
            if (this.emulateCSV && d == 0.0d && replace.contains("#") && !replace.contains("0")) {
                replace = replace.replace("#", "");
            }
            Format format = this.formats.get(replace);
            if (format != null) {
                return format;
            }
            if (!"General".equalsIgnoreCase(replace) && !"@".equals(replace)) {
                Format createFormat = createFormat(d, i, replace);
                this.formats.put(replace, createFormat);
                return createFormat;
            }
            return this.generalNumberFormat;
        }
        throw new IllegalArgumentException("Missing input format for value " + d + " and index " + i);
    }

    /* loaded from: classes13.dex */
    public static final class PhoneFormat extends Format {
        public static final Format instance = new PhoneFormat();

        /* renamed from: df */
        private static final DecimalFormat f111561df = DataFormatter.createIntegerOnlyFormat("##########");

        private PhoneFormat() {
        }

        public static String format(Number number) {
            String format = f111561df.format(number);
            StringBuilder sb = new StringBuilder();
            int length = format.length();
            if (length <= 4) {
                return format;
            }
            int i = length - 4;
            String substring = format.substring(i, length);
            int i2 = length - 7;
            String substring2 = format.substring(Math.max(0, i2), i);
            String substring3 = format.substring(Math.max(0, length - 10), Math.max(0, i2));
            if (StringUtil.isNotBlank(substring3)) {
                sb.append('(');
                sb.append(substring3);
                sb.append(") ");
            }
            if (StringUtil.isNotBlank(substring2)) {
                sb.append(substring2);
                sb.append('-');
            }
            sb.append(substring);
            return sb.toString();
        }

        @Override // java.text.Format
        public Object parseObject(String str, ParsePosition parsePosition) {
            return f111561df.parseObject(str, parsePosition);
        }

        @Override // java.text.Format
        public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
            stringBuffer.append(format((Number) obj));
            return stringBuffer;
        }
    }
}
