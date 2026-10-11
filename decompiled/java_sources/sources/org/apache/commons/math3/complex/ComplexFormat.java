package org.apache.commons.math3.complex;

import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.Locale;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathParseException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.CompositeFormat;

/* loaded from: classes12.dex */
public class ComplexFormat {

    /* renamed from: d */
    public static final String f107993d = "i";

    /* renamed from: a */
    public final String f107994a;

    /* renamed from: b */
    public final NumberFormat f107995b;

    /* renamed from: c */
    public final NumberFormat f107996c;

    public ComplexFormat() {
        this.f107994a = "i";
        NumberFormat defaultNumberFormat = CompositeFormat.getDefaultNumberFormat();
        this.f107995b = defaultNumberFormat;
        this.f107996c = defaultNumberFormat;
    }

    public static Locale[] getAvailableLocales() {
        return NumberFormat.getAvailableLocales();
    }

    public static ComplexFormat getInstance() {
        return getInstance(Locale.getDefault());
    }

    /* renamed from: a */
    public final StringBuffer m67537a(double d, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(0);
        CompositeFormat.formatDouble(d, getImaginaryFormat(), stringBuffer, fieldPosition);
        if (stringBuffer.toString().equals("1")) {
            stringBuffer.setLength(0);
        }
        return stringBuffer;
    }

    public String format(Complex complex) {
        return format(complex, new StringBuffer(), new FieldPosition(0)).toString();
    }

    public String getImaginaryCharacter() {
        return this.f107994a;
    }

    public NumberFormat getImaginaryFormat() {
        return this.f107995b;
    }

    public NumberFormat getRealFormat() {
        return this.f107996c;
    }

    public Complex parse(String str) throws MathParseException {
        ParsePosition parsePosition = new ParsePosition(0);
        Complex parse = parse(str, parsePosition);
        if (parsePosition.getIndex() != 0) {
            return parse;
        }
        throw new MathParseException(str, parsePosition.getErrorIndex(), Complex.class);
    }

    public static ComplexFormat getInstance(Locale locale) {
        return new ComplexFormat(CompositeFormat.getDefaultNumberFormat(locale));
    }

    public String format(Double d) {
        return format(new Complex(d.doubleValue(), 0.0d), new StringBuffer(), new FieldPosition(0)).toString();
    }

    public StringBuffer format(Complex complex, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(0);
        CompositeFormat.formatDouble(complex.getReal(), getRealFormat(), stringBuffer, fieldPosition);
        double imaginary = complex.getImaginary();
        if (imaginary < 0.0d) {
            stringBuffer.append(" - ");
            stringBuffer.append(m67537a(-imaginary, new StringBuffer(), fieldPosition));
            stringBuffer.append(getImaginaryCharacter());
        } else if (imaginary > 0.0d || Double.isNaN(imaginary)) {
            stringBuffer.append(" + ");
            stringBuffer.append(m67537a(imaginary, new StringBuffer(), fieldPosition));
            stringBuffer.append(getImaginaryCharacter());
        }
        return stringBuffer;
    }

    public static ComplexFormat getInstance(String str, Locale locale) throws NullArgumentException, NoDataException {
        return new ComplexFormat(str, CompositeFormat.getDefaultNumberFormat(locale));
    }

    public ComplexFormat(NumberFormat numberFormat) throws NullArgumentException {
        if (numberFormat != null) {
            this.f107994a = "i";
            this.f107995b = numberFormat;
            this.f107996c = numberFormat;
            return;
        }
        throw new NullArgumentException(LocalizedFormats.IMAGINARY_FORMAT, new Object[0]);
    }

    public Complex parse(String str, ParsePosition parsePosition) {
        int i;
        int index = parsePosition.getIndex();
        CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
        Number parseNumber = CompositeFormat.parseNumber(str, getRealFormat(), parsePosition);
        if (parseNumber == null) {
            parsePosition.setIndex(index);
            return null;
        }
        int index2 = parsePosition.getIndex();
        char parseNextCharacter = CompositeFormat.parseNextCharacter(str, parsePosition);
        if (parseNextCharacter != 0) {
            if (parseNextCharacter == '+') {
                i = 1;
            } else {
                if (parseNextCharacter != '-') {
                    parsePosition.setIndex(index);
                    parsePosition.setErrorIndex(index2);
                    return null;
                }
                i = -1;
            }
            CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
            Number parseNumber2 = CompositeFormat.parseNumber(str, getRealFormat(), parsePosition);
            if (parseNumber2 == null) {
                parsePosition.setIndex(index);
                return null;
            }
            if (CompositeFormat.parseFixedstring(str, getImaginaryCharacter(), parsePosition)) {
                return new Complex(parseNumber.doubleValue(), parseNumber2.doubleValue() * i);
            }
            return null;
        }
        return new Complex(parseNumber.doubleValue(), 0.0d);
    }

    public ComplexFormat(NumberFormat numberFormat, NumberFormat numberFormat2) throws NullArgumentException {
        if (numberFormat2 == null) {
            throw new NullArgumentException(LocalizedFormats.IMAGINARY_FORMAT, new Object[0]);
        }
        if (numberFormat != null) {
            this.f107994a = "i";
            this.f107995b = numberFormat2;
            this.f107996c = numberFormat;
            return;
        }
        throw new NullArgumentException(LocalizedFormats.REAL_FORMAT, new Object[0]);
    }

    public ComplexFormat(String str) throws NullArgumentException, NoDataException {
        this(str, CompositeFormat.getDefaultNumberFormat());
    }

    public ComplexFormat(String str, NumberFormat numberFormat) throws NullArgumentException, NoDataException {
        this(str, numberFormat, numberFormat);
    }

    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) throws MathIllegalArgumentException {
        if (obj instanceof Complex) {
            return format((Complex) obj, stringBuffer, fieldPosition);
        }
        if (obj instanceof Number) {
            return format(new Complex(((Number) obj).doubleValue(), 0.0d), stringBuffer, fieldPosition);
        }
        throw new MathIllegalArgumentException(LocalizedFormats.CANNOT_FORMAT_INSTANCE_AS_COMPLEX, obj.getClass().getName());
    }

    public ComplexFormat(String str, NumberFormat numberFormat, NumberFormat numberFormat2) throws NullArgumentException, NoDataException {
        if (str != null) {
            if (str.length() == 0) {
                throw new NoDataException();
            }
            if (numberFormat2 == null) {
                throw new NullArgumentException(LocalizedFormats.IMAGINARY_FORMAT, new Object[0]);
            }
            if (numberFormat != null) {
                this.f107994a = str;
                this.f107995b = numberFormat2;
                this.f107996c = numberFormat;
                return;
            }
            throw new NullArgumentException(LocalizedFormats.REAL_FORMAT, new Object[0]);
        }
        throw new NullArgumentException();
    }
}
