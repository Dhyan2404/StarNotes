package net.p110sf.saxon.type;

import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.regex.ARegularExpression;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Base64BinaryValue;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.BigIntegerValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.DateValue;
import net.p110sf.saxon.value.DayTimeDurationValue;
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
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.TimeValue;
import net.p110sf.saxon.value.Whitespace;
import net.p110sf.saxon.value.YearMonthDurationValue;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes11.dex */
public abstract class StringConverter extends Converter {

    /* loaded from: classes11.dex */
    public static class StringToAnyURI extends StringConverter {
        public StringToAnyURI(ConversionRules conversionRules) {
            super(conversionRules);
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            if (getConversionRules().isValidURI(unicodeString.toString())) {
                return new AnyURIValue(unicodeString);
            }
            return new ValidationFailure("Invalid URI: " + unicodeString);
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            if (getConversionRules().isValidURI(unicodeString.toString())) {
                return null;
            }
            return new ValidationFailure("Invalid URI: " + unicodeString);
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToBase64Binary extends StringConverter {
        public static final StringToBase64Binary INSTANCE = new StringToBase64Binary();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            try {
                return new Base64BinaryValue(unicodeString);
            } catch (XPathException e) {
                return ValidationFailure.fromException(e);
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToBoolean extends StringConverter {
        public static final StringToBoolean INSTANCE = new StringToBoolean();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return BooleanValue.fromString(unicodeString);
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToDate extends StringConverter {
        public StringToDate(ConversionRules conversionRules) {
            super(conversionRules);
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return DateValue.makeDateValue(unicodeString, getConversionRules());
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToDateTime extends StringConverter {
        public StringToDateTime(ConversionRules conversionRules) {
            super(conversionRules);
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return DateTimeValue.makeDateTimeValue(unicodeString, getConversionRules());
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToDateTimeStamp extends StringConverter {
        public StringToDateTimeStamp(ConversionRules conversionRules) {
            super(conversionRules);
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            ConversionResult makeDateTimeValue = DateTimeValue.makeDateTimeValue(unicodeString, getConversionRules());
            if (makeDateTimeValue instanceof DateTimeValue) {
                DateTimeValue dateTimeValue = (DateTimeValue) makeDateTimeValue;
                if (!dateTimeValue.hasTimezone()) {
                    return new ValidationFailure("Supplied DateTimeStamp value " + unicodeString + " has no time zone");
                }
                dateTimeValue.setTypeLabel(BuiltInAtomicType.DATE_TIME_STAMP);
            }
            return makeDateTimeValue;
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToDayTimeDuration extends StringConverter {
        public static final StringToDayTimeDuration INSTANCE = new StringToDayTimeDuration();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return DayTimeDurationValue.makeDayTimeDurationValue(unicodeString);
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToDecimal extends StringConverter {
        public static final StringToDecimal INSTANCE = new StringToDecimal();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return BigDecimalValue.makeDecimalValue(unicodeString.toString(), true);
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            if (BigDecimalValue.castableAsDecimal(unicodeString.toString())) {
                return null;
            }
            return new ValidationFailure("Cannot convert string to decimal: " + unicodeString);
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToDerivedStringSubtype extends StringConverter {

        /* renamed from: b */
        public AtomicType f102798b;

        /* renamed from: c */
        public StringConverter f102799c;

        /* renamed from: d */
        public int f102800d;

        public StringToDerivedStringSubtype(ConversionRules conversionRules, AtomicType atomicType) {
            super(conversionRules);
            this.f102798b = atomicType;
            this.f102800d = atomicType.getWhitespaceAction();
            this.f102799c = ((AtomicType) atomicType.getBuiltInBaseType()).getStringConverter(conversionRules);
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            UnicodeString applyWhitespaceNormalization = Whitespace.applyWhitespaceNormalization(this.f102800d, unicodeString);
            ValidationFailure validate = this.f102799c.validate(applyWhitespaceNormalization);
            if (validate != null) {
                return validate;
            }
            try {
                UnicodeString preprocess = this.f102798b.preprocess(applyWhitespaceNormalization);
                ValidationFailure validate2 = this.f102798b.validate(new StringValue(preprocess), preprocess, getConversionRules());
                return validate2 == null ? new StringValue(preprocess, this.f102798b) : validate2;
            } catch (ValidationException e) {
                return e.getValidationFailure();
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToDuration extends StringConverter {
        public static final StringToDuration INSTANCE = new StringToDuration();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return DurationValue.makeDuration(unicodeString);
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToFloat extends StringConverter {
        public StringToFloat(ConversionRules conversionRules) {
            super(conversionRules);
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            try {
                return new FloatValue((float) getConversionRules().getStringToDoubleConverter().stringToNumber(unicodeString));
            } catch (NumberFormatException unused) {
                ValidationFailure validationFailure = new ValidationFailure("Cannot convert string to float: " + unicodeString);
                validationFailure.setErrorCode("FORG0001");
                return validationFailure;
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToGDay extends StringConverter {
        public static final StringToGDay INSTANCE = new StringToGDay();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return GDayValue.makeGDayValue(unicodeString);
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToGMonth extends StringConverter {
        public static final StringToGMonth INSTANCE = new StringToGMonth();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return GMonthValue.makeGMonthValue(unicodeString);
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToGMonthDay extends StringConverter {
        public static final StringToGMonthDay INSTANCE = new StringToGMonthDay();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return GMonthDayValue.makeGMonthDayValue(unicodeString);
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToGYear extends StringConverter {
        public StringToGYear(ConversionRules conversionRules) {
            super(conversionRules);
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return GYearValue.makeGYearValue(unicodeString, getConversionRules());
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToGYearMonth extends StringConverter {
        public StringToGYearMonth(ConversionRules conversionRules) {
            super(conversionRules);
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return GYearMonthValue.makeGYearMonthValue(unicodeString, getConversionRules());
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToHexBinary extends StringConverter {
        public static final StringToHexBinary INSTANCE = new StringToHexBinary();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            try {
                return new HexBinaryValue(unicodeString);
            } catch (XPathException e) {
                return ValidationFailure.fromException(e);
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToInteger extends StringConverter {
        public static final StringToInteger INSTANCE = new StringToInteger();

        public ConversionResult convert(StringValue stringValue) {
            return IntegerValue.stringToInteger(stringValue.toString());
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return IntegerValue.stringToInteger(unicodeString.toString());
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            return IntegerValue.castableAsInteger(unicodeString);
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToIntegerSubtype extends StringConverter {

        /* renamed from: c */
        public static final /* synthetic */ boolean f102801c = false;

        /* renamed from: b */
        public BuiltInAtomicType f102802b;

        public StringToIntegerSubtype(BuiltInAtomicType builtInAtomicType) {
            this.f102802b = builtInAtomicType;
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            ConversionResult stringToInteger = IntegerValue.stringToInteger(unicodeString.toString());
            if (stringToInteger instanceof Int64Value) {
                Int64Value int64Value = (Int64Value) stringToInteger;
                if (IntegerValue.checkRange(int64Value.longValue(), this.f102802b)) {
                    return int64Value.copyAsSubType(this.f102802b);
                }
                return new ValidationFailure("Integer value is out of range for type " + this.f102802b);
            }
            if (!(stringToInteger instanceof BigIntegerValue)) {
                return stringToInteger;
            }
            BigIntegerValue bigIntegerValue = (BigIntegerValue) stringToInteger;
            if (IntegerValue.checkBigRange(bigIntegerValue.asBigInteger(), this.f102802b)) {
                bigIntegerValue.setTypeLabel(this.f102802b);
                return stringToInteger;
            }
            return new ValidationFailure("Integer value is out of range for type " + this.f102802b);
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToLanguage extends StringConverter {

        /* renamed from: b */
        public static final ARegularExpression f102803b = ARegularExpression.compile("[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*", "");
        public static final StringToLanguage INSTANCE = new StringToLanguage();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            UnicodeString trim = Whitespace.trim(unicodeString);
            if (f102803b.matches(trim)) {
                return new StringValue(trim, BuiltInAtomicType.LANGUAGE);
            }
            return new ValidationFailure("The value '" + unicodeString + "' is not a valid xs:language");
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            if (f102803b.matches(Whitespace.trim(unicodeString))) {
                return null;
            }
            return new ValidationFailure("The value '" + unicodeString + "' is not a valid xs:language");
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToNCName extends StringConverter {

        /* renamed from: b */
        public AtomicType f102804b;
        public static final StringToNCName TO_ID = new StringToNCName(BuiltInAtomicType.f102764ID);
        public static final StringToNCName TO_ENTITY = new StringToNCName(BuiltInAtomicType.ENTITY);
        public static final StringToNCName TO_NCNAME = new StringToNCName(BuiltInAtomicType.NCNAME);
        public static final StringToNCName TO_IDREF = new StringToNCName(BuiltInAtomicType.IDREF);

        public StringToNCName(AtomicType atomicType) {
            this.f102804b = atomicType;
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            UnicodeString trim = Whitespace.trim(unicodeString);
            if (NameChecker.isValidNCName(trim.codePoints())) {
                return new StringValue(trim, this.f102804b);
            }
            return new ValidationFailure("The value '" + unicodeString + "' is not a valid " + this.f102804b.getDisplayName());
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            if (NameChecker.isValidNCName(Whitespace.trim(unicodeString).codePoints())) {
                return null;
            }
            return new ValidationFailure("The value '" + unicodeString + "' is not a valid " + this.f102804b.getDisplayName());
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToNMTOKEN extends StringConverter {
        public static final StringToNMTOKEN INSTANCE = new StringToNMTOKEN();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            UnicodeString trim = Whitespace.trim(unicodeString);
            if (NameChecker.isValidNmtoken(trim)) {
                return new StringValue(trim, BuiltInAtomicType.NMTOKEN);
            }
            return new ValidationFailure("The value '" + unicodeString + "' is not a valid xs:NMTOKEN");
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            if (NameChecker.isValidNmtoken(Whitespace.trim(unicodeString))) {
                return null;
            }
            return new ValidationFailure("The value '" + unicodeString + "' is not a valid xs:NMTOKEN");
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToName extends StringToNCName {
        public static final StringToName INSTANCE = new StringToName();

        public StringToName() {
            super(BuiltInAtomicType.NAME);
        }

        @Override // net.sf.saxon.type.StringConverter.StringToNCName, net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            ValidationFailure validate = validate(unicodeString);
            return validate == null ? new StringValue(Whitespace.trim(unicodeString), BuiltInAtomicType.NAME) : validate;
        }

        @Override // net.sf.saxon.type.StringConverter.StringToNCName, net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            UnicodeString trim = Whitespace.trim(unicodeString);
            if (NameChecker.isValidNCName(trim.codePoints()) || NameChecker.isValidNCName(trim.toString().replace(':', NameUtil.USCORE))) {
                return null;
            }
            return new ValidationFailure("The value '" + trim + "' is not a valid xs:Name");
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToNonStringDerivedType extends StringConverter {

        /* renamed from: b */
        public final StringConverter f102805b;

        /* renamed from: c */
        public final Converter.DownCastingConverter f102806c;

        public StringToNonStringDerivedType(StringConverter stringConverter, Converter.DownCastingConverter downCastingConverter) {
            this.f102805b = stringConverter;
            this.f102806c = downCastingConverter;
        }

        public ConversionResult convert(UnicodeString unicodeString) {
            try {
                UnicodeString preprocess = this.f102806c.getTargetType().preprocess(unicodeString);
                ConversionResult convertString = this.f102805b.convertString(preprocess);
                return convertString instanceof ValidationFailure ? convertString : this.f102806c.convert((AtomicValue) convertString, preprocess);
            } catch (ValidationException e) {
                return e.getValidationFailure();
            }
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            try {
                UnicodeString preprocess = this.f102806c.getTargetType().preprocess(unicodeString);
                ConversionResult convertString = this.f102805b.convertString(preprocess);
                return convertString instanceof ValidationFailure ? convertString : this.f102806c.convert((AtomicValue) convertString, preprocess);
            } catch (ValidationException e) {
                return e.getValidationFailure();
            }
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            try {
                UnicodeString preprocess = this.f102806c.getTargetType().preprocess(unicodeString);
                ConversionResult convertString = this.f102805b.convertString(preprocess);
                return convertString instanceof ValidationFailure ? (ValidationFailure) convertString : this.f102806c.validate((AtomicValue) convertString, preprocess);
            } catch (ValidationException e) {
                return e.getValidationFailure();
            }
        }

        @Override // net.p110sf.saxon.type.Converter
        public StringToNonStringDerivedType setNamespaceResolver(NamespaceResolver namespaceResolver) {
            return new StringToNonStringDerivedType((StringConverter) this.f102805b.setNamespaceResolver(namespaceResolver), (Converter.DownCastingConverter) this.f102806c.setNamespaceResolver(namespaceResolver));
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToNormalizedString extends StringConverter {
        public static final StringToNormalizedString INSTANCE = new StringToNormalizedString();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return new StringValue(Whitespace.normalizeWhitespace(unicodeString).tidy(), BuiltInAtomicType.NORMALIZED_STRING);
        }

        @Override // net.p110sf.saxon.type.Converter
        public boolean isAlwaysSuccessful() {
            return true;
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            return null;
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToNotation extends StringConverter {

        /* renamed from: b */
        public NamespaceResolver f102807b;

        public StringToNotation(ConversionRules conversionRules) {
            super(conversionRules);
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            if (getNamespaceResolver() == null) {
                throw new UnsupportedOperationException("Cannot validate a NOTATION without a namespace resolver");
            }
            try {
                String[] qNameParts = NameChecker.getQNameParts(Whitespace.trim(unicodeString.toString()));
                String uRIForPrefix = getNamespaceResolver().getURIForPrefix(qNameParts[0], true);
                if (uRIForPrefix == null) {
                    return new ValidationFailure("Namespace prefix " + Err.wrap(qNameParts[0]) + " has not been declared");
                }
                if (getConversionRules().isDeclaredNotation(uRIForPrefix, qNameParts[1])) {
                    return new NotationValue(qNameParts[0], uRIForPrefix, qNameParts[1], false);
                }
                return new ValidationFailure("Notation {" + uRIForPrefix + "}" + qNameParts[1] + " is not declared in the schema");
            } catch (QNameException unused) {
                return new ValidationFailure("Invalid lexical QName " + Err.wrap(unicodeString));
            } catch (XPathException e) {
                return new ValidationFailure(e.getMessage());
            }
        }

        @Override // net.p110sf.saxon.type.Converter
        public NamespaceResolver getNamespaceResolver() {
            return this.f102807b;
        }

        @Override // net.p110sf.saxon.type.Converter
        public StringToNotation setNamespaceResolver(NamespaceResolver namespaceResolver) {
            StringToNotation stringToNotation = new StringToNotation(getConversionRules());
            stringToNotation.f102807b = namespaceResolver;
            return stringToNotation;
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToQName extends StringConverter {

        /* renamed from: b */
        public NamespaceResolver f102808b;

        public StringToQName(ConversionRules conversionRules) {
            super(conversionRules);
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            if (this.f102808b == null) {
                throw new UnsupportedOperationException("Cannot validate a QName without a namespace resolver");
            }
            try {
                String[] qNameParts = NameChecker.getQNameParts(Whitespace.trim(unicodeString.toString()));
                String uRIForPrefix = this.f102808b.getURIForPrefix(qNameParts[0], true);
                if (uRIForPrefix != null) {
                    return new QNameValue(qNameParts[0], uRIForPrefix, qNameParts[1], BuiltInAtomicType.QNAME, false);
                }
                ValidationFailure validationFailure = new ValidationFailure("Namespace prefix " + Err.wrap(qNameParts[0]) + " has not been declared");
                validationFailure.setErrorCode("FONS0004");
                return validationFailure;
            } catch (QNameException unused) {
                return new ValidationFailure("Invalid lexical QName " + Err.wrap(unicodeString));
            } catch (XPathException e) {
                return new ValidationFailure(e.getMessage());
            }
        }

        @Override // net.p110sf.saxon.type.Converter
        public NamespaceResolver getNamespaceResolver() {
            return this.f102808b;
        }

        @Override // net.p110sf.saxon.type.Converter
        public StringToQName setNamespaceResolver(NamespaceResolver namespaceResolver) {
            StringToQName stringToQName = new StringToQName(getConversionRules());
            stringToQName.f102808b = namespaceResolver;
            return stringToQName;
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToString extends StringConverter {
        public static final StringToString INSTANCE = new StringToString();

        @Override // net.p110sf.saxon.type.StringConverter, net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            return new StringValue(atomicValue.getUnicodeStringValue().tidy());
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return new StringValue(unicodeString.tidy());
        }

        @Override // net.p110sf.saxon.type.Converter
        public boolean isAlwaysSuccessful() {
            return true;
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            return null;
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToStringSubtype extends StringConverter {

        /* renamed from: b */
        public AtomicType f102809b;

        /* renamed from: c */
        public int f102810c;

        public StringToStringSubtype(ConversionRules conversionRules, AtomicType atomicType) {
            super(conversionRules);
            this.f102809b = atomicType;
            this.f102810c = atomicType.getWhitespaceAction();
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            try {
                UnicodeString preprocess = this.f102809b.preprocess(Whitespace.applyWhitespaceNormalization(this.f102810c, unicodeString));
                ValidationFailure validate = this.f102809b.validate(new StringValue(preprocess), preprocess, getConversionRules());
                return validate == null ? new StringValue(preprocess, this.f102809b) : validate;
            } catch (ValidationException e) {
                return e.getValidationFailure();
            }
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            try {
                UnicodeString preprocess = this.f102809b.preprocess(Whitespace.applyWhitespaceNormalization(this.f102810c, unicodeString));
                return this.f102809b.validate(new StringValue(preprocess), preprocess, getConversionRules());
            } catch (ValidationException e) {
                return e.getValidationFailure();
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToTime extends StringConverter {
        public static final StringToTime INSTANCE = new StringToTime();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return TimeValue.makeTimeValue(unicodeString);
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToToken extends StringConverter {
        public static final StringToToken INSTANCE = new StringToToken();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return new StringValue(Whitespace.collapseWhitespace(unicodeString).tidy(), BuiltInAtomicType.TOKEN);
        }

        @Override // net.p110sf.saxon.type.Converter
        public boolean isAlwaysSuccessful() {
            return true;
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            return null;
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToUnionConverter extends StringConverter {

        /* renamed from: b */
        public PlainType f102811b;

        /* renamed from: c */
        public ConversionRules f102812c;

        public StringToUnionConverter(PlainType plainType, ConversionRules conversionRules) {
            if (!plainType.isPlainType()) {
                throw new IllegalArgumentException();
            }
            if (plainType.isNamespaceSensitive()) {
                throw new IllegalArgumentException();
            }
            this.f102811b = plainType;
            this.f102812c = conversionRules;
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            try {
                return ((UnionType) this.f102811b).getTypedValue(unicodeString, null, this.f102812c).head();
            } catch (ValidationException e) {
                return e.getValidationFailure();
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToUntypedAtomic extends StringConverter {
        public static final StringToUntypedAtomic INSTANCE = new StringToUntypedAtomic();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return StringValue.makeUntypedAtomic(unicodeString);
        }

        @Override // net.p110sf.saxon.type.Converter
        public boolean isAlwaysSuccessful() {
            return true;
        }

        @Override // net.p110sf.saxon.type.StringConverter
        public ValidationFailure validate(UnicodeString unicodeString) {
            return null;
        }

        @Override // net.p110sf.saxon.type.StringConverter, net.p110sf.saxon.type.Converter
        public StringValue convert(AtomicValue atomicValue) {
            return StringValue.makeUntypedAtomic(atomicValue.getUnicodeStringValue());
        }
    }

    /* loaded from: classes11.dex */
    public static class StringToYearMonthDuration extends StringConverter {
        public static final StringToYearMonthDuration INSTANCE = new StringToYearMonthDuration();

        @Override // net.p110sf.saxon.type.StringConverter
        public ConversionResult convertString(UnicodeString unicodeString) {
            return YearMonthDurationValue.makeYearMonthDurationValue(unicodeString);
        }
    }

    public StringConverter() {
    }

    @Override // net.p110sf.saxon.type.Converter
    public ConversionResult convert(AtomicValue atomicValue) {
        return convertString(atomicValue.getUnicodeStringValue());
    }

    public abstract ConversionResult convertString(UnicodeString unicodeString);

    public ValidationFailure validate(UnicodeString unicodeString) {
        ConversionResult convertString = convertString(unicodeString);
        if (convertString instanceof ValidationFailure) {
            return (ValidationFailure) convertString;
        }
        return null;
    }

    public StringConverter(ConversionRules conversionRules) {
        super(conversionRules);
    }
}
