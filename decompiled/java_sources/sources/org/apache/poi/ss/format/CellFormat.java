package org.apache.poi.ss.format;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.awt.Color;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JLabel;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.format.CellFormat;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes13.dex */
public class CellFormat {
    private static final String INVALID_VALUE_FOR_FORMAT = "###############################################################################################################################################################################################################################################################";
    private static final String QUOTE = "\"";
    private final String format;
    private final int formatPartCount;
    private final Locale locale;
    private final CellFormatPart negNumFmt;
    private final CellFormatPart posNumFmt;
    private final CellFormatPart textFmt;
    private final CellFormatPart zeroNumFmt;
    private static final Logger LOG = LogManager.getLogger((Class<?>) CellFormat.class);
    private static final Pattern ONE_PART = Pattern.compile(CellFormatPart.FORMAT_PAT.pattern() + "(;|$)", 6);
    private static final Map<Locale, Map<String, CellFormat>> formatCache = new WeakHashMap();

    /* renamed from: org.apache.poi.ss.format.CellFormat$2 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C196512 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;

        static {
            int[] iArr = new int[CellType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$CellType = iArr;
            try {
                iArr[CellType.BLANK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.STRING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static CellFormat createGeneralFormat(final Locale locale) {
        return new CellFormat(locale, "General") { // from class: org.apache.poi.ss.format.CellFormat.1
            @Override // org.apache.poi.ss.format.CellFormat
            public CellFormatResult apply(Object obj) {
                return new CellFormatResult(true, new CellGeneralFormatter(locale).format(obj), null);
            }
        };
    }

    private CellFormatPart getApplicableFormatPart(Object obj) {
        if (!(obj instanceof Number)) {
            throw new IllegalArgumentException("value must be a Number");
        }
        double doubleValue = ((Number) obj).doubleValue();
        int i = this.formatPartCount;
        return i == 1 ? (!this.posNumFmt.hasCondition() || (this.posNumFmt.hasCondition() && this.posNumFmt.applies(Double.valueOf(doubleValue)))) ? this.posNumFmt : new CellFormatPart(this.locale, "General") : i == 2 ? ((this.posNumFmt.hasCondition() || doubleValue < 0.0d) && !(this.posNumFmt.hasCondition() && this.posNumFmt.applies(Double.valueOf(doubleValue)))) ? (!this.negNumFmt.hasCondition() || (this.negNumFmt.hasCondition() && this.negNumFmt.applies(Double.valueOf(doubleValue)))) ? this.negNumFmt : new CellFormatPart("\"###############################################################################################################################################################################################################################################################\"") : this.posNumFmt : ((this.posNumFmt.hasCondition() || doubleValue <= 0.0d) && !(this.posNumFmt.hasCondition() && this.posNumFmt.applies(Double.valueOf(doubleValue)))) ? ((this.negNumFmt.hasCondition() || doubleValue >= 0.0d) && !(this.negNumFmt.hasCondition() && this.negNumFmt.applies(Double.valueOf(doubleValue)))) ? this.zeroNumFmt : this.negNumFmt : this.posNumFmt;
    }

    public static CellFormat getInstance(String str) {
        return getInstance(LocaleUtil.getUserLocale(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Map lambda$getInstance$0(Locale locale) {
        return new WeakHashMap();
    }

    public static CellType ultimateType(Cell cell) {
        CellType cellType = cell.getCellType();
        return cellType == CellType.FORMULA ? cell.getCachedFormulaResultType() : cellType;
    }

    public CellFormatResult apply(Object obj) {
        if (obj instanceof Number) {
            double doubleValue = ((Number) obj).doubleValue();
            if (doubleValue < 0.0d && ((this.formatPartCount == 2 && !this.posNumFmt.hasCondition() && !this.negNumFmt.hasCondition()) || ((this.formatPartCount == 3 && !this.negNumFmt.hasCondition()) || (this.formatPartCount == 4 && !this.negNumFmt.hasCondition())))) {
                return this.negNumFmt.apply(Double.valueOf(-doubleValue));
            }
            return getApplicableFormatPart(Double.valueOf(doubleValue)).apply(Double.valueOf(doubleValue));
        }
        if (obj instanceof Date) {
            double excelDate = DateUtil.getExcelDate((Date) obj);
            if (DateUtil.isValidExcelDate(excelDate)) {
                return getApplicableFormatPart(Double.valueOf(excelDate)).apply(obj);
            }
            throw new IllegalArgumentException("value " + excelDate + " of date " + obj + " is not a valid Excel date");
        }
        return this.textFmt.apply(obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CellFormat) {
            return this.format.equals(((CellFormat) obj).format);
        }
        return false;
    }

    public int hashCode() {
        return this.format.hashCode();
    }

    private CellFormat(Locale locale, String str) {
        this.locale = locale;
        this.format = str;
        CellFormatPart cellFormatPart = new CellFormatPart(locale, "@");
        Matcher matcher = ONE_PART.matcher(str);
        ArrayList arrayList = new ArrayList();
        while (matcher.find()) {
            try {
                String group = matcher.group();
                arrayList.add(new CellFormatPart(locale, group.endsWith(AndroidTreeView.f47214k) ? group.substring(0, group.length() - 1) : group));
            } catch (RuntimeException e) {
                LOG.log(Level.WARN, "Invalid format: " + CellFormatter.quote(matcher.group()), (Throwable) e);
                arrayList.add(null);
            }
        }
        int size = arrayList.size();
        this.formatPartCount = size;
        if (size == 1) {
            this.posNumFmt = (CellFormatPart) arrayList.get(0);
            this.negNumFmt = null;
            this.zeroNumFmt = null;
            this.textFmt = cellFormatPart;
            return;
        }
        if (size == 2) {
            this.posNumFmt = (CellFormatPart) arrayList.get(0);
            this.negNumFmt = (CellFormatPart) arrayList.get(1);
            this.zeroNumFmt = null;
            this.textFmt = cellFormatPart;
            return;
        }
        if (size != 3) {
            this.posNumFmt = (CellFormatPart) arrayList.get(0);
            this.negNumFmt = (CellFormatPart) arrayList.get(1);
            this.zeroNumFmt = (CellFormatPart) arrayList.get(2);
            this.textFmt = (CellFormatPart) arrayList.get(3);
            return;
        }
        this.posNumFmt = (CellFormatPart) arrayList.get(0);
        this.negNumFmt = (CellFormatPart) arrayList.get(1);
        this.zeroNumFmt = (CellFormatPart) arrayList.get(2);
        this.textFmt = cellFormatPart;
    }

    public static synchronized CellFormat getInstance(Locale locale, String str) {
        CellFormat cellFormat;
        synchronized (CellFormat.class) {
            Map<String, CellFormat> computeIfAbsent = formatCache.computeIfAbsent(locale, new Function() { // from class: com.sunia.HTREnginev2.xod
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Map lambda$getInstance$0;
                    lambda$getInstance$0 = CellFormat.lambda$getInstance$0((Locale) obj);
                    return lambda$getInstance$0;
                }
            });
            cellFormat = computeIfAbsent.get(str);
            if (cellFormat == null) {
                if (!str.equals("General") && !str.equals("@")) {
                    cellFormat = new CellFormat(locale, str);
                    computeIfAbsent.put(str, cellFormat);
                }
                cellFormat = createGeneralFormat(locale);
                computeIfAbsent.put(str, cellFormat);
            }
        }
        return cellFormat;
    }

    private CellFormatResult apply(Date date, double d) {
        return getApplicableFormatPart(Double.valueOf(d)).apply(date);
    }

    public CellFormatResult apply(Cell cell) {
        int i = C196512.$SwitchMap$org$apache$poi$ss$usermodel$CellType[ultimateType(cell).ordinal()];
        if (i == 1) {
            return apply("");
        }
        if (i == 2) {
            return apply(Boolean.valueOf(cell.getBooleanCellValue()));
        }
        if (i != 3) {
            if (i != 4) {
                return apply("?");
            }
            return apply(cell.getStringCellValue());
        }
        double numericCellValue = cell.getNumericCellValue();
        if (getApplicableFormatPart(Double.valueOf(numericCellValue)).getCellFormatType() == CellFormatType.DATE) {
            if (DateUtil.isValidExcelDate(numericCellValue)) {
                return apply(cell.getDateCellValue(), numericCellValue);
            }
            return apply(INVALID_VALUE_FOR_FORMAT);
        }
        return apply(Double.valueOf(numericCellValue));
    }

    public CellFormatResult apply(JLabel jLabel, Object obj) {
        CellFormatResult apply = apply(obj);
        jLabel.setText(apply.text);
        Color color = apply.textColor;
        if (color != null) {
            jLabel.setForeground(color);
        }
        return apply;
    }

    private CellFormatResult apply(JLabel jLabel, Date date, double d) {
        CellFormatResult apply = apply(date, d);
        jLabel.setText(apply.text);
        Color color = apply.textColor;
        if (color != null) {
            jLabel.setForeground(color);
        }
        return apply;
    }

    public CellFormatResult apply(JLabel jLabel, Cell cell) {
        int i = C196512.$SwitchMap$org$apache$poi$ss$usermodel$CellType[ultimateType(cell).ordinal()];
        if (i == 1) {
            return apply(jLabel, "");
        }
        if (i == 2) {
            return apply(jLabel, Boolean.valueOf(cell.getBooleanCellValue()));
        }
        if (i != 3) {
            if (i != 4) {
                return apply(jLabel, "?");
            }
            return apply(jLabel, cell.getStringCellValue());
        }
        double numericCellValue = cell.getNumericCellValue();
        if (getApplicableFormatPart(Double.valueOf(numericCellValue)).getCellFormatType() == CellFormatType.DATE) {
            if (DateUtil.isValidExcelDate(numericCellValue)) {
                return apply(jLabel, cell.getDateCellValue(), numericCellValue);
            }
            return apply(jLabel, INVALID_VALUE_FOR_FORMAT);
        }
        return apply(jLabel, Double.valueOf(numericCellValue));
    }
}
