package org.apache.xmlbeans;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/* loaded from: classes13.dex */
public class GDurationBuilder implements GDurationSpecification, Serializable {
    private static final GDate[] _compDate = {new GDate(1696, 9, 1, 0, 0, 0, null, 0, 0, 0), new GDate(1697, 2, 1, 0, 0, 0, null, 0, 0, 0), new GDate(1903, 3, 1, 0, 0, 0, null, 0, 0, 0), new GDate(1903, 7, 1, 0, 0, 0, null, 0, 0, 0)};
    private static final long serialVersionUID = 1;
    private int _CY;

    /* renamed from: _D */
    private int f113731_D;

    /* renamed from: _M */
    private int f113732_M;
    private BigDecimal _fs;

    /* renamed from: _h */
    private int f113733_h;

    /* renamed from: _m */
    private int f113734_m;

    /* renamed from: _s */
    private int f113735_s;
    private int _sign;

    public GDurationBuilder() {
        this._sign = 1;
        this._fs = GDate._zero;
    }

    private void _add(GDurationSpecification gDurationSpecification, int i) {
        this._CY += gDurationSpecification.getYear() * i;
        this.f113732_M += gDurationSpecification.getMonth() * i;
        this.f113731_D += gDurationSpecification.getDay() * i;
        this.f113733_h += gDurationSpecification.getHour() * i;
        this.f113734_m += gDurationSpecification.getMinute() * i;
        this.f113735_s += gDurationSpecification.getSecond() * i;
        if (gDurationSpecification.getFraction().signum() == 0) {
            return;
        }
        if (this._fs.signum() == 0 && i == 1) {
            this._fs = gDurationSpecification.getFraction();
        } else {
            this._fs = i > 0 ? this._fs.add(gDurationSpecification.getFraction()) : this._fs.subtract(gDurationSpecification.getFraction());
        }
    }

    private static long _fQuotient(long j, int i) {
        if ((j < 0) == (i < 0)) {
            return j / i;
        }
        long j2 = i;
        return -(((j2 - j) - 1) / j2);
    }

    private int _getTotalSignSlowly() {
        GDateBuilder gDateBuilder = new GDateBuilder();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (GDate gDate : _compDate) {
            gDateBuilder.setGDate(gDate);
            gDateBuilder.addGDuration(this);
            int compareToGDate = gDateBuilder.compareToGDate(gDate);
            if (compareToGDate == -1) {
                i2++;
            } else if (compareToGDate == 0) {
                i3++;
            } else if (compareToGDate == 1) {
                i++;
            }
        }
        GDate[] gDateArr = _compDate;
        if (i == gDateArr.length) {
            return 1;
        }
        if (i2 == gDateArr.length) {
            return -1;
        }
        return i3 == gDateArr.length ? 0 : 2;
    }

    private static int _mod(long j, int i, long j2) {
        return (int) (j - (j2 * i));
    }

    private void _normalizeImpl(boolean z) {
        long j;
        int i;
        BigDecimal bigDecimal;
        int i2;
        int i3;
        int i4;
        int i5 = this.f113732_M;
        if (i5 < 0 || i5 > 11) {
            long j2 = i5;
            long _fQuotient = _fQuotient(j2, 12);
            this.f113732_M = _mod(j2, 12, _fQuotient);
            this._CY = Math.addExact(this._CY, Math.toIntExact(_fQuotient));
        }
        BigDecimal bigDecimal2 = this._fs;
        if (bigDecimal2 == null || (bigDecimal2.signum() >= 0 && this._fs.compareTo(GDate._one) < 0)) {
            j = 0;
        } else {
            BigDecimal scale = this._fs.setScale(0, RoundingMode.FLOOR);
            this._fs = this._fs.subtract(scale);
            j = scale.intValue();
        }
        if (j != 0 || (i2 = this.f113735_s) < 0 || i2 > 59 || (i3 = this.f113734_m) < 0 || i3 > 50 || (i4 = this.f113733_h) < 0 || i4 > 23) {
            long j3 = this.f113735_s + j;
            long _fQuotient2 = _fQuotient(j3, 60);
            this.f113735_s = _mod(j3, 60, _fQuotient2);
            long j4 = this.f113734_m + _fQuotient2;
            long _fQuotient3 = _fQuotient(j4, 60);
            this.f113734_m = _mod(j4, 60, _fQuotient3);
            long j5 = this.f113733_h + _fQuotient3;
            long _fQuotient4 = _fQuotient(j5, 24);
            this.f113733_h = _mod(j5, 24, _fQuotient4);
            this.f113731_D = Math.addExact(this.f113731_D, Math.toIntExact(_fQuotient4));
        }
        if (this._CY == 0 && this.f113732_M == 0 && this.f113731_D == 0 && this.f113733_h == 0 && this.f113734_m == 0 && this.f113735_s == 0 && ((bigDecimal = this._fs) == null || bigDecimal.signum() == 0)) {
            this._sign = 1;
        }
        if (z) {
            int i6 = this.f113731_D;
            if (i6 < 0 || this._CY < 0) {
                int _getTotalSignSlowly = (i6 > 0 || ((i = this._CY) >= 0 && !(i == 0 && this.f113732_M == 0))) ? _getTotalSignSlowly() : -this._sign;
                if (_getTotalSignSlowly == 2) {
                    _getTotalSignSlowly = this._CY < 0 ? -this._sign : this._sign;
                }
                int i7 = _getTotalSignSlowly != 0 ? _getTotalSignSlowly : 1;
                if (i7 != this._sign) {
                    this._sign = i7;
                    this._CY = -this._CY;
                    this.f113732_M = -this.f113732_M;
                    this.f113731_D = -this.f113731_D;
                    this.f113733_h = -this.f113733_h;
                    this.f113734_m = -this.f113734_m;
                    this.f113735_s = -this.f113735_s;
                    BigDecimal bigDecimal3 = this._fs;
                    if (bigDecimal3 != null) {
                        this._fs = bigDecimal3.negate();
                    }
                }
                _normalizeImpl(false);
            }
        }
    }

