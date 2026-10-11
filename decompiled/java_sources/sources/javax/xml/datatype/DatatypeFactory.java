package javax.xml.datatype;

import com.sunia.HTREnginev2.ldm;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.GregorianCalendar;
import javax.xml.datatype.FactoryFinder;

/* loaded from: classes5.dex */
public abstract class DatatypeFactory {
    public static final String DATATYPEFACTORY_IMPLEMENTATION_CLASS = new String("org.apache.xerces.jaxp.datatype.DatatypeFactoryImpl");
    public static final String DATATYPEFACTORY_PROPERTY = "javax.xml.datatype.DatatypeFactory";

    public static DatatypeFactory newInstance() throws DatatypeConfigurationException {
        try {
            return (DatatypeFactory) FactoryFinder.m61508b(DATATYPEFACTORY_PROPERTY, DATATYPEFACTORY_IMPLEMENTATION_CLASS);
        } catch (FactoryFinder.ConfigurationError e) {
            throw new DatatypeConfigurationException(e.getMessage(), e.getException());
        }
    }

    public abstract Duration newDuration(long j);

    public abstract Duration newDuration(String str);

    public Duration newDuration(boolean z, int i, int i2, int i3, int i4, int i5, int i6) {
        return newDuration(z, i != Integer.MIN_VALUE ? BigInteger.valueOf(i) : null, i2 != Integer.MIN_VALUE ? BigInteger.valueOf(i2) : null, i3 != Integer.MIN_VALUE ? BigInteger.valueOf(i3) : null, i4 != Integer.MIN_VALUE ? BigInteger.valueOf(i4) : null, i5 != Integer.MIN_VALUE ? BigInteger.valueOf(i5) : null, i6 != Integer.MIN_VALUE ? BigDecimal.valueOf(i6) : null);
    }

    public abstract Duration newDuration(boolean z, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigDecimal bigDecimal);

    public Duration newDurationDayTime(long j) {
        boolean z;
        if (j == 0) {
            return newDuration(true, Integer.MIN_VALUE, Integer.MIN_VALUE, 0, 0, 0, 0);
        }
        boolean z2 = false;
        boolean z3 = true;
        if (j < 0) {
            if (j == Long.MIN_VALUE) {
                j++;
            } else {
                z3 = false;
            }
            j *= -1;
            z = false;
            z2 = z3;
        } else {
            z = true;
        }
        int i = (int) (j % 60000);
        if (z2) {
            i++;
        }
        if (i % 1000 != 0) {
            BigDecimal valueOf = BigDecimal.valueOf(i, 3);
            long j2 = j / 60000;
            BigInteger valueOf2 = BigInteger.valueOf(j2 % 60);
            long j3 = j2 / 60;
            return newDuration(z, (BigInteger) null, (BigInteger) null, BigInteger.valueOf(j3 / 24), BigInteger.valueOf(j3 % 24), valueOf2, valueOf);
        }
        long j4 = j / 60000;
        int i2 = (int) (j4 % 60);
        long j5 = j4 / 60;
        int i3 = (int) (j5 % 24);
        long j6 = j5 / 24;
        return j6 <= 2147483647L ? newDuration(z, Integer.MIN_VALUE, Integer.MIN_VALUE, (int) j6, i3, i2, i / 1000) : newDuration(z, (BigInteger) null, (BigInteger) null, BigInteger.valueOf(j6), BigInteger.valueOf(i3), BigInteger.valueOf(i2), BigDecimal.valueOf(i, 3));
    }

    public Duration newDurationYearMonth(long j) {
        return newDuration(j);
    }

    public abstract XMLGregorianCalendar newXMLGregorianCalendar();

