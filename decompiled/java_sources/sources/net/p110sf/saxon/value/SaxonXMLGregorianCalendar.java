package net.p110sf.saxon.value;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;
import net.p110sf.saxon.expr.sort.SimpleTypeComparison;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SaxonXMLGregorianCalendar extends XMLGregorianCalendar {

    /* renamed from: e */
    public CalendarValue f102907e;

    /* renamed from: f */
    public BigInteger f102908f;

    /* renamed from: g */
    public int f102909g = Integer.MIN_VALUE;

    /* renamed from: h */
    public int f102910h = Integer.MIN_VALUE;

    /* renamed from: i */
    public int f102911i = Integer.MIN_VALUE;

    /* renamed from: j */
    public int f102912j = Integer.MIN_VALUE;

    /* renamed from: k */
    public int f102913k = Integer.MIN_VALUE;

    /* renamed from: l */
    public int f102914l = Integer.MIN_VALUE;

    /* renamed from: m */
    public int f102915m = Integer.MIN_VALUE;

    public SaxonXMLGregorianCalendar(CalendarValue calendarValue) {
        clear();
        setCalendarValue(calendarValue);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void add(Duration duration) {
        try {
            setCalendarValue(toCalendarValue().add(((SaxonDuration) duration).getDurationValue()));
        } catch (XPathException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void clear() {
        this.f102908f = null;
        this.f102909g = Integer.MIN_VALUE;
        this.f102910h = Integer.MIN_VALUE;
        this.f102911i = Integer.MIN_VALUE;
        this.f102912j = Integer.MIN_VALUE;
        this.f102913k = Integer.MIN_VALUE;
        this.f102914l = Integer.MIN_VALUE;
        this.f102915m = Integer.MIN_VALUE;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public Object clone() {
        SaxonXMLGregorianCalendar saxonXMLGregorianCalendar = new SaxonXMLGregorianCalendar();
        saxonXMLGregorianCalendar.setYear(this.f102908f);
        saxonXMLGregorianCalendar.setMonth(this.f102909g);
        saxonXMLGregorianCalendar.setDay(this.f102910h);
        saxonXMLGregorianCalendar.setHour(this.f102911i);
        saxonXMLGregorianCalendar.setMinute(this.f102912j);
        saxonXMLGregorianCalendar.setSecond(this.f102913k);
        saxonXMLGregorianCalendar.setMillisecond(this.f102914l / 1000);
        saxonXMLGregorianCalendar.setTimezone(this.f102915m);
        return saxonXMLGregorianCalendar;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int compare(XMLGregorianCalendar xMLGregorianCalendar) {
        return SimpleTypeComparison.getInstance().compareItems(toCalendarValue(), ((SaxonXMLGregorianCalendar) xMLGregorianCalendar).toCalendarValue());
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getDay() {
        return this.f102910h;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public BigInteger getEon() {
        return this.f102908f.divide(BigInteger.valueOf(1000000000L));
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public BigInteger getEonAndYear() {
        return this.f102908f;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public BigDecimal getFractionalSecond() {
        if (this.f102913k == Integer.MIN_VALUE) {
            return null;
        }
        return BigDecimal.valueOf(this.f102914l).movePointLeft(6);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getHour() {
        return this.f102911i;
    }

    public int getMicrosecond() {
        if (getFractionalSecond() == null) {
            return Integer.MIN_VALUE;
        }
        return getFractionalSecond().movePointRight(6).intValue();
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getMinute() {
        return this.f102912j;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getMonth() {
        return this.f102909g;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getSecond() {
        return this.f102913k;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public TimeZone getTimeZone(int i) {
        return this.f102915m == Integer.MIN_VALUE ? i == Integer.MIN_VALUE ? new GregorianCalendar().getTimeZone() : new SimpleTimeZone(i * 60000, "XXX") : new SimpleTimeZone(this.f102915m * 60000, "XXX");
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getTimezone() {
        return this.f102915m;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public QName getXMLSchemaType() {
        return this.f102913k == Integer.MIN_VALUE ? this.f102908f == null ? this.f102909g == Integer.MIN_VALUE ? DatatypeConstants.GDAY : this.f102910h == Integer.MIN_VALUE ? DatatypeConstants.GMONTH : DatatypeConstants.GMONTHDAY : this.f102910h == Integer.MIN_VALUE ? this.f102909g == Integer.MIN_VALUE ? DatatypeConstants.GYEAR : DatatypeConstants.GYEARMONTH : DatatypeConstants.DATE : this.f102908f == null ? DatatypeConstants.TIME : DatatypeConstants.DATETIME;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getYear() {
        return this.f102908f.intValue();
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public boolean isValid() {
        return true;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public XMLGregorianCalendar normalize() {
        return new SaxonXMLGregorianCalendar(toCalendarValue().adjustTimezone(0));
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void reset() {
        clear();
    }

    public void setCalendarValue(CalendarValue calendarValue) {
        this.f102907e = calendarValue;
        try {
            if (calendarValue instanceof GYearValue) {
                this.f102908f = BigInteger.valueOf(((Int64Value) calendarValue.getComponent(AccessorFn.Component.YEAR)).longValue());
                return;
            }
            if (calendarValue instanceof GYearMonthValue) {
                this.f102908f = BigInteger.valueOf(((Int64Value) calendarValue.getComponent(AccessorFn.Component.YEAR)).longValue());
                this.f102909g = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.MONTH)).longValue();
                return;
            }
            if (calendarValue instanceof GMonthValue) {
                this.f102909g = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.MONTH)).longValue();
                return;
            }
            if (calendarValue instanceof GMonthDayValue) {
                this.f102909g = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.MONTH)).longValue();
                this.f102910h = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.DAY)).longValue();
                return;
            }
            if (calendarValue instanceof GDayValue) {
                this.f102910h = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.DAY)).longValue();
                return;
            }
            if (calendarValue instanceof DateValue) {
                this.f102908f = BigInteger.valueOf(((Int64Value) calendarValue.getComponent(AccessorFn.Component.YEAR)).longValue());
                this.f102909g = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.MONTH)).longValue();
                this.f102910h = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.DAY)).longValue();
            } else {
                if (calendarValue instanceof TimeValue) {
                    this.f102911i = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.HOURS)).longValue();
                    this.f102912j = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.MINUTES)).longValue();
                    this.f102913k = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.WHOLE_SECONDS)).longValue();
                    this.f102914l = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.MICROSECONDS)).longValue();
                    return;
                }
                this.f102908f = BigInteger.valueOf(((Int64Value) calendarValue.getComponent(AccessorFn.Component.YEAR)).longValue());
                this.f102909g = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.MONTH)).longValue();
                this.f102910h = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.DAY)).longValue();
                this.f102911i = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.HOURS)).longValue();
                this.f102912j = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.MINUTES)).longValue();
                this.f102913k = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.WHOLE_SECONDS)).longValue();
                this.f102914l = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.MICROSECONDS)).longValue();
            }
        } catch (XPathException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setDay(int i) {
        this.f102907e = null;
        this.f102910h = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setFractionalSecond(BigDecimal bigDecimal) {
        this.f102907e = null;
        this.f102913k = bigDecimal.intValue();
        this.f102914l = bigDecimal.movePointRight(6).toBigInteger().remainder(BigInteger.valueOf(1000000L)).intValue();
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setHour(int i) {
        this.f102907e = null;
        this.f102911i = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setMillisecond(int i) {
        this.f102907e = null;
        this.f102914l = i * 1000;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setMinute(int i) {
        this.f102907e = null;
        this.f102912j = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setMonth(int i) {
        this.f102907e = null;
        this.f102909g = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setSecond(int i) {
        this.f102907e = null;
        this.f102913k = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setTimezone(int i) {
        this.f102907e = null;
        this.f102915m = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setYear(BigInteger bigInteger) {
        this.f102907e = null;
        this.f102908f = bigInteger;
    }

    public CalendarValue toCalendarValue() {
        CalendarValue calendarValue = this.f102907e;
        if (calendarValue != null) {
            return calendarValue;
        }
        int i = this.f102913k;
        return i == Integer.MIN_VALUE ? this.f102908f == null ? this.f102909g == Integer.MIN_VALUE ? new GDayValue((byte) this.f102910h, this.f102915m) : this.f102910h == Integer.MIN_VALUE ? new GMonthValue((byte) this.f102909g, this.f102915m) : new GMonthDayValue((byte) this.f102909g, (byte) this.f102910h, this.f102915m) : this.f102910h == Integer.MIN_VALUE ? this.f102909g == Integer.MIN_VALUE ? new GYearValue(this.f102908f.intValue(), this.f102915m, true) : new GYearMonthValue(this.f102908f.intValue(), (byte) this.f102909g, this.f102915m, true) : new DateValue(this.f102908f.intValue(), (byte) this.f102909g, (byte) this.f102910h, this.f102915m, true) : this.f102908f == null ? new TimeValue((byte) this.f102911i, (byte) this.f102912j, (byte) i, getMicrosecond() * 1000, this.f102915m, "") : new DateTimeValue(this.f102908f.intValue(), (byte) this.f102909g, (byte) this.f102910h, (byte) this.f102911i, (byte) this.f102912j, (byte) this.f102913k, getMicrosecond(), this.f102915m, true);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public GregorianCalendar toGregorianCalendar() {
        return toCalendarValue().getCalendar();
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public String toXMLFormat() {
        return toCalendarValue().getStringValue();
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public GregorianCalendar toGregorianCalendar(TimeZone timeZone, Locale locale, XMLGregorianCalendar xMLGregorianCalendar) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, locale);
        gregorianCalendar.setGregorianChange(new Date(Long.MIN_VALUE));
        BigInteger bigInteger = this.f102908f;
        gregorianCalendar.set(0, bigInteger == null ? xMLGregorianCalendar.getYear() > 0 ? 1 : -1 : bigInteger.signum());
        BigInteger bigInteger2 = this.f102908f;
        gregorianCalendar.set(1, bigInteger2 == null ? xMLGregorianCalendar.getYear() : bigInteger2.abs().intValue());
        int i = this.f102909g;
        if (i == Integer.MIN_VALUE) {
            i = xMLGregorianCalendar.getMonth();
        }
        gregorianCalendar.set(2, i);
        int i2 = this.f102910h;
        if (i2 == Integer.MIN_VALUE) {
            i2 = xMLGregorianCalendar.getDay();
        }
        gregorianCalendar.set(5, i2);
        int i3 = this.f102911i;
        if (i3 == Integer.MIN_VALUE) {
            i3 = xMLGregorianCalendar.getHour();
        }
        gregorianCalendar.set(10, i3);
        int i4 = this.f102912j;
        if (i4 == Integer.MIN_VALUE) {
            i4 = xMLGregorianCalendar.getMinute();
        }
        gregorianCalendar.set(12, i4);
        int i5 = this.f102913k;
        if (i5 == Integer.MIN_VALUE) {
            i5 = xMLGregorianCalendar.getSecond();
        }
        gregorianCalendar.set(13, i5);
        int i6 = this.f102914l;
        gregorianCalendar.set(14, i6 == Integer.MIN_VALUE ? xMLGregorianCalendar.getMillisecond() : i6 / 1000);
        return gregorianCalendar;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setYear(int i) {
        this.f102907e = null;
        this.f102908f = BigInteger.valueOf(i);
    }

    public SaxonXMLGregorianCalendar() {
    }
}
