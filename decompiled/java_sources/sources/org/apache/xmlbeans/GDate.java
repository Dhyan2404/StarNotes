package org.apache.xmlbeans;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes13.dex */
public final class GDate implements GDateSpecification, Serializable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int MAX_YEAR = 292277265;
    static final int MIN_YEAR = -292275295;
    private static final long serialVersionUID = 1;
    private int _CY;

    /* renamed from: _D */
    private int f113716_D;

    /* renamed from: _M */
    private int f113717_M;
    private int _bits;
    private transient String _canonicalString;
    private BigDecimal _fs;

    /* renamed from: _h */
    private int f113718_h;

    /* renamed from: _m */
    private int f113719_m;

    /* renamed from: _s */
    private int f113720_s;
    private transient String _string;
    private int _tzh;
    private int _tzm;
    private int _tzsign;
    static final BigDecimal _zero = BigDecimal.ZERO;
    static final BigDecimal _one = BigDecimal.ONE;
    private static final char[] _tensDigit = {'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};
    private static final char[] _onesDigit = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    private static final TimeZone GMTZONE = TimeZone.getTimeZone(TimeZones.GMT_ID);
    private static final TimeZone[] MINUSZONE = {TimeZone.getTimeZone("GMT-00:00"), TimeZone.getTimeZone("GMT-01:00"), TimeZone.getTimeZone("GMT-02:00"), TimeZone.getTimeZone("GMT-03:00"), TimeZone.getTimeZone("GMT-04:00"), TimeZone.getTimeZone("GMT-05:00"), TimeZone.getTimeZone("GMT-06:00"), TimeZone.getTimeZone("GMT-07:00"), TimeZone.getTimeZone("GMT-08:00"), TimeZone.getTimeZone("GMT-09:00"), TimeZone.getTimeZone("GMT-10:00"), TimeZone.getTimeZone("GMT-11:00"), TimeZone.getTimeZone("GMT-12:00"), TimeZone.getTimeZone("GMT-13:00"), TimeZone.getTimeZone("GMT-14:00")};
    private static final TimeZone[] PLUSZONE = {TimeZone.getTimeZone("GMT+00:00"), TimeZone.getTimeZone("GMT+01:00"), TimeZone.getTimeZone("GMT+02:00"), TimeZone.getTimeZone("GMT+03:00"), TimeZone.getTimeZone("GMT+04:00"), TimeZone.getTimeZone("GMT+05:00"), TimeZone.getTimeZone("GMT+06:00"), TimeZone.getTimeZone("GMT+07:00"), TimeZone.getTimeZone("GMT+08:00"), TimeZone.getTimeZone("GMT+09:00"), TimeZone.getTimeZone("GMT+10:00"), TimeZone.getTimeZone("GMT+11:00"), TimeZone.getTimeZone("GMT+12:00"), TimeZone.getTimeZone("GMT+13:00"), TimeZone.getTimeZone("GMT+14:00")};

    public GDate(CharSequence charSequence) {
        int i;
        int i2;
        boolean z;
        int twoDigit;
        int twoDigit2;
        int length = charSequence.length();
        while (length > 0 && isSpace(charSequence.charAt(length - 1))) {
            length--;
        }
        int i3 = 0;
        while (i3 < length && isSpace(charSequence.charAt(i3))) {
            i3++;
        }
        int i4 = length - i3;
        if (i4 >= 1 && charSequence.charAt(length - 1) == 'Z') {
            this._bits |= 1;
            length--;
        } else if (i4 >= 6 && charSequence.charAt(length - 3) == ':') {
            char charAt = charSequence.charAt(length - 6);
            if (charAt != '+') {
                i = charAt == '-' ? -1 : i;
            } else {
                i = 1;
            }
            int twoDigit3 = twoDigit(charSequence, length - 5);
            int twoDigit4 = twoDigit(charSequence, length - 2);
            if (twoDigit3 > 14) {
                throw new IllegalArgumentException("time zone hour must be two digits between -14 and +14");
            }
            if (twoDigit4 <= 59) {
                this._bits |= 1;
                this._tzsign = i;
                this._tzh = twoDigit3;
                this._tzm = twoDigit4;
                length -= 6;
            } else {
                throw new IllegalArgumentException("time zone minute must be two digits between 00 and 59");
            }
        }
        if (i3 < length && ((i2 = i3 + 2) >= length || charSequence.charAt(i2) != ':')) {
            if (charSequence.charAt(i3) == '-') {
                i3++;
                z = true;
            } else {
                z = false;
            }
            int i5 = -i3;
            boolean z2 = i3 < length && digitVal(charSequence.charAt(i3)) == 0;
            int i6 = 0;
            while (true) {
                char charAt2 = i3 < length ? charSequence.charAt(i3) : (char) 0;
                if (!isDigit(charAt2)) {
                    int i7 = i5 + i3;
                    if (i7 <= 9) {
                        if (i7 >= 4) {
                            this._bits |= 2;
                            i6 = z ? -i6 : i6;
                            this._CY = i6;
                            if (i6 == 0) {
                                throw new IllegalArgumentException("year must not be zero");
                            }
                        } else if (i7 > 0) {
                            throw new IllegalArgumentException("year must be four digits (may pad with zeroes, e.g., 0560)");
                        }
                        int i8 = this._CY;
                        if (i8 > MAX_YEAR) {
                            throw new IllegalArgumentException("year value not supported: too big, must be less than 292277265");
                        }
                        if (i8 < MIN_YEAR) {
                            throw new IllegalArgumentException("year values not supported: too small, must be bigger than -292275295");
                        }
                        if (charAt2 != '-') {
                            if (z && !hasYear()) {
                                throw new IllegalArgumentException();
                            }
                        } else {
                            i3++;
                            if (length - i3 >= 2 && (twoDigit2 = twoDigit(charSequence, i3)) >= 1 && twoDigit2 <= 12) {
                                this._bits |= 4;
                                this.f113717_M = twoDigit2;
                                i3 += 2;
                            }
                            if ((i3 < length ? charSequence.charAt(i3) : (char) 0) != '-') {
                                if (!hasMonth()) {
                                    throw new IllegalArgumentException();
                                }
                            } else {
                                i3++;
                                if (length - i3 >= 2 && (twoDigit = twoDigit(charSequence, i3)) >= 1 && twoDigit <= 31) {
                                    this._bits |= 8;
                                    this.f113716_D = twoDigit;
                                    i3 += 2;
                                }
                                if (!hasDay()) {
                                    if (hasMonth() && !hasYear()) {
                                        if ((i3 < length ? charSequence.charAt(i3) : (char) 0) == '-') {
                                            i3++;
                                        }
                                    }
                                    throw new IllegalArgumentException();
                                }
                            }
                        }
                    } else {
                        throw new IllegalArgumentException("year too long (up to 9 digits)");
                    }
                } else {
                    if (z2 && i3 + i5 >= 4) {
                        throw new IllegalArgumentException("year value starting with zero must be 4 or less digits: " + ((Object) charSequence));
                    }
                    i6 = (i6 * 10) + digitVal(charAt2);
                    i3++;
                }
            }
        }
        if (i3 < length) {
            if (hasYear() || hasMonth() || hasDay()) {
                if (charSequence.charAt(i3) != 'T') {
                    throw new IllegalArgumentException("date and time must be separated by 'T'");
                }
                i3++;
            }
            int i9 = i3 + 8;
            if (length >= i9 && charSequence.charAt(i3 + 2) == ':' && charSequence.charAt(i3 + 5) == ':') {
                int twoDigit5 = twoDigit(charSequence, i3);
                if (twoDigit5 <= 24) {
                    int twoDigit6 = twoDigit(charSequence, i3 + 3);
                    if (twoDigit6 < 60) {
                        int twoDigit7 = twoDigit(charSequence, i3 + 6);
                        if (twoDigit7 < 60) {
                            BigDecimal bigDecimal = _zero;
                            if (i9 < length) {
                                if (charSequence.charAt(i9) != '.') {
                                    throw new IllegalArgumentException();
                                }
                                int i10 = i9 + 1;
                                if (i10 < length) {
                                    while (i10 < length) {
                                        if (!isDigit(charSequence.charAt(i10))) {
                                            throw new IllegalArgumentException();
                                        }
                                        i10++;
                                    }
                                    bigDecimal = new BigDecimal(charSequence.subSequence(i9, length).toString());
                                }
                            }
                            this._bits |= 16;
                            this.f113718_h = twoDigit5;
                            this.f113719_m = twoDigit6;
                            this.f113720_s = twoDigit7;
                            this._fs = bigDecimal;
                        } else {
                            throw new IllegalArgumentException("second must be between 00 and 59");
                        }
                    } else {
                        throw new IllegalArgumentException("minute must be between 00 and 59");
                    }
                } else {
                    throw new IllegalArgumentException("hour must be between 00 and 23");
                }
            } else {
                throw new IllegalArgumentException();
            }
        }
        if (hasTime() && this.f113718_h == 24) {
            if (this.f113719_m == 0 && this.f113720_s == 0 && this._fs.compareTo(_zero) == 0) {
                if (hasDate()) {
                    GDateBuilder gDateBuilder = new GDateBuilder(this._CY, this.f113717_M, this.f113716_D, this.f113718_h, this.f113719_m, this.f113720_s, this._fs, this._tzsign, this._tzh, this._tzm);
                    gDateBuilder.normalize24h();
                    this.f113716_D = gDateBuilder.getDay();
                    this.f113717_M = gDateBuilder.getMonth();
                    this._CY = gDateBuilder.getYear();
                    this.f113718_h = 0;
                } else if (hasDay()) {
                    this.f113716_D++;
                    this.f113718_h = 0;
                }
            } else {
                throw new IllegalArgumentException("if hour is 24, minutes, seconds and fraction must be 0");
            }
        }
        if (!isValid()) {
            throw new IllegalArgumentException("invalid date");
        }
    }

    private static int _padFourAppend(char[] cArr, int i) {
        int i2;
        if (i < 0) {
            cArr[0] = '-';
            i = -i;
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (i >= 10000) {
            String num = Integer.toString(i);
            num.getChars(0, num.length(), cArr, i2);
            return i2 + num.length();
        }
        int i3 = i / 100;
        int i4 = i - (i3 * 100);
        char[] cArr2 = _tensDigit;
        cArr[i2] = cArr2[i3];
        char[] cArr3 = _onesDigit;
        cArr[i2 + 1] = cArr3[i3];
        cArr[i2 + 2] = cArr2[i4];
        cArr[i2 + 3] = cArr3[i4];
        return i2 + 4;
    }

    private static int _padTwoAppend(char[] cArr, int i, int i2) {
        cArr[i] = _tensDigit[i2];
        cArr[i + 1] = _onesDigit[i2];
        return i + 2;
    }

    public static int digitVal(char c) {
        return c - '0';
    }

    private void ensureCanonicalString() {
        if (this._canonicalString != null) {
            return;
        }
        boolean z = hasTimeZone() && getTimeZoneSign() != 0 && hasTime() && hasDay() == hasMonth() && hasDay() == hasYear();
        if (!z && getFraction() != null && getFraction().scale() > 0) {
            z = getFraction().unscaledValue().mod(GDateBuilder.TEN).signum() == 0;
        }
        if (!z) {
            this._canonicalString = toString();
            return;
        }
        GDateBuilder gDateBuilder = new GDateBuilder(this);
        gDateBuilder.normalize();
        this._canonicalString = gDateBuilder.toString();
    }

    public static String formatGDate(GDateSpecification gDateSpecification) {
        int i;
        String bigDecimal;
        int indexOf;
        BigDecimal fraction = gDateSpecification.getFraction();
        char[] cArr = new char[(fraction == null ? 0 : fraction.scale()) + 33];
        if (gDateSpecification.hasYear() || gDateSpecification.hasMonth() || gDateSpecification.hasDay()) {
            if (gDateSpecification.hasYear()) {
                i = _padFourAppend(cArr, gDateSpecification.getYear());
            } else {
                cArr[0] = '-';
                i = 1;
            }
            if (gDateSpecification.hasMonth() || gDateSpecification.hasDay()) {
                int i2 = i + 1;
                cArr[i] = '-';
                i = gDateSpecification.hasMonth() ? _padTwoAppend(cArr, i2, gDateSpecification.getMonth()) : i2;
                if (gDateSpecification.hasDay()) {
                    cArr[i] = '-';
                    i = _padTwoAppend(cArr, i + 1, gDateSpecification.getDay());
                }
            }
            if (gDateSpecification.hasTime()) {
                cArr[i] = 'T';
                i++;
            }
        } else {
            i = 0;
        }
        if (gDateSpecification.hasTime()) {
            int _padTwoAppend = _padTwoAppend(cArr, i, gDateSpecification.getHour());
            cArr[_padTwoAppend] = ':';
            int _padTwoAppend2 = _padTwoAppend(cArr, _padTwoAppend + 1, gDateSpecification.getMinute());
            cArr[_padTwoAppend2] = ':';
            i = _padTwoAppend(cArr, _padTwoAppend2 + 1, gDateSpecification.getSecond());
            if (fraction != null && !_zero.equals(fraction) && (indexOf = (bigDecimal = fraction.toString()).indexOf(46)) >= 0) {
                bigDecimal.getChars(indexOf, bigDecimal.length(), cArr, i);
                i += bigDecimal.length() - indexOf;
            }
        }
        if (gDateSpecification.hasTimeZone()) {
            if (gDateSpecification.getTimeZoneSign() == 0) {
                cArr[i] = 'Z';
                i++;
            } else {
                int i3 = i + 1;
                cArr[i] = gDateSpecification.getTimeZoneSign() > 0 ? PhoneNumberUtil.f36455s : '-';
                int _padTwoAppend3 = _padTwoAppend(cArr, i3, gDateSpecification.getTimeZoneHour());
                cArr[_padTwoAppend3] = ':';
                i = _padTwoAppend(cArr, _padTwoAppend3 + 1, gDateSpecification.getTimeZoneMinute());
            }
        }
        return new String(cArr, 0, i);
    }

    public static boolean isDigit(char c) {
        return ((char) (c + 65488)) <= '\t';
    }

    public static boolean isSpace(char c) {
        return c == '\t' || c == '\n' || c == '\r' || c == ' ';
    }

    public static TimeZone timeZoneForGDate(GDateSpecification gDateSpecification) {
        if (!gDateSpecification.hasTimeZone()) {
            return TimeZone.getDefault();
        }
        if (gDateSpecification.getTimeZoneSign() == 0) {
            return GMTZONE;
        }
        if (gDateSpecification.getTimeZoneMinute() == 0 && gDateSpecification.getTimeZoneHour() <= 14 && gDateSpecification.getTimeZoneHour() >= 0) {
            return gDateSpecification.getTimeZoneSign() < 0 ? MINUSZONE[gDateSpecification.getTimeZoneHour()] : PLUSZONE[gDateSpecification.getTimeZoneHour()];
        }
        char[] cArr = new char[9];
        cArr[0] = 'G';
        cArr[1] = 'M';
        cArr[2] = 'T';
        cArr[3] = gDateSpecification.getTimeZoneSign() < 0 ? '-' : PhoneNumberUtil.f36455s;
        _padTwoAppend(cArr, 4, gDateSpecification.getTimeZoneHour());
        cArr[6] = ':';
        _padTwoAppend(cArr, 7, gDateSpecification.getTimeZoneMinute());
        return TimeZone.getTimeZone(new String(cArr));
    }

    private static int twoDigit(CharSequence charSequence, int i) {
        char charAt = charSequence.charAt(i);
        char charAt2 = charSequence.charAt(i + 1);
        if (isDigit(charAt) && isDigit(charAt2)) {
            return (digitVal(charAt) * 10) + digitVal(charAt2);
        }
        return 100;
    }

    public GDate add(GDurationSpecification gDurationSpecification) {
        GDateBuilder gDateBuilder = new GDateBuilder(this);
        gDateBuilder.addGDuration(gDurationSpecification);
        return gDateBuilder.toGDate();
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public String canonicalString() {
        ensureCanonicalString();
        return this._canonicalString;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public int compareToGDate(GDateSpecification gDateSpecification) {
        return GDateBuilder.compareGDate(this, gDateSpecification);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GDate)) {
            return false;
        }
        ensureCanonicalString();
        return this._canonicalString.equals(((GDate) obj).canonicalString());
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public int getBuiltinTypeCode() {
        return GDateBuilder.btcForFlags(this._bits);
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public XmlCalendar getCalendar() {
        return new XmlCalendar(this);
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public Date getDate() {
        return GDateBuilder.dateForGDate(this);
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final int getDay() {
        return this.f113716_D;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public int getFlags() {
        return this._bits;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final BigDecimal getFraction() {
        return this._fs;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final int getHour() {
        return this.f113718_h;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public int getJulianDate() {
        return GDateBuilder.julianDateForGDate(this);
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public int getMillisecond() {
        BigDecimal bigDecimal = this._fs;
        if (bigDecimal == null) {
            return 0;
        }
        return bigDecimal.setScale(3, RoundingMode.DOWN).unscaledValue().intValue();
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final int getMinute() {
        return this.f113719_m;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final int getMonth() {
        return this.f113717_M;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final int getSecond() {
        return this.f113720_s;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final int getTimeZoneHour() {
        return this._tzh;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final int getTimeZoneMinute() {
        return this._tzm;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final int getTimeZoneSign() {
        return this._tzsign;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final int getYear() {
        return this._CY;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final boolean hasDate() {
        return (this._bits & 14) == 14;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final boolean hasDay() {
        return (this._bits & 8) != 0;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final boolean hasMonth() {
        return (this._bits & 4) != 0;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final boolean hasTime() {
        return (this._bits & 16) != 0;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final boolean hasTimeZone() {
        return (this._bits & 1) != 0;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final boolean hasYear() {
        return (this._bits & 2) != 0;
    }

    public int hashCode() {
        ensureCanonicalString();
        return this._canonicalString.hashCode();
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public final boolean isImmutable() {
        return true;
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public boolean isValid() {
        return GDateBuilder.isValidGDate(this);
    }

    public GDate subtract(GDurationSpecification gDurationSpecification) {
        GDateBuilder gDateBuilder = new GDateBuilder(this);
        gDateBuilder.subtractGDuration(gDurationSpecification);
        return gDateBuilder.toGDate();
    }

    @Override // org.apache.xmlbeans.GDateSpecification
    public String toString() {
        if (this._string == null) {
            this._string = formatGDate(this);
        }
        return this._string;
    }

    public GDate(int i, int i2, int i3, int i4, int i5, int i6, BigDecimal bigDecimal) {
        this._bits = 30;
        this._CY = i;
        this.f113717_M = i2;
        this.f113716_D = i3;
        this.f113718_h = i4;
        this.f113719_m = i5;
        this.f113720_s = i6;
        this._fs = bigDecimal == null ? _zero : bigDecimal;
        if (!isValid()) {
            throw new IllegalArgumentException();
        }
    }

    public GDate(int i, int i2, int i3, int i4, int i5, int i6, BigDecimal bigDecimal, int i7, int i8, int i9) {
        this._bits = 31;
        this._CY = i;
        this.f113717_M = i2;
        this.f113716_D = i3;
        this.f113718_h = i4;
        this.f113719_m = i5;
        this.f113720_s = i6;
        this._fs = bigDecimal == null ? _zero : bigDecimal;
        this._tzsign = i7;
        this._tzh = i8;
        this._tzm = i9;
        if (!isValid()) {
            throw new IllegalArgumentException();
        }
    }

    public GDate(Date date) {
        this(new GDateBuilder(date));
    }

    public GDate(Calendar calendar) {
        int i;
        int i2;
        boolean z;
        int i3;
        int i4;
        boolean isSet = calendar.isSet(1);
        boolean isSet2 = calendar.isSet(0);
        boolean isSet3 = calendar.isSet(2);
        boolean isSet4 = calendar.isSet(5);
        boolean isSet5 = calendar.isSet(11);
        boolean isSet6 = calendar.isSet(10);
        boolean isSet7 = calendar.isSet(9);
        boolean isSet8 = calendar.isSet(12);
        boolean isSet9 = calendar.isSet(13);
        boolean isSet10 = calendar.isSet(14);
        boolean isSet11 = calendar.isSet(15);
        boolean isSet12 = calendar.isSet(16);
        if (isSet) {
            int i5 = calendar.get(1);
            if (isSet2 && (calendar instanceof GregorianCalendar) && calendar.get(0) == 0) {
                i5 = -i5;
            }
            this._bits |= 2;
            this._CY = i5;
        }
        if (isSet3) {
            this._bits |= 4;
            this.f113717_M = calendar.get(2) + 1;
        }
        if (isSet4) {
            this._bits |= 8;
            this.f113716_D = calendar.get(5);
        }
        BigDecimal bigDecimal = _zero;
        if (isSet5) {
            i2 = calendar.get(11);
            z = true;
            i = 12;
        } else if (isSet6 && isSet7) {
            i = 12;
            i2 = calendar.get(10) + (calendar.get(9) * 12);
            z = true;
        } else {
            i = 12;
            i2 = 0;
            z = false;
        }
        if (isSet8) {
            i3 = calendar.get(i);
            z = true;
        } else {
            i3 = 0;
        }
        if (isSet9) {
            i4 = calendar.get(13);
            z = true;
        } else {
            i4 = 0;
        }
        if (isSet10) {
            bigDecimal = BigDecimal.valueOf(calendar.get(14), 3);
            z = true;
        }
        if (z) {
            this._bits |= 16;
            this.f113718_h = i2;
            this.f113719_m = i3;
            this.f113720_s = i4;
            this._fs = bigDecimal;
        }
        if (isSet11) {
            int i6 = calendar.get(15);
            i6 = isSet12 ? i6 + calendar.get(16) : i6;
            this._bits |= 1;
            if (i6 == 0) {
                this._tzsign = 0;
                this._tzh = 0;
                this._tzm = 0;
                String id = calendar.getTimeZone().getID();
                if (id == null || id.length() <= 3) {
                    return;
                }
                char charAt = id.charAt(3);
                if (charAt == '+') {
                    this._tzsign = 1;
                    return;
                } else {
                    if (charAt != '-') {
                        return;
                    }
                    this._tzsign = -1;
                    return;
                }
            }
            int i7 = i6 < 0 ? -1 : 1;
            this._tzsign = i7;
            int i8 = i6 * i7;
            int i9 = i8 / 3600000;
            this._tzh = i9;
            this._tzm = (i8 - (i9 * 3600000)) / 60000;
        }
    }

    public GDate(GDateSpecification gDateSpecification) {
        if (gDateSpecification.hasTimeZone()) {
            this._bits |= 1;
            this._tzsign = gDateSpecification.getTimeZoneSign();
            this._tzh = gDateSpecification.getTimeZoneHour();
            this._tzm = gDateSpecification.getTimeZoneMinute();
        }
        if (gDateSpecification.hasTime()) {
            this._bits |= 16;
            this.f113718_h = gDateSpecification.getHour();
            this.f113719_m = gDateSpecification.getMinute();
            this.f113720_s = gDateSpecification.getSecond();
            this._fs = gDateSpecification.getFraction();
        }
        if (gDateSpecification.hasDay()) {
            this._bits |= 8;
            this.f113716_D = gDateSpecification.getDay();
        }
        if (gDateSpecification.hasMonth()) {
            this._bits |= 4;
            this.f113717_M = gDateSpecification.getMonth();
        }
        if (gDateSpecification.hasYear()) {
            this._bits |= 2;
            this._CY = gDateSpecification.getYear();
        }
    }
}
