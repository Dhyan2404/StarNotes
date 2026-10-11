package net.p110sf.saxon.s9api;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URI;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZonedDateTime;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.StringToDouble;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.DateValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.FloatValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.QualifiedNameValue;
import net.p110sf.saxon.value.StringToDouble11;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XdmAtomicValue extends XdmItem {
    public XdmAtomicValue(AtomicValue atomicValue) {
        super(atomicValue);
    }

    /* renamed from: a */
    public static AtomicValue m63677a(String str, ItemType itemType) throws SaxonApiException {
        ItemType underlyingItemType = itemType.getUnderlyingItemType();
        if (!underlyingItemType.isPlainType()) {
            throw new SaxonApiException("Requested type is not atomic");
        }
        AtomicType atomicType = (AtomicType) underlyingItemType;
        if (atomicType.isAbstract()) {
            throw new SaxonApiException("Requested type is an abstract type");
        }
        if (atomicType.isNamespaceSensitive()) {
            throw new SaxonApiException("Requested type is namespace-sensitive");
        }
        try {
            return ((AtomicType) underlyingItemType).getStringConverter(itemType.getConversionRules()).convertString(StringView.m63901of(str).tidy()).asAtomic();
        } catch (ValidationException e) {
            throw new SaxonApiException(e);
        }
    }

    public static XdmAtomicValue makeAtomicValue(Object obj) {
        if (obj instanceof AtomicValue) {
            return new XdmAtomicValue((AtomicValue) obj);
        }
        if (obj instanceof Boolean) {
            return new XdmAtomicValue(((Boolean) obj).booleanValue());
        }
        if (obj instanceof Integer) {
            return new XdmAtomicValue(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            return new XdmAtomicValue(((Long) obj).longValue());
        }
        if (obj instanceof Short) {
            return new XdmAtomicValue(((Short) obj).shortValue());
        }
        if (obj instanceof Character) {
            return new XdmAtomicValue((int) ((Character) obj).charValue());
        }
        if (obj instanceof Byte) {
            return new XdmAtomicValue(((Byte) obj).byteValue());
        }
        if (obj instanceof String) {
            return new XdmAtomicValue((String) obj);
        }
        if (obj instanceof Double) {
            return new XdmAtomicValue(((Double) obj).doubleValue());
        }
        if (obj instanceof Float) {
            return new XdmAtomicValue(((Float) obj).floatValue());
        }
        if (obj instanceof BigDecimal) {
            return new XdmAtomicValue((BigDecimal) obj);
        }
        if (obj instanceof BigInteger) {
            return new XdmAtomicValue(IntegerValue.makeIntegerValue((BigInteger) obj));
        }
        if (obj instanceof URI) {
            return new XdmAtomicValue((URI) obj);
        }
        if (obj instanceof QName) {
            return new XdmAtomicValue((QName) obj);
        }
        if (obj instanceof ZonedDateTime) {
            return new XdmAtomicValue((ZonedDateTime) obj);
        }
        if (obj instanceof LocalDateTime) {
            return new XdmAtomicValue((LocalDateTime) obj);
        }
        if (obj instanceof LocalDate) {
            return new XdmAtomicValue((LocalDate) obj);
        }
        if (obj instanceof XdmAtomicValue) {
            return (XdmAtomicValue) obj;
        }
        throw new IllegalArgumentException(obj.toString());
    }

    public boolean equals(Object obj) {
        if (obj instanceof XdmAtomicValue) {
            return getUnderlyingValue().asMapKey().equals(((XdmAtomicValue) obj).getUnderlyingValue().asMapKey());
        }
        return false;
    }

    public boolean getBooleanValue() throws SaxonApiException {
        AtomicValue underlyingValue = getUnderlyingValue();
        if (underlyingValue instanceof BooleanValue) {
            return ((BooleanValue) underlyingValue).getBooleanValue();
        }
        if (underlyingValue instanceof NumericValue) {
            return (underlyingValue.isNaN() || ((NumericValue) underlyingValue).signum() == 0) ? false : true;
        }
        if (!(underlyingValue instanceof StringValue)) {
            throw new SaxonApiException("Cannot cast item to a boolean");
        }
        String obj = Whitespace.trim(underlyingValue.getUnicodeStringValue().tidy()).toString();
        return "1".equals(obj) || "true".equals(obj);
    }

    public BigDecimal getDecimalValue() throws SaxonApiException {
        AtomicValue underlyingValue = getUnderlyingValue();
        if (underlyingValue instanceof BooleanValue) {
            return ((BooleanValue) underlyingValue).getBooleanValue() ? BigDecimal.ZERO : BigDecimal.ONE;
        }
        if (underlyingValue instanceof NumericValue) {
            try {
                return ((NumericValue) underlyingValue).getDecimalValue();
            } catch (XPathException unused) {
                throw new SaxonApiException("Cannot cast item to a decimal");
            }
        }
        if (underlyingValue instanceof StringValue) {
            return new BigDecimal(underlyingValue.getStringValue());
        }
        throw new SaxonApiException("Cannot cast item to a decimal");
    }

    public double getDoubleValue() throws SaxonApiException {
        AtomicValue underlyingValue = getUnderlyingValue();
        if (underlyingValue instanceof BooleanValue) {
            return ((BooleanValue) underlyingValue).getBooleanValue() ? 0.0d : 1.0d;
        }
        if (underlyingValue instanceof NumericValue) {
            return ((NumericValue) underlyingValue).getDoubleValue();
        }
        if (!(underlyingValue instanceof StringValue)) {
            throw new SaxonApiException("Cannot cast item to a double");
        }
        try {
            return StringToDouble11.getInstance().stringToNumber(underlyingValue.getUnicodeStringValue().tidy());
        } catch (NumberFormatException e) {
            throw new SaxonApiException(e.getMessage());
        }
    }

    public Instant getInstant() {
        AtomicValue underlyingValue = getUnderlyingValue();
        if (!(underlyingValue instanceof DateTimeValue)) {
            return null;
        }
        DateTimeValue dateTimeValue = (DateTimeValue) underlyingValue;
        if (dateTimeValue.hasTimezone()) {
            return dateTimeValue.toJavaInstant();
        }
        return null;
    }

    public LocalDate getLocalDate() {
        AtomicValue underlyingValue = getUnderlyingValue();
        if (underlyingValue instanceof DateValue) {
            return ((DateValue) underlyingValue).toLocalDate();
        }
        return null;
    }

    public LocalDateTime getLocalDateTime() {
        AtomicValue underlyingValue = getUnderlyingValue();
        if (underlyingValue instanceof DateTimeValue) {
            return ((DateTimeValue) underlyingValue).toLocalDateTime();
        }
        return null;
    }

    public long getLongValue() throws SaxonApiException {
        AtomicValue underlyingValue = getUnderlyingValue();
        if (underlyingValue instanceof BooleanValue) {
            return ((BooleanValue) underlyingValue).getBooleanValue() ? 0L : 1L;
        }
        if (underlyingValue instanceof NumericValue) {
            try {
                return ((NumericValue) underlyingValue).longValue();
            } catch (XPathException unused) {
                throw new SaxonApiException("Cannot cast item to an integer");
            }
        }
        if (underlyingValue instanceof StringValue) {
            return (long) StringToDouble.getInstance().stringToNumber(underlyingValue.getUnicodeStringValue().tidy());
        }
        throw new SaxonApiException("Cannot cast item to an integer");
    }

    public OffsetDateTime getOffsetDateTime() {
        AtomicValue underlyingValue = getUnderlyingValue();
        if (!(underlyingValue instanceof DateTimeValue)) {
            return null;
        }
        DateTimeValue dateTimeValue = (DateTimeValue) underlyingValue;
        if (dateTimeValue.hasTimezone()) {
            return dateTimeValue.toOffsetDateTime();
        }
        return null;
    }

    public QName getPrimitiveTypeName() {
        return new QName(getUnderlyingValue().getPrimitiveType().getStructuredQName());
    }

    public QName getQNameValue() {
        AtomicValue underlyingValue = getUnderlyingValue();
        if (underlyingValue instanceof QualifiedNameValue) {
            return new QName(((QualifiedNameValue) underlyingValue).getStructuredQName());
        }
        return null;
    }

    public QName getTypeName() {
        return new QName(getUnderlyingValue().getItemType().getStructuredQName());
    }

    public Object getValue() {
        AtomicValue underlyingValue = getUnderlyingValue();
        if (underlyingValue instanceof StringValue) {
            return underlyingValue.getUnicodeStringValue();
        }
        if (underlyingValue instanceof IntegerValue) {
            return ((IntegerValue) underlyingValue).asBigInteger();
        }
        if (underlyingValue instanceof DoubleValue) {
            return Double.valueOf(((DoubleValue) underlyingValue).getDoubleValue());
        }
        if (underlyingValue instanceof FloatValue) {
            return Float.valueOf(((FloatValue) underlyingValue).getFloatValue());
        }
        if (underlyingValue instanceof BooleanValue) {
            return Boolean.valueOf(((BooleanValue) underlyingValue).getBooleanValue());
        }
        if (underlyingValue instanceof BigDecimalValue) {
            return ((BigDecimalValue) underlyingValue).getDecimalValue();
        }
        if (underlyingValue instanceof DateTimeValue) {
            DateTimeValue dateTimeValue = (DateTimeValue) underlyingValue;
            return dateTimeValue.hasTimezone() ? dateTimeValue.toZonedDateTime() : dateTimeValue.toLocalDateTime();
        }
        if (underlyingValue instanceof DateValue) {
            return ((DateValue) underlyingValue).toLocalDate();
        }
        if (!(underlyingValue instanceof QNameValue)) {
            return underlyingValue.getUnicodeStringValue();
        }
        QNameValue qNameValue = (QNameValue) underlyingValue;
        return new QName(qNameValue.getPrefix(), qNameValue.getNamespaceURI(), qNameValue.getLocalName());
    }

    public ZonedDateTime getZonedDateTime() {
        AtomicValue underlyingValue = getUnderlyingValue();
        if (!(underlyingValue instanceof DateTimeValue)) {
            return null;
        }
        DateTimeValue dateTimeValue = (DateTimeValue) underlyingValue;
        if (dateTimeValue.hasTimezone()) {
            return dateTimeValue.toZonedDateTime();
        }
        return null;
    }

    public int hashCode() {
        return getUnderlyingValue().asMapKey().hashCode();
    }

    @Override // net.p110sf.saxon.s9api.XdmValue
    public String toString() {
        return getStringValue();
    }

    public XdmAtomicValue(boolean z) {
        this(BooleanValue.get(z));
    }

    public XdmAtomicValue(long j) {
        this(Int64Value.makeDerived(j, BuiltInAtomicType.LONG));
    }

    @Override // net.p110sf.saxon.s9api.XdmItem, net.p110sf.saxon.s9api.XdmValue
    public AtomicValue getUnderlyingValue() {
        return (AtomicValue) super.getUnderlyingValue();
    }

    public XdmAtomicValue(int i) {
        this(Int64Value.makeDerived(i, BuiltInAtomicType.INT));
    }

    public XdmAtomicValue(short s) {
        this(Int64Value.makeDerived(s, BuiltInAtomicType.SHORT));
    }

    public XdmAtomicValue(byte b) {
        this(Int64Value.makeDerived(b, BuiltInAtomicType.BYTE));
    }

    public XdmAtomicValue(BigDecimal bigDecimal) {
        this(new BigDecimalValue(bigDecimal));
    }

    public XdmAtomicValue(double d) {
        this(new DoubleValue(d));
    }

    public XdmAtomicValue(float f) {
        this(new FloatValue(f));
    }

    public XdmAtomicValue(String str) {
        this(new StringValue(str));
    }

    public XdmAtomicValue(URI uri) {
        this(new AnyURIValue(uri.toString()));
    }

    public XdmAtomicValue(QName qName) {
        this(new QNameValue(qName.getStructuredQName(), BuiltInAtomicType.QNAME));
    }

    public XdmAtomicValue(Instant instant) {
        this(DateTimeValue.fromJavaInstant(instant));
    }

    public XdmAtomicValue(ZonedDateTime zonedDateTime) {
        this(DateTimeValue.fromZonedDateTime(zonedDateTime));
    }

    public XdmAtomicValue(OffsetDateTime offsetDateTime) {
        this(DateTimeValue.fromOffsetDateTime(offsetDateTime));
    }

    public XdmAtomicValue(LocalDateTime localDateTime) {
        this(DateTimeValue.fromLocalDateTime(localDateTime));
    }

    public XdmAtomicValue(LocalDate localDate) {
        this(new DateValue(localDate));
    }

    public XdmAtomicValue(String str, ItemType itemType) throws SaxonApiException {
        super(m63677a(str, itemType));
    }
}