    public static int compareDurations(GDurationSpecification gDurationSpecification, GDurationSpecification gDurationSpecification2) {
        if (gDurationSpecification.getFraction().signum() == 0 && gDurationSpecification2.getFraction().signum() == 0) {
            int sign = gDurationSpecification.getSign();
            long j = sign;
            long year = ((gDurationSpecification.getYear() * 12) + gDurationSpecification.getMonth()) * j;
            long sign2 = gDurationSpecification2.getSign();
            long year2 = ((gDurationSpecification2.getYear() * 12) + gDurationSpecification2.getMonth()) * sign2;
            long day = j * ((((((gDurationSpecification.getDay() * 24) + gDurationSpecification.getHour()) * 60) + gDurationSpecification.getMinute()) * 60) + gDurationSpecification.getSecond());
            long day2 = sign2 * ((((((gDurationSpecification2.getDay() * 24) + gDurationSpecification2.getHour()) * 60) + gDurationSpecification2.getMinute()) * 60) + gDurationSpecification2.getSecond());
            if (year == year2) {
                if (day == day2) {
                    return 0;
                }
                return day < day2 ? -1 : 1;
            }
            if (year < year2 && day - day2 < 2419200) {
                return -1;
            }
            if (year > year2 && day2 - day < 2419200) {
                return 1;
            }
        }
        GDurationBuilder gDurationBuilder = new GDurationBuilder(gDurationSpecification);
        gDurationBuilder.subtractGDuration(gDurationSpecification2);
        return gDurationBuilder._getTotalSignSlowly();
    }

    public static String formatDuration(GDurationSpecification gDurationSpecification) {
        StringBuilder sb = new StringBuilder(30);
        if (gDurationSpecification.getSign() < 0) {
            sb.append('-');
        }
        sb.append('P');
        if (gDurationSpecification.getYear() != 0) {
            sb.append(gDurationSpecification.getYear());
            sb.append('Y');
        }
        if (gDurationSpecification.getMonth() != 0) {
            sb.append(gDurationSpecification.getMonth());
            sb.append('M');
        }
        if (gDurationSpecification.getDay() != 0) {
            sb.append(gDurationSpecification.getDay());
            sb.append('D');
        }
        if (gDurationSpecification.getHour() != 0 || gDurationSpecification.getMinute() != 0 || gDurationSpecification.getSecond() != 0 || gDurationSpecification.getFraction().signum() != 0) {
            sb.append('T');
        }
        if (gDurationSpecification.getHour() != 0) {
            sb.append(gDurationSpecification.getHour());
            sb.append('H');
        }
        if (gDurationSpecification.getMinute() != 0) {
            sb.append(gDurationSpecification.getMinute());
            sb.append('M');
        }
        if (gDurationSpecification.getFraction().signum() != 0) {
            BigDecimal fraction = gDurationSpecification.getFraction();
            if (gDurationSpecification.getSecond() != 0) {
                fraction = fraction.add(BigDecimal.valueOf(gDurationSpecification.getSecond()));
            }
            sb.append(stripTrailingZeros(toPlainString(fraction)));
            sb.append('S');
        } else if (gDurationSpecification.getSecond() != 0) {
            sb.append(gDurationSpecification.getSecond());
            sb.append('S');
        } else if (sb.length() <= 2) {
            sb.append("T0S");
        }
        return sb.toString();
    }

    public static boolean isValidDuration(GDurationSpecification gDurationSpecification) {
        return (gDurationSpecification.getSign() == 1 || gDurationSpecification.getSign() == -1) && gDurationSpecification.getYear() >= 0 && gDurationSpecification.getMonth() >= 0 && gDurationSpecification.getDay() >= 0 && gDurationSpecification.getHour() >= 0 && gDurationSpecification.getMinute() >= 0 && gDurationSpecification.getSecond() >= 0 && gDurationSpecification.getFraction().signum() >= 0;
    }

