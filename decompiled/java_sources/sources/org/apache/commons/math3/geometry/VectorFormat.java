package org.apache.commons.math3.geometry;

import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.Locale;
import org.apache.commons.math3.exception.MathParseException;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.util.CompositeFormat;

/* loaded from: classes12.dex */
public abstract class VectorFormat<S extends Space> {
    public static final String DEFAULT_PREFIX = "{";
    public static final String DEFAULT_SEPARATOR = "; ";
    public static final String DEFAULT_SUFFIX = "}";

    /* renamed from: a */
    public final String f108223a;

    /* renamed from: b */
    public final String f108224b;

    /* renamed from: c */
    public final String f108225c;

    /* renamed from: d */
    public final String f108226d;

    /* renamed from: e */
    public final String f108227e;

    /* renamed from: f */
    public final String f108228f;

    /* renamed from: g */
    public final NumberFormat f108229g;

    public VectorFormat() {
        this("{", "}", "; ", CompositeFormat.getDefaultNumberFormat());
    }

    public static Locale[] getAvailableLocales() {
        return NumberFormat.getAvailableLocales();
    }

    public String format(Vector<S> vector) {
        return format(vector, new StringBuffer(), new FieldPosition(0)).toString();
    }

    public abstract StringBuffer format(Vector<S> vector, StringBuffer stringBuffer, FieldPosition fieldPosition);

    public NumberFormat getFormat() {
        return this.f108229g;
    }

    public String getPrefix() {
        return this.f108223a;
    }

    public String getSeparator() {
        return this.f108225c;
    }

    public String getSuffix() {
        return this.f108224b;
    }

    public abstract Vector<S> parse(String str) throws MathParseException;

    public abstract Vector<S> parse(String str, ParsePosition parsePosition);

    public double[] parseCoordinates(int i, String str, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        double[] dArr = new double[i];
        CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
        if (!CompositeFormat.parseFixedstring(str, this.f108226d, parsePosition)) {
            return null;
        }
        for (int i2 = 0; i2 < i; i2++) {
            CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
            if (i2 > 0 && !CompositeFormat.parseFixedstring(str, this.f108228f, parsePosition)) {
                return null;
            }
            CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
            Number parseNumber = CompositeFormat.parseNumber(str, this.f108229g, parsePosition);
            if (parseNumber == null) {
                parsePosition.setIndex(index);
                return null;
            }
            dArr[i2] = parseNumber.doubleValue();
        }
        CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
        if (CompositeFormat.parseFixedstring(str, this.f108227e, parsePosition)) {
            return dArr;
        }
        return null;
    }

    public VectorFormat(NumberFormat numberFormat) {
        this("{", "}", "; ", numberFormat);
    }

    public StringBuffer format(StringBuffer stringBuffer, FieldPosition fieldPosition, double... dArr) {
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(0);
        stringBuffer.append(this.f108223a);
        for (int i = 0; i < dArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(this.f108225c);
            }
            CompositeFormat.formatDouble(dArr[i], this.f108229g, stringBuffer, fieldPosition);
        }
        stringBuffer.append(this.f108224b);
        return stringBuffer;
    }

    public VectorFormat(String str, String str2, String str3) {
        this(str, str2, str3, CompositeFormat.getDefaultNumberFormat());
    }

    public VectorFormat(String str, String str2, String str3, NumberFormat numberFormat) {
        this.f108223a = str;
        this.f108224b = str2;
        this.f108225c = str3;
        this.f108226d = str.trim();
        this.f108227e = str2.trim();
        this.f108228f = str3.trim();
        this.f108229g = numberFormat;
    }
}
