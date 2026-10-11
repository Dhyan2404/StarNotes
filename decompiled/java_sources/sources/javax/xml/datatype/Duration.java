package javax.xml.datatype;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.namespace.QName;

/* loaded from: classes5.dex */
public abstract class Duration {
    public static long getCalendarTimeInMillis(Calendar calendar) {
        return calendar.getTime().getTime();
    }

    /* renamed from: a */
    public final int m61506a(DatatypeConstants.Field field) {
        Number field2 = getField(field);
        if (field2 != null) {
            return field2.intValue();
        }
        return 0;
    }

    public abstract Duration add(Duration duration);

    public abstract void addTo(Calendar calendar);

    public void addTo(Date date) {
        if (date != null) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTime(date);
            addTo(gregorianCalendar);
            date.setTime(getCalendarTimeInMillis(gregorianCalendar));
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Cannot call ");
        stringBuffer.append(getClass().getName());
        stringBuffer.append("#addTo(Date date) with date == null.");
        throw new NullPointerException(stringBuffer.toString());
    }

    public abstract int compare(Duration duration);

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof Duration) && compare((Duration) obj) == 0;
    }

    public int getDays() {
        return m61506a(DatatypeConstants.DAYS);
    }

    public abstract Number getField(DatatypeConstants.Field field);

    public int getHours() {
        return m61506a(DatatypeConstants.HOURS);
    }

    public int getMinutes() {
        return m61506a(DatatypeConstants.MINUTES);
    }

    public int getMonths() {
        return m61506a(DatatypeConstants.MONTHS);
    }

    public int getSeconds() {
        return m61506a(DatatypeConstants.SECONDS);
    }

    public abstract int getSign();

    public long getTimeInMillis(Calendar calendar) {
        Calendar calendar2 = (Calendar) calendar.clone();
        addTo(calendar2);
        return getCalendarTimeInMillis(calendar2) - getCalendarTimeInMillis(calendar);
    }

    public QName getXMLSchemaType() {
        boolean isSet = isSet(DatatypeConstants.YEARS);
        boolean isSet2 = isSet(DatatypeConstants.MONTHS);
        boolean isSet3 = isSet(DatatypeConstants.DAYS);
        boolean isSet4 = isSet(DatatypeConstants.HOURS);
        boolean isSet5 = isSet(DatatypeConstants.MINUTES);
        boolean isSet6 = isSet(DatatypeConstants.SECONDS);
        if (isSet && isSet2 && isSet3 && isSet4 && isSet5 && isSet6) {
            return DatatypeConstants.DURATION;
        }
        if (!isSet && !isSet2 && isSet3 && isSet4 && isSet5 && isSet6) {
            return DatatypeConstants.DURATION_DAYTIME;
        }
        if (isSet && isSet2 && !isSet3 && !isSet4 && !isSet5 && !isSet6) {
            return DatatypeConstants.DURATION_YEARMONTH;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("javax.xml.datatype.Duration#getXMLSchemaType(): this Duration does not match one of the XML Schema date/time datatypes: year set = ");
        stringBuffer.append(isSet);
        stringBuffer.append(" month set = ");
        stringBuffer.append(isSet2);
        stringBuffer.append(" day set = ");
        stringBuffer.append(isSet3);
        stringBuffer.append(" hour set = ");
        stringBuffer.append(isSet4);
        stringBuffer.append(" minute set = ");
        stringBuffer.append(isSet5);
        stringBuffer.append(" second set = ");
        stringBuffer.append(isSet6);
        throw new IllegalStateException(stringBuffer.toString());
    }

    public int getYears() {
        return m61506a(DatatypeConstants.YEARS);
    }

    public abstract int hashCode();

    public boolean isLongerThan(Duration duration) {
        return compare(duration) == 1;
    }

    public abstract boolean isSet(DatatypeConstants.Field field);

    public boolean isShorterThan(Duration duration) {
        return compare(duration) == -1;
    }

    public Duration multiply(int i) {
        return multiply(BigDecimal.valueOf(i));
    }

    public abstract Duration multiply(BigDecimal bigDecimal);

    public abstract Duration negate();

    public abstract Duration normalizeWith(Calendar calendar);

    public Duration subtract(Duration duration) {
        return add(duration.negate());
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (getSign() < 0) {
            stringBuffer.append('-');
        }
        stringBuffer.append('P');
        BigInteger bigInteger = (BigInteger) getField(DatatypeConstants.YEARS);
        if (bigInteger != null) {
            stringBuffer.append(bigInteger);
            stringBuffer.append('Y');
        }
        BigInteger bigInteger2 = (BigInteger) getField(DatatypeConstants.MONTHS);
        if (bigInteger2 != null) {
            stringBuffer.append(bigInteger2);
            stringBuffer.append('M');
        }
        BigInteger bigInteger3 = (BigInteger) getField(DatatypeConstants.DAYS);
        if (bigInteger3 != null) {
            stringBuffer.append(bigInteger3);
            stringBuffer.append('D');
        }
        BigInteger bigInteger4 = (BigInteger) getField(DatatypeConstants.HOURS);
        BigInteger bigInteger5 = (BigInteger) getField(DatatypeConstants.MINUTES);
        BigDecimal bigDecimal = (BigDecimal) getField(DatatypeConstants.SECONDS);
        if (bigInteger4 != null || bigInteger5 != null || bigDecimal != null) {
            stringBuffer.append('T');
            if (bigInteger4 != null) {
                stringBuffer.append(bigInteger4);
                stringBuffer.append('H');
            }
            if (bigInteger5 != null) {
                stringBuffer.append(bigInteger5);
                stringBuffer.append('M');
            }
            if (bigDecimal != null) {
                stringBuffer.append(toString(bigDecimal));
                stringBuffer.append('S');
            }
        }
        return stringBuffer.toString();
    }

    public long getTimeInMillis(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        addTo(gregorianCalendar);
        return getCalendarTimeInMillis(gregorianCalendar) - date.getTime();
    }

    public final String toString(BigDecimal bigDecimal) {
        StringBuffer stringBuffer;
        String bigInteger = bigDecimal.unscaledValue().toString();
        int scale = bigDecimal.scale();
        if (scale == 0) {
            return bigInteger;
        }
        int length = bigInteger.length() - scale;
        if (length == 0) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("0.");
            stringBuffer2.append(bigInteger);
            return stringBuffer2.toString();
        }
        if (length > 0) {
            stringBuffer = new StringBuffer(bigInteger);
            stringBuffer.insert(length, '.');
        } else {
            StringBuffer stringBuffer3 = new StringBuffer((3 - length) + bigInteger.length());
            stringBuffer3.append("0.");
            for (int i = 0; i < (-length); i++) {
                stringBuffer3.append('0');
            }
            stringBuffer3.append(bigInteger);
            stringBuffer = stringBuffer3;
        }
        return stringBuffer.toString();
    }
}