    public static String stripTrailingZeros(String str) {
        boolean z;
        int length = str.length() - 1;
        int i = length;
        while (length >= 0 && str.charAt(length) == '0') {
            length--;
            i--;
        }
        while (true) {
            if (length < 0) {
                z = false;
                break;
            }
            if (str.charAt(length) == 'E') {
                return str;
            }
            if (str.charAt(length) == '.') {
                z = true;
                break;
            }
            length--;
        }
        return z ? str.substring(0, i + 1) : str;
    }

    public static String toPlainString(BigDecimal bigDecimal) {
        BigInteger unscaledValue = bigDecimal.unscaledValue();
        int scale = bigDecimal.scale();
        String bigInteger = unscaledValue.toString();
        if (scale == 0) {
            return bigInteger;
        }
        int i = bigInteger.charAt(0) == '-' ? 1 : 0;
        int length = (bigInteger.length() - scale) - i;
        StringBuilder sb = new StringBuilder(bigInteger.length() + 2 + (length <= 0 ? (-length) + 1 : 0));
        if (length <= 0) {
            if (i != 0) {
                sb.append('-');
            }
            sb.append('0');
            sb.append('.');
            while (length < 0) {
                sb.append('0');
                length++;
            }
            sb.append(bigInteger.substring(i));
        } else if (length < bigInteger.length()) {
            sb.append(bigInteger);
            sb.insert(length + i, '.');
        } else {
            sb.append(bigInteger);
            if (!unscaledValue.equals(BigInteger.ZERO)) {
                for (int length2 = bigInteger.length(); length2 < length; length2++) {
                    sb.append('0');
                }
            }
        }
        return sb.toString();
    }

    public void addGDuration(GDurationSpecification gDurationSpecification) {
        _add(gDurationSpecification, this._sign * gDurationSpecification.getSign());
    }

    public Object clone() {
        return new GDurationBuilder(this);
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int compareToGDuration(GDurationSpecification gDurationSpecification) {
        return compareDurations(this, gDurationSpecification);
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getDay() {
        return this.f113731_D;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public BigDecimal getFraction() {
        return this._fs;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getHour() {
        return this.f113733_h;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getMinute() {
        return this.f113734_m;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getMonth() {
        return this.f113732_M;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getSecond() {
        return this.f113735_s;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getSign() {
        return this._sign;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final int getYear() {
        return this._CY;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public final boolean isImmutable() {
        return true;
    }

    @Override // org.apache.xmlbeans.GDurationSpecification
    public boolean isValid() {
        return isValidDuration(this);
    }

    public void normalize() {
        _normalizeImpl(true);
    }

    public void setDay(int i) {
        this.f113731_D = i;
    }

    public void setFraction(BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            bigDecimal = GDate._zero;
        }
        this._fs = bigDecimal;
    }

    public void setHour(int i) {
        this.f113733_h = i;
    }

    public void setMinute(int i) {
        this.f113734_m = i;
    }

    public void setMonth(int i) {
        this.f113732_M = i;
    }

    public void setSecond(int i) {
        this.f113735_s = i;
    }

    public final void setSign(int i) {
        if (i != 1 && i != -1) {
            throw new IllegalArgumentException();
        }
        this._sign = i;
    }

    public void setYear(int i) {
        this._CY = i;
    }

    public void subtractGDuration(GDurationSpecification gDurationSpecification) {
        _add(gDurationSpecification, (-this._sign) * gDurationSpecification.getSign());
    }

    public GDuration toGDuration() {
        return new GDuration(this);
    }

    public String toString() {
        return formatDuration(this);
    }

    public GDurationBuilder(String str) {
        this(new GDuration(str));
    }

    public GDurationBuilder(int i, int i2, int i3, int i4, int i5, int i6, int i7, BigDecimal bigDecimal) {
        if (i != 1 && i != -1) {
            throw new IllegalArgumentException();
        }
        this._sign = i;
        this._CY = i2;
        this.f113732_M = i3;
        this.f113731_D = i4;
        this.f113733_h = i5;
        this.f113734_m = i6;
        this.f113735_s = i7;
        this._fs = bigDecimal == null ? GDate._zero : bigDecimal;
    }

    public GDurationBuilder(GDurationSpecification gDurationSpecification) {
        this._sign = gDurationSpecification.getSign();
        this._CY = gDurationSpecification.getYear();
        this.f113732_M = gDurationSpecification.getMonth();
        this.f113731_D = gDurationSpecification.getDay();
        this.f113733_h = gDurationSpecification.getHour();
        this.f113734_m = gDurationSpecification.getMinute();
        this.f113735_s = gDurationSpecification.getSecond();
        this._fs = gDurationSpecification.getFraction();
    }
}
