package org.apache.commons.math3.fraction;

import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class ProperFractionFormat extends FractionFormat {
    private static final long serialVersionUID = 760934726031766749L;
    private NumberFormat wholeFormat;

    public ProperFractionFormat() {
        this(FractionFormat.getDefaultNumberFormat());
    }

    @Override // org.apache.commons.math3.fraction.FractionFormat
    public StringBuffer format(Fraction fraction, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(0);
        int numerator = fraction.getNumerator();
        int denominator = fraction.getDenominator();
        int i = numerator / denominator;
        int i2 = numerator % denominator;
        if (i != 0) {
            getWholeFormat().format(i, stringBuffer, fieldPosition);
            stringBuffer.append(' ');
            i2 = FastMath.abs(i2);
        }
        getNumeratorFormat().format(i2, stringBuffer, fieldPosition);
        stringBuffer.append(" / ");
        getDenominatorFormat().format(denominator, stringBuffer, fieldPosition);
        return stringBuffer;
    }

    public NumberFormat getWholeFormat() {
        return this.wholeFormat;
    }

    public void setWholeFormat(NumberFormat numberFormat) {
        if (numberFormat == null) {
            throw new NullArgumentException(LocalizedFormats.WHOLE_FORMAT, new Object[0]);
        }
        this.wholeFormat = numberFormat;
    }

    public ProperFractionFormat(NumberFormat numberFormat) {
        this(numberFormat, (NumberFormat) numberFormat.clone(), (NumberFormat) numberFormat.clone());
    }

    @Override // org.apache.commons.math3.fraction.FractionFormat, java.text.NumberFormat
    public Fraction parse(String str, ParsePosition parsePosition) {
        Fraction parse = super.parse(str, parsePosition);
        if (parse != null) {
            return parse;
        }
        int index = parsePosition.getIndex();
        AbstractFormat.parseAndIgnoreWhitespace(str, parsePosition);
        Number parse2 = getWholeFormat().parse(str, parsePosition);
        if (parse2 == null) {
            parsePosition.setIndex(index);
            return null;
        }
        AbstractFormat.parseAndIgnoreWhitespace(str, parsePosition);
        Number parse3 = getNumeratorFormat().parse(str, parsePosition);
        if (parse3 == null) {
            parsePosition.setIndex(index);
            return null;
        }
        if (parse3.intValue() < 0) {
            parsePosition.setIndex(index);
            return null;
        }
        int index2 = parsePosition.getIndex();
        char parseNextCharacter = AbstractFormat.parseNextCharacter(str, parsePosition);
        if (parseNextCharacter == 0) {
            return new Fraction(parse3.intValue(), 1);
        }
        if (parseNextCharacter != '/') {
            parsePosition.setIndex(index);
            parsePosition.setErrorIndex(index2);
            return null;
        }
        AbstractFormat.parseAndIgnoreWhitespace(str, parsePosition);
        Number parse4 = getDenominatorFormat().parse(str, parsePosition);
        if (parse4 == null) {
            parsePosition.setIndex(index);
            return null;
        }
        if (parse4.intValue() < 0) {
            parsePosition.setIndex(index);
            return null;
        }
        int intValue = parse2.intValue();
        int intValue2 = parse3.intValue();
        int intValue3 = parse4.intValue();
        return new Fraction(((FastMath.abs(intValue) * intValue3) + intValue2) * MathUtils.copySign(1, intValue), intValue3);
    }

    public ProperFractionFormat(NumberFormat numberFormat, NumberFormat numberFormat2, NumberFormat numberFormat3) {
        super(numberFormat2, numberFormat3);
        setWholeFormat(numberFormat);
    }
}
