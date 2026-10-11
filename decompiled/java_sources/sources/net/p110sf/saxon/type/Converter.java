package net.p110sf.saxon.type;

import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Base64BinaryValue;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.BigIntegerValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.DateValue;
import net.p110sf.saxon.value.DayTimeDurationValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.DurationValue;
import net.p110sf.saxon.value.FloatValue;
import net.p110sf.saxon.value.GDayValue;
import net.p110sf.saxon.value.GMonthDayValue;
import net.p110sf.saxon.value.GMonthValue;
import net.p110sf.saxon.value.GYearMonthValue;
import net.p110sf.saxon.value.GYearValue;
import net.p110sf.saxon.value.HexBinaryValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NotationValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.TimeValue;
import net.p110sf.saxon.value.YearMonthDurationValue;

/* loaded from: classes11.dex */
public abstract class Converter {

    /* renamed from: a */
    public ConversionRules f102781a;

    /* loaded from: classes11.dex */
    public static class DoubleToDecimal extends Converter {
        public static final DoubleToDecimal INSTANCE = new DoubleToDecimal();

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            try {
                return new BigDecimalValue(((DoubleValue) atomicValue).getDoubleValue());
            } catch (ValidationException e) {
                return e.getValidationFailure();
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class DoubleToInteger extends Converter {
        public static final DoubleToInteger INSTANCE = new DoubleToInteger();

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            return IntegerValue.fromDouble(((DoubleValue) atomicValue).getDoubleValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class DownCastingConverter extends Converter {

        /* renamed from: b */
        public final AtomicType f102782b;

        public DownCastingConverter(AtomicType atomicType, ConversionRules conversionRules) {
            this.f102782b = atomicType;
            setConversionRules(conversionRules);
        }

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            return convert(atomicValue, atomicValue.getCanonicalLexicalRepresentation());
        }

        public AtomicType getTargetType() {
            return this.f102782b;
        }

        public ValidationFailure validate(AtomicValue atomicValue, UnicodeString unicodeString) {
            return this.f102782b.validate(atomicValue, unicodeString, getConversionRules());
        }

        public ConversionResult convert(AtomicValue atomicValue, UnicodeString unicodeString) {
            if (Type.isSubType(atomicValue.getItemType(), this.f102782b)) {
                return atomicValue;
            }
            if (atomicValue.getUType() != this.f102782b.getUType()) {
                return new ValidationFailure("Cannot convert " + atomicValue.toShortString() + " to " + this.f102782b.getDisplayName());
            }
            ValidationFailure validate = this.f102782b.validate(atomicValue, unicodeString, getConversionRules());
            return validate == null ? atomicValue.copyAsSubType(this.f102782b) : validate;
        }
    }

    /* loaded from: classes11.dex */
    public static class FloatToDecimal extends Converter {
        public static final FloatToDecimal INSTANCE = new FloatToDecimal();

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            try {
                return new BigDecimalValue(((FloatValue) atomicValue).getFloatValue());
            } catch (ValidationException e) {
                return e.getValidationFailure();
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class FloatToInteger extends Converter {
        public static final FloatToInteger INSTANCE = new FloatToInteger();

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            return IntegerValue.fromDouble(((FloatValue) atomicValue).getDoubleValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class IdentityConverter extends Converter {
        public static final IdentityConverter INSTANCE = new IdentityConverter();

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            return atomicValue;
        }

        @Override // net.p110sf.saxon.type.Converter
        public boolean isAlwaysSuccessful() {
            return true;
        }
    }

    /* loaded from: classes11.dex */
    public static class NumericToDecimal extends Converter {
        public static final NumericToDecimal INSTANCE = new NumericToDecimal();

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            try {
                return new BigDecimalValue(((NumericValue) atomicValue).getDecimalValue());
            } catch (ValidationException e) {
                return e.getValidationFailure();
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class NumericToInteger extends Converter {
        public static final NumericToInteger INSTANCE = new NumericToInteger();

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            NumericValue numericValue = (NumericValue) atomicValue;
            try {
                if (numericValue instanceof IntegerValue) {
                    return numericValue;
                }
                if (!(numericValue instanceof DoubleValue) && !(numericValue instanceof FloatValue)) {
                    return IntegerValue.makeIntegerValue(numericValue.getDecimalValue().toBigInteger());
                }
                return IntegerValue.fromDouble(numericValue.getDoubleValue());
            } catch (ValidationException e) {
                return e.getValidationFailure();
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class PromoterToDouble extends Converter {

        /* renamed from: b */
        public StringConverter f102783b = null;

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            if (atomicValue instanceof DoubleValue) {
                return atomicValue;
            }
            if (atomicValue instanceof NumericValue) {
                return new DoubleValue(((NumericValue) atomicValue).getDoubleValue());
            }
            if (atomicValue.isUntypedAtomic()) {
                if (this.f102783b == null) {
                    this.f102783b = BuiltInAtomicType.DOUBLE.getStringConverter(getConversionRules());
                }
                return this.f102783b.convert(atomicValue);
            }
            ValidationFailure validationFailure = new ValidationFailure("Cannot promote non-numeric value to xs:double");
            validationFailure.setErrorCode("XPTY0004");
            return validationFailure;
        }
    }

    /* loaded from: classes11.dex */
    public static class PromoterToFloat extends Converter {

        /* renamed from: b */
        public StringConverter f102784b = null;

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            if (atomicValue instanceof FloatValue) {
                return atomicValue;
            }
            if (atomicValue instanceof DoubleValue) {
                ValidationFailure validationFailure = new ValidationFailure("Cannot promote from xs:double to xs:float");
                validationFailure.setErrorCode("XPTY0004");
                return validationFailure;
            }
            if (atomicValue instanceof NumericValue) {
                return new FloatValue((float) ((NumericValue) atomicValue).getDoubleValue());
            }
            if (atomicValue.isUntypedAtomic()) {
                if (this.f102784b == null) {
                    this.f102784b = BuiltInAtomicType.FLOAT.getStringConverter(getConversionRules());
                }
                return this.f102784b.convert(atomicValue);
            }
            ValidationFailure validationFailure2 = new ValidationFailure("Cannot promote non-numeric value to xs:double");
            validationFailure2.setErrorCode("XPTY0004");
            return validationFailure2;
        }
    }

    /* loaded from: classes11.dex */
    public static class TwoPhaseConverter extends Converter {

        /* renamed from: b */
        public final Converter f102785b;

        /* renamed from: c */
        public final Converter f102786c;

        public TwoPhaseConverter(Converter converter, Converter converter2) {
            this.f102785b = converter;
            this.f102786c = converter2;
        }

        public static TwoPhaseConverter makeTwoPhaseConverter(AtomicType atomicType, AtomicType atomicType2, AtomicType atomicType3, ConversionRules conversionRules) {
            return new TwoPhaseConverter(conversionRules.getConverter(atomicType, atomicType2), conversionRules.getConverter(atomicType2, atomicType3));
        }

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            ConversionResult convert = this.f102785b.convert(atomicValue);
            if (convert instanceof ValidationFailure) {
                return convert;
            }
            AtomicValue atomicValue2 = (AtomicValue) convert;
            Converter converter = this.f102786c;
            return converter instanceof DownCastingConverter ? ((DownCastingConverter) converter).convert(atomicValue2, atomicValue2.getCanonicalLexicalRepresentation()) : converter.convert(atomicValue2);
        }

        @Override // net.p110sf.saxon.type.Converter
        public Converter setNamespaceResolver(NamespaceResolver namespaceResolver) {
            return new TwoPhaseConverter(this.f102785b.setNamespaceResolver(namespaceResolver), this.f102786c.setNamespaceResolver(namespaceResolver));
        }
    }

    /* loaded from: classes11.dex */
    public static abstract class UnfailingConverter extends Converter {
        @Override // net.p110sf.saxon.type.Converter
        public abstract AtomicValue convert(AtomicValue atomicValue);

        @Override // net.p110sf.saxon.type.Converter
        public final boolean isAlwaysSuccessful() {
            return true;
        }
    }

    /* loaded from: classes11.dex */
    public static class UpCastingConverter extends UnfailingConverter {

        /* renamed from: b */
        public final AtomicType f102787b;

        public UpCastingConverter(AtomicType atomicType) {
            this.f102787b = atomicType;
        }

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public AtomicValue convert(AtomicValue atomicValue) {
            return atomicValue.copyAsSubType(this.f102787b);
        }
    }

    public Converter() {
    }

    public static AtomicValue convert(AtomicValue atomicValue, AtomicType atomicType, ConversionRules conversionRules) throws ValidationException {
        Converter converter = conversionRules.getConverter(atomicValue.getPrimitiveType(), atomicType);
        if (converter != null) {
            return converter.convert(atomicValue).asAtomic();
        }
        ValidationFailure validationFailure = new ValidationFailure("Cannot convert value from " + atomicValue.getPrimitiveType() + " to " + atomicType);
        validationFailure.setErrorCode("FORG0001");
        throw validationFailure.makeException();
    }

    public abstract ConversionResult convert(AtomicValue atomicValue);

    public final ConversionRules getConversionRules() {
        return this.f102781a;
    }

    public NamespaceResolver getNamespaceResolver() {
        return null;
    }

    public boolean isAlwaysSuccessful() {
        return false;
    }

    public final void setConversionRules(ConversionRules conversionRules) {
        this.f102781a = conversionRules;
    }

    public Converter setNamespaceResolver(NamespaceResolver namespaceResolver) {
        return this;
    }

    /* loaded from: classes11.dex */
    public static class Base64BinaryToHexBinary extends UnfailingConverter {
        public static final Base64BinaryToHexBinary INSTANCE = new Base64BinaryToHexBinary();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public HexBinaryValue convert(AtomicValue atomicValue) {
            return new HexBinaryValue(((Base64BinaryValue) atomicValue).getBinaryValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class BooleanToDecimal extends UnfailingConverter {
        public static final BooleanToDecimal INSTANCE = new BooleanToDecimal();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public BigDecimalValue convert(AtomicValue atomicValue) {
            return ((BooleanValue) atomicValue).getBooleanValue() ? BigDecimalValue.ONE : BigDecimalValue.ZERO;
        }
    }

    /* loaded from: classes11.dex */
    public static class BooleanToDouble extends UnfailingConverter {
        public static final BooleanToDouble INSTANCE = new BooleanToDouble();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public DoubleValue convert(AtomicValue atomicValue) {
            return new DoubleValue(((BooleanValue) atomicValue).getBooleanValue() ? 1.0d : 0.0d);
        }
    }

    /* loaded from: classes11.dex */
    public static class BooleanToFloat extends UnfailingConverter {
        public static final BooleanToFloat INSTANCE = new BooleanToFloat();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public FloatValue convert(AtomicValue atomicValue) {
            return new FloatValue(((BooleanValue) atomicValue).getBooleanValue() ? 1.0f : 0.0f);
        }
    }

    /* loaded from: classes11.dex */
    public static class BooleanToInteger extends UnfailingConverter {
        public static final BooleanToInteger INSTANCE = new BooleanToInteger();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public Int64Value convert(AtomicValue atomicValue) {
            return ((BooleanValue) atomicValue).getBooleanValue() ? Int64Value.PLUS_ONE : Int64Value.ZERO;
        }
    }

    /* loaded from: classes11.dex */
    public static class DateTimeToDate extends UnfailingConverter {
        public static final DateTimeToDate INSTANCE = new DateTimeToDate();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public DateValue convert(AtomicValue atomicValue) {
            DateTimeValue dateTimeValue = (DateTimeValue) atomicValue;
            return new DateValue(dateTimeValue.getYear(), dateTimeValue.getMonth(), dateTimeValue.getDay(), dateTimeValue.getTimezoneInMinutes(), dateTimeValue.isXsd10Rules());
        }
    }

    /* loaded from: classes11.dex */
    public static class DateTimeToGDay extends UnfailingConverter {
        public static final DateTimeToGDay INSTANCE = new DateTimeToGDay();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public GDayValue convert(AtomicValue atomicValue) {
            DateTimeValue dateTimeValue = (DateTimeValue) atomicValue;
            return new GDayValue(dateTimeValue.getDay(), dateTimeValue.getTimezoneInMinutes());
        }
    }

    /* loaded from: classes11.dex */
    public static class DateTimeToGMonth extends UnfailingConverter {
        public static final DateTimeToGMonth INSTANCE = new DateTimeToGMonth();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public GMonthValue convert(AtomicValue atomicValue) {
            DateTimeValue dateTimeValue = (DateTimeValue) atomicValue;
            return new GMonthValue(dateTimeValue.getMonth(), dateTimeValue.getTimezoneInMinutes());
        }
    }

    /* loaded from: classes11.dex */
    public static class DateTimeToGMonthDay extends UnfailingConverter {
        public static final DateTimeToGMonthDay INSTANCE = new DateTimeToGMonthDay();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public GMonthDayValue convert(AtomicValue atomicValue) {
            DateTimeValue dateTimeValue = (DateTimeValue) atomicValue;
            return new GMonthDayValue(dateTimeValue.getMonth(), dateTimeValue.getDay(), dateTimeValue.getTimezoneInMinutes());
        }
    }

    /* loaded from: classes11.dex */
    public static class DateTimeToGYear extends UnfailingConverter {
        public static final DateTimeToGYear INSTANCE = new DateTimeToGYear();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public GYearValue convert(AtomicValue atomicValue) {
            DateTimeValue dateTimeValue = (DateTimeValue) atomicValue;
            return new GYearValue(dateTimeValue.getYear(), dateTimeValue.getTimezoneInMinutes(), dateTimeValue.isXsd10Rules());
        }
    }

    /* loaded from: classes11.dex */
    public static class DateTimeToGYearMonth extends UnfailingConverter {
        public static final DateTimeToGYearMonth INSTANCE = new DateTimeToGYearMonth();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public GYearMonthValue convert(AtomicValue atomicValue) {
            DateTimeValue dateTimeValue = (DateTimeValue) atomicValue;
            return new GYearMonthValue(dateTimeValue.getYear(), dateTimeValue.getMonth(), dateTimeValue.getTimezoneInMinutes(), dateTimeValue.isXsd10Rules());
        }
    }

    /* loaded from: classes11.dex */
    public static class DateTimeToTime extends UnfailingConverter {
        public static final DateTimeToTime INSTANCE = new DateTimeToTime();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public TimeValue convert(AtomicValue atomicValue) {
            DateTimeValue dateTimeValue = (DateTimeValue) atomicValue;
            return new TimeValue(dateTimeValue.getHour(), dateTimeValue.getMinute(), dateTimeValue.getSecond(), dateTimeValue.getNanosecond(), dateTimeValue.getTimezoneInMinutes(), "");
        }
    }

    /* loaded from: classes11.dex */
    public static class DateToDateTime extends UnfailingConverter {
        public static final DateToDateTime INSTANCE = new DateToDateTime();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public DateTimeValue convert(AtomicValue atomicValue) {
            return ((DateValue) atomicValue).toDateTime();
        }
    }

    /* loaded from: classes11.dex */
    public static class DecimalToInteger extends UnfailingConverter {
        public static final DecimalToInteger INSTANCE = new DecimalToInteger();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public IntegerValue convert(AtomicValue atomicValue) {
            if (atomicValue instanceof IntegerValue) {
                return (IntegerValue) atomicValue;
            }
            return IntegerValue.makeIntegerValue(((BigDecimalValue) atomicValue).getDecimalValue().toBigInteger());
        }
    }

    /* loaded from: classes11.dex */
    public static class DurationToDayTimeDuration extends UnfailingConverter {
        public static final DurationToDayTimeDuration INSTANCE = new DurationToDayTimeDuration();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public DayTimeDurationValue convert(AtomicValue atomicValue) {
            DurationValue durationValue = (DurationValue) atomicValue;
            if (durationValue.signum() < 0) {
                return new DayTimeDurationValue(-durationValue.getDays(), -durationValue.getHours(), -durationValue.getMinutes(), -durationValue.getSeconds(), -durationValue.getNanoseconds());
            }
            return new DayTimeDurationValue(durationValue.getDays(), durationValue.getHours(), durationValue.getMinutes(), durationValue.getSeconds(), durationValue.getNanoseconds());
        }
    }

    /* loaded from: classes11.dex */
    public static class DurationToYearMonthDuration extends UnfailingConverter {
        public static final DurationToYearMonthDuration INSTANCE = new DurationToYearMonthDuration();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public YearMonthDurationValue convert(AtomicValue atomicValue) {
            return YearMonthDurationValue.fromMonths(((DurationValue) atomicValue).getTotalMonths());
        }
    }

    /* loaded from: classes11.dex */
    public static class HexBinaryToBase64Binary extends UnfailingConverter {
        public static final HexBinaryToBase64Binary INSTANCE = new HexBinaryToBase64Binary();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public Base64BinaryValue convert(AtomicValue atomicValue) {
            return new Base64BinaryValue(((HexBinaryValue) atomicValue).getBinaryValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class IntegerToDecimal extends UnfailingConverter {
        public static final IntegerToDecimal INSTANCE = new IntegerToDecimal();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public BigDecimalValue convert(AtomicValue atomicValue) {
            if (atomicValue instanceof Int64Value) {
                return new BigDecimalValue(((Int64Value) atomicValue).longValue());
            }
            return new BigDecimalValue(((BigIntegerValue) atomicValue).asDecimal());
        }
    }

    /* loaded from: classes11.dex */
    public static class NotationToQName extends UnfailingConverter {
        public static final NotationToQName INSTANCE = new NotationToQName();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public QNameValue convert(AtomicValue atomicValue) {
            return new QNameValue(((NotationValue) atomicValue).getStructuredQName(), BuiltInAtomicType.QNAME);
        }
    }

    /* loaded from: classes11.dex */
    public static class NumericToBoolean extends UnfailingConverter {
        public static final NumericToBoolean INSTANCE = new NumericToBoolean();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public BooleanValue convert(AtomicValue atomicValue) {
            return BooleanValue.get(((NumericValue) atomicValue).effectiveBooleanValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class NumericToDouble extends UnfailingConverter {
        public static final NumericToDouble INSTANCE = new NumericToDouble();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public DoubleValue convert(AtomicValue atomicValue) {
            if (atomicValue instanceof DoubleValue) {
                return (DoubleValue) atomicValue;
            }
            return new DoubleValue(((NumericValue) atomicValue).getDoubleValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class NumericToFloat extends UnfailingConverter {
        public static final NumericToFloat INSTANCE = new NumericToFloat();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public FloatValue convert(AtomicValue atomicValue) {
            return new FloatValue(((NumericValue) atomicValue).getFloatValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class QNameToNotation extends UnfailingConverter {
        public static final QNameToNotation INSTANCE = new QNameToNotation();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public NotationValue convert(AtomicValue atomicValue) {
            return new NotationValue(((QNameValue) atomicValue).getStructuredQName(), BuiltInAtomicType.NOTATION);
        }
    }

    /* loaded from: classes11.dex */
    public static class ToStringConverter extends UnfailingConverter {
        public static final ToStringConverter INSTANCE = new ToStringConverter();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public StringValue convert(AtomicValue atomicValue) {
            return new StringValue(atomicValue.getUnicodeStringValue().tidy());
        }
    }

    /* loaded from: classes11.dex */
    public static class ToUntypedAtomicConverter extends UnfailingConverter {
        public static final ToUntypedAtomicConverter INSTANCE = new ToUntypedAtomicConverter();

        @Override // net.sf.saxon.type.Converter.UnfailingConverter, net.p110sf.saxon.type.Converter
        public StringValue convert(AtomicValue atomicValue) {
            return StringValue.makeUntypedAtomic(atomicValue.getUnicodeStringValue());
        }
    }

    public Converter(ConversionRules conversionRules) {
        setConversionRules(conversionRules);
    }
}