    public XMLGregorianCalendar newXMLGregorianCalendar(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        BigDecimal bigDecimal = null;
        BigInteger valueOf = i != Integer.MIN_VALUE ? BigInteger.valueOf(i) : null;
        if (i7 != Integer.MIN_VALUE) {
            if (i7 < 0 || i7 > 1000) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendar(int year, int month, int day, int hour, int minute, int second, int millisecond, int timezone)with invalid millisecond: ");
                stringBuffer.append(i7);
                throw new IllegalArgumentException(stringBuffer.toString());
            }
            bigDecimal = BigDecimal.valueOf(i7, 3);
        }
        return newXMLGregorianCalendar(valueOf, i2, i3, i4, i5, i6, bigDecimal, i8);
    }

    public abstract XMLGregorianCalendar newXMLGregorianCalendar(String str);

    public abstract XMLGregorianCalendar newXMLGregorianCalendar(BigInteger bigInteger, int i, int i2, int i3, int i4, int i5, BigDecimal bigDecimal, int i6);

    public abstract XMLGregorianCalendar newXMLGregorianCalendar(GregorianCalendar gregorianCalendar);

    public XMLGregorianCalendar newXMLGregorianCalendarDate(int i, int i2, int i3, int i4) {
        return newXMLGregorianCalendar(i, i2, i3, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, i4);
    }

    public XMLGregorianCalendar newXMLGregorianCalendarTime(int i, int i2, int i3, int i4) {
        return newXMLGregorianCalendar(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, i, i2, i3, Integer.MIN_VALUE, i4);
    }

    public static DatatypeFactory newInstance(String str, ClassLoader classLoader) throws DatatypeConfigurationException {
        if (str == null) {
            throw new DatatypeConfigurationException("factoryClassName cannot be null.");
        }
        if (classLoader == null) {
            classLoader = ldm.m55409b();
        }
        try {
            return (DatatypeFactory) FactoryFinder.m61511e(str, classLoader);
        } catch (FactoryFinder.ConfigurationError e) {
            throw new DatatypeConfigurationException(e.getMessage(), e.getException());
        }
    }

    public Duration newDurationDayTime(String str) {
        if (str == null) {
            throw new NullPointerException("The lexical representation cannot be null.");
        }
        int indexOf = str.indexOf(84);
        if (indexOf < 0) {
            indexOf = str.length();
        }
        for (int i = 0; i < indexOf; i++) {
            char charAt = str.charAt(i);
            if (charAt == 'Y' || charAt == 'M') {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Invalid dayTimeDuration value: ");
                stringBuffer.append(str);
                throw new IllegalArgumentException(stringBuffer.toString());
            }
        }
        return newDuration(str);
    }

    public Duration newDurationYearMonth(String str) {
        if (str == null) {
            throw new NullPointerException("The lexical representation cannot be null.");
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == 'D' || charAt == 'T') {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Invalid yearMonthDuration value: ");
                stringBuffer.append(str);
                throw new IllegalArgumentException(stringBuffer.toString());
            }
        }
        return newDuration(str);
    }

    public XMLGregorianCalendar newXMLGregorianCalendarTime(int i, int i2, int i3, int i4, int i5) {
        BigDecimal bigDecimal;
        if (i4 == Integer.MIN_VALUE) {
            bigDecimal = null;
        } else {
            if (i4 < 0 || i4 > 1000) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendarTime(int hours, int minutes, int seconds, int milliseconds, int timezone)with invalid milliseconds: ");
                stringBuffer.append(i4);
                throw new IllegalArgumentException(stringBuffer.toString());
            }
            bigDecimal = BigDecimal.valueOf(i4, 3);
        }
        return newXMLGregorianCalendarTime(i, i2, i3, bigDecimal, i5);
    }

    public Duration newDurationDayTime(boolean z, int i, int i2, int i3, int i4) {
        return newDuration(z, Integer.MIN_VALUE, Integer.MIN_VALUE, i, i2, i3, i4);
    }

    public Duration newDurationYearMonth(boolean z, int i, int i2) {
        return newDuration(z, i, i2, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public XMLGregorianCalendar newXMLGregorianCalendarTime(int i, int i2, int i3, BigDecimal bigDecimal, int i4) {
        return newXMLGregorianCalendar((BigInteger) null, Integer.MIN_VALUE, Integer.MIN_VALUE, i, i2, i3, bigDecimal, i4);
    }

    public Duration newDurationDayTime(boolean z, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        return newDuration(z, (BigInteger) null, (BigInteger) null, bigInteger, bigInteger2, bigInteger3, bigInteger4 != null ? new BigDecimal(bigInteger4) : null);
    }

    public Duration newDurationYearMonth(boolean z, BigInteger bigInteger, BigInteger bigInteger2) {
        return newDuration(z, bigInteger, bigInteger2, (BigInteger) null, (BigInteger) null, (BigInteger) null, (BigDecimal) null);
    }
}
