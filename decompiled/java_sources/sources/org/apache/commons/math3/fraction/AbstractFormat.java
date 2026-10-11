package org.apache.commons.math3.fraction;

import java.io.Serializable;
import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.Locale;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public abstract class AbstractFormat extends NumberFormat implements Serializable {
    private static final long serialVersionUID = -6981118387974191891L;
    private NumberFormat denominatorFormat;
    private NumberFormat numeratorFormat;

    public AbstractFormat() {
        this(getDefaultNumberFormat());
    }

    public static NumberFormat getDefaultNumberFormat() {
        return getDefaultNumberFormat(Locale.getDefault());
    }

    public static void parseAndIgnoreWhitespace(String str, ParsePosition parsePosition) {
        parseNextCharacter(str, parsePosition);
        parsePosition.setIndex(parsePosition.getIndex() - 1);
    }

    public static char parseNextCharacter(String str, ParsePosition parsePosition) {
        int i;
        char charAt;
        int index = parsePosition.getIndex();
        int length = str.length();
        if (index < length) {
            while (true) {
                i = index + 1;
                charAt = str.charAt(index);
                if (!Character.isWhitespace(charAt) || i >= length) {
                    break;
                }
                index = i;
            }
            parsePosition.setIndex(i);
            if (i < length) {
                return charAt;
            }
        }
        return (char) 0;
    }

    @Override // java.text.NumberFormat
    public StringBuffer format(double d, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        return format(Double.valueOf(d), stringBuffer, fieldPosition);
    }

    public NumberFormat getDenominatorFormat() {
        return this.denominatorFormat;
    }

    public NumberFormat getNumeratorFormat() {
        return this.numeratorFormat;
    }

    public void setDenominatorFormat(NumberFormat numberFormat) {
        if (numberFormat == null) {
            throw new NullArgumentException(LocalizedFormats.DENOMINATOR_FORMAT, new Object[0]);
        }
        this.denominatorFormat = numberFormat;
    }

    public void setNumeratorFormat(NumberFormat numberFormat) {
        if (numberFormat == null) {
            throw new NullArgumentException(LocalizedFormats.NUMERATOR_FORMAT, new Object[0]);
        }
        this.numeratorFormat = numberFormat;
    }

    public AbstractFormat(NumberFormat numberFormat) {
        this(numberFormat, (NumberFormat) numberFormat.clone());
    }

    public static NumberFormat getDefaultNumberFormat(Locale locale) {
        NumberFormat numberInstance = NumberFormat.getNumberInstance(locale);
        numberInstance.setMaximumFractionDigits(0);
        numberInstance.setParseIntegerOnly(true);
        return numberInstance;
    }

    @Override // java.text.NumberFormat
    public StringBuffer format(long j, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        return format(Long.valueOf(j), stringBuffer, fieldPosition);
    }

    public AbstractFormat(NumberFormat numberFormat, NumberFormat numberFormat2) {
        this.numeratorFormat = numberFormat;
        this.denominatorFormat = numberFormat2;
    }
}
