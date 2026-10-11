package net.p110sf.saxon.value;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Calendar;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.Duration;
import javax.xml.namespace.QName;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SaxonDuration extends Duration {

    /* renamed from: e */
    public final DurationValue f102906e;

    public SaxonDuration(DurationValue durationValue) {
        this.f102906e = durationValue;
    }

    @Override // javax.xml.datatype.Duration
    public Duration add(Duration duration) {
        try {
            return new SaxonDuration(this.f102906e.add(((SaxonDuration) duration).f102906e));
        } catch (XPathException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // javax.xml.datatype.Duration
    public void addTo(Calendar calendar) {
        int sign = getSign();
        if (sign == 0) {
            return;
        }
        calendar.add(1, getYears() * sign);
        calendar.add(2, getMonths() * sign);
        calendar.add(5, getDays() * sign);
        calendar.add(11, getHours() * sign);
        calendar.add(12, getMinutes() * sign);
        calendar.add(13, ((int) ((Int64Value) this.f102906e.getComponent(AccessorFn.Component.WHOLE_SECONDS)).longValue()) * sign);
        calendar.add(14, (((int) ((Int64Value) this.f102906e.getComponent(AccessorFn.Component.MICROSECONDS)).longValue()) * sign) / 1000);
    }

    @Override // javax.xml.datatype.Duration
    public int compare(Duration duration) {
        if (!(duration instanceof SaxonDuration)) {
            throw new IllegalArgumentException("Supplied duration is not a SaxonDuration");
        }
        try {
            return this.f102906e.getXPathComparable(null, 0).compareTo(((SaxonDuration) duration).f102906e.getXPathComparable(null, 0));
        } catch (NoDynamicContextException e) {
            throw new AssertionError(e);
        }
    }

    public DurationValue getDurationValue() {
        return this.f102906e;
    }

    @Override // javax.xml.datatype.Duration
    public Number getField(DatatypeConstants.Field field) {
        if (field == DatatypeConstants.YEARS) {
            return BigInteger.valueOf(((Int64Value) this.f102906e.getComponent(AccessorFn.Component.YEAR)).longValue());
        }
        if (field == DatatypeConstants.MONTHS) {
            return BigInteger.valueOf(((Int64Value) this.f102906e.getComponent(AccessorFn.Component.MONTH)).longValue());
        }
        if (field == DatatypeConstants.DAYS) {
            return BigInteger.valueOf(((Int64Value) this.f102906e.getComponent(AccessorFn.Component.DAY)).longValue());
        }
        if (field == DatatypeConstants.HOURS) {
            return BigInteger.valueOf(((Int64Value) this.f102906e.getComponent(AccessorFn.Component.HOURS)).longValue());
        }
        if (field == DatatypeConstants.MINUTES) {
            return BigInteger.valueOf(((Int64Value) this.f102906e.getComponent(AccessorFn.Component.MINUTES)).longValue());
        }
        if (field == DatatypeConstants.SECONDS) {
            return ((BigDecimalValue) this.f102906e.getComponent(AccessorFn.Component.SECONDS)).getDecimalValue();
        }
        throw new IllegalArgumentException("Invalid field");
    }

    @Override // javax.xml.datatype.Duration
    public int getSign() {
        return this.f102906e.signum();
    }

    @Override // javax.xml.datatype.Duration
    public QName getXMLSchemaType() {
        DurationValue durationValue = this.f102906e;
        return durationValue instanceof DayTimeDurationValue ? new QName("http://www.w3.org/2001/XMLSchema", "dayTimeDuration") : durationValue instanceof YearMonthDurationValue ? new QName("http://www.w3.org/2001/XMLSchema", "yearMonthDuration") : new QName("http://www.w3.org/2001/XMLSchema", "duration");
    }

    @Override // javax.xml.datatype.Duration
    public int hashCode() {
        return this.f102906e.hashCode();
    }

    @Override // javax.xml.datatype.Duration
    public boolean isSet(DatatypeConstants.Field field) {
        return true;
    }

    @Override // javax.xml.datatype.Duration
    public Duration multiply(BigDecimal bigDecimal) {
        try {
            return new SaxonDuration(this.f102906e.multiply(bigDecimal.doubleValue()));
        } catch (XPathException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // javax.xml.datatype.Duration
    public Duration negate() {
        return new SaxonDuration(this.f102906e.negate());
    }

    @Override // javax.xml.datatype.Duration
    public Duration normalizeWith(Calendar calendar) {
        throw new UnsupportedOperationException();
    }

    @Override // javax.xml.datatype.Duration
    public Duration subtract(Duration duration) {
        try {
            return new SaxonDuration(this.f102906e.subtract(((SaxonDuration) duration).f102906e));
        } catch (XPathException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}
