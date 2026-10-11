package org.apache.poi.ss.format;

import com.miui.penengine.p015e.C6997f;
import java.text.AttributedCharacterIterator;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Formatter;
import java.util.Locale;
import java.util.regex.Matcher;
import org.apache.poi.ss.format.CellFormatPart;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.StringUtil;

/* loaded from: classes13.dex */
public class CellDateFormatter extends CellFormatter {
    private static final Calendar EXCEL_EPOCH_CAL = LocaleUtil.getLocaleCalendar(1904, 0, 1);
    private static final int NUM_MILLISECONDS_IN_DAY = 86400000;
    private static CellDateFormatter SIMPLE_DATE_FORMATTER;
    private boolean amPmUpper;
    private final DateFormat dateFmt;
    private String sFmt;
    private boolean showAmPm;
    private boolean showM;

    /* loaded from: classes13.dex */
    public class DatePartHandler implements CellFormatPart.PartHandler {
        private int hLen;
        private int mLen;
        private int mStart = -1;
        private int hStart = -1;

        public DatePartHandler() {
        }

        public void finish(StringBuffer stringBuffer) {
            if (this.hStart < 0 || CellDateFormatter.this.showAmPm) {
                return;
            }
            for (int i = 0; i < this.hLen; i++) {
                stringBuffer.setCharAt(this.hStart + i, 'H');
            }
        }

        @Override // org.apache.poi.ss.format.CellFormatPart.PartHandler
        public String handlePart(Matcher matcher, String str, CellFormatType cellFormatType, StringBuffer stringBuffer) {
            int length = stringBuffer.length();
            switch (str.charAt(0)) {
                case '0':
                    this.mStart = -1;
                    int length2 = str.length();
                    CellDateFormatter.this.sFmt = "%0" + (length2 + 2) + "." + length2 + C6997f.f39671c;
                    return str.replace('0', 'S');
                case 'A':
                case 'P':
                case 'a':
                case 'p':
                    if (str.length() <= 1) {
                        return null;
                    }
                    this.mStart = -1;
                    CellDateFormatter.this.showAmPm = true;
                    CellDateFormatter.this.showM = StringUtil.toLowerCase(str.charAt(1)).equals("m");
                    CellDateFormatter cellDateFormatter = CellDateFormatter.this;
                    cellDateFormatter.amPmUpper = cellDateFormatter.showM || StringUtil.isUpperCase(str.charAt(0));
                    return "a";
                case 'D':
                case 'd':
                    this.mStart = -1;
                    return str.length() <= 2 ? str.toLowerCase(Locale.ROOT) : str.toLowerCase(Locale.ROOT).replace('d', 'E');
                case 'H':
                case 'h':
                    this.mStart = -1;
                    this.hStart = length;
                    this.hLen = str.length();
                    return str.toLowerCase(Locale.ROOT);
                case 'M':
                case 'm':
                    this.mStart = length;
                    this.mLen = str.length();
                    return this.hStart >= 0 ? str.toLowerCase(Locale.ROOT) : str.toUpperCase(Locale.ROOT);
                case 'S':
                case 's':
                    if (this.mStart >= 0) {
                        for (int i = 0; i < this.mLen; i++) {
                            stringBuffer.setCharAt(this.mStart + i, 'm');
                        }
                        this.mStart = -1;
                    }
                    return str.toLowerCase(Locale.ROOT);
                case 'Y':
                case 'y':
                    this.mStart = -1;
                    if (str.length() == 1) {
                        str = "yy";
                    } else if (str.length() == 3) {
                        str = "yyyy";
                    }
                    return str.toLowerCase(Locale.ROOT);
                default:
                    return null;
            }
        }

        public void updatePositions(int i, int i2) {
            int i3 = this.hStart;
            if (i < i3) {
                this.hStart = i3 + i2;
            }
            int i4 = this.mStart;
            if (i < i4) {
                this.mStart = i4 + i2;
            }
        }
    }

    public CellDateFormatter(String str) {
        this(LocaleUtil.getUserLocale(), str);
    }

    @Override // org.apache.poi.ss.format.CellFormatter
    public synchronized void formatValue(StringBuffer stringBuffer, Object obj) {
        Object valueOf = obj == null ? Double.valueOf(0.0d) : obj;
        if (valueOf instanceof Number) {
            double round = Math.round(((Number) valueOf).doubleValue() * 8.64E7d);
            if (round == 0.0d) {
                valueOf = EXCEL_EPOCH_CAL.getTime();
            } else {
                Calendar calendar = (Calendar) EXCEL_EPOCH_CAL.clone();
                calendar.add(13, (int) (this.sFmt == null ? Math.round(round / 1000.0d) : round / 1000.0d));
                calendar.add(14, (int) (round % 1000.0d));
                valueOf = calendar.getTime();
            }
        }
        AttributedCharacterIterator formatToCharacterIterator = this.dateFmt.formatToCharacterIterator(valueOf);
        boolean z = false;
        boolean z2 = false;
        for (char first = formatToCharacterIterator.first(); first != 65535; first = formatToCharacterIterator.next()) {
            if (formatToCharacterIterator.getAttribute(DateFormat.Field.MILLISECOND) != null) {
                if (z) {
                    continue;
                } else {
                    Date date = (Date) valueOf;
                    int length = stringBuffer.length();
                    Formatter formatter = new Formatter(stringBuffer, Locale.ROOT);
                    try {
                        long time = date.getTime() % 1000;
                        if (time < 0) {
                            time += 1000;
                        }
                        formatter.format(this.locale, this.sFmt, Double.valueOf(time / 1000.0d));
                        formatter.close();
                        stringBuffer.delete(length, length + 2);
                        z = true;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            try {
                                formatter.close();
                                throw th2;
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                                throw th2;
                            }
                        }
                    }
                }
            } else if (formatToCharacterIterator.getAttribute(DateFormat.Field.AM_PM) == null) {
                stringBuffer.append(first);
            } else if (!z2) {
                if (this.showAmPm) {
                    if (this.amPmUpper) {
                        stringBuffer.append(StringUtil.toUpperCase(first));
                        if (this.showM) {
                            stringBuffer.append('M');
                        }
                    } else {
                        stringBuffer.append(StringUtil.toLowerCase(first));
                        if (this.showM) {
                            stringBuffer.append('m');
                        }
                    }
                }
                z2 = true;
            }
        }
    }

    @Override // org.apache.poi.ss.format.CellFormatter
    public void simpleValue(StringBuffer stringBuffer, Object obj) {
        CellDateFormatter cellDateFormatter = SIMPLE_DATE_FORMATTER;
        if (cellDateFormatter == null) {
            synchronized (CellDateFormatter.class) {
                cellDateFormatter = SIMPLE_DATE_FORMATTER;
                if (cellDateFormatter == null) {
                    cellDateFormatter = new CellDateFormatter("mm/d/y");
                    SIMPLE_DATE_FORMATTER = cellDateFormatter;
                }
            }
        }
        cellDateFormatter.formatValue(stringBuffer, obj);
    }

    public CellDateFormatter(Locale locale, String str) {
        super(str);
        DatePartHandler datePartHandler = new DatePartHandler();
        StringBuffer parseFormat = CellFormatPart.parseFormat(str, CellFormatType.DATE, datePartHandler);
        datePartHandler.finish(parseFormat);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(parseFormat.toString(), locale);
        this.dateFmt = simpleDateFormat;
        simpleDateFormat.setTimeZone(LocaleUtil.getUserTimeZone());
    }
}
