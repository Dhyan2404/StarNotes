package org.apache.commons.math3.linear;

import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.commons.math3.exception.MathParseException;
import org.apache.commons.math3.util.CompositeFormat;

/* loaded from: classes12.dex */
public class RealVectorFormat {

    /* renamed from: h */
    public static final String f108571h = "{";

    /* renamed from: i */
    public static final String f108572i = "}";

    /* renamed from: j */
    public static final String f108573j = "; ";

    /* renamed from: a */
    public final String f108574a;

    /* renamed from: b */
    public final String f108575b;

    /* renamed from: c */
    public final String f108576c;

    /* renamed from: d */
    public final String f108577d;

    /* renamed from: e */
    public final String f108578e;

    /* renamed from: f */
    public final String f108579f;

    /* renamed from: g */
    public final NumberFormat f108580g;

    public RealVectorFormat() {
        this("{", "}", "; ", CompositeFormat.getDefaultNumberFormat());
    }

    public static Locale[] getAvailableLocales() {
        return NumberFormat.getAvailableLocales();
    }

    public static RealVectorFormat getInstance() {
        return getInstance(Locale.getDefault());
    }

    public String format(RealVector realVector) {
        return format(realVector, new StringBuffer(), new FieldPosition(0)).toString();
    }

    public NumberFormat getFormat() {
        return this.f108580g;
    }

    public String getPrefix() {
        return this.f108574a;
    }

    public String getSeparator() {
        return this.f108576c;
    }

    public String getSuffix() {
        return this.f108575b;
    }

    public ArrayRealVector parse(String str) {
        ParsePosition parsePosition = new ParsePosition(0);
        ArrayRealVector parse = parse(str, parsePosition);
        if (parsePosition.getIndex() != 0) {
            return parse;
        }
        throw new MathParseException(str, parsePosition.getErrorIndex(), ArrayRealVector.class);
    }

    public RealVectorFormat(NumberFormat numberFormat) {
        this("{", "}", "; ", numberFormat);
    }

    public static RealVectorFormat getInstance(Locale locale) {
        return new RealVectorFormat(CompositeFormat.getDefaultNumberFormat(locale));
    }

    public StringBuffer format(RealVector realVector, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(0);
        stringBuffer.append(this.f108574a);
        for (int i = 0; i < realVector.getDimension(); i++) {
            if (i > 0) {
                stringBuffer.append(this.f108576c);
            }
            CompositeFormat.formatDouble(realVector.getEntry(i), this.f108580g, stringBuffer, fieldPosition);
        }
        stringBuffer.append(this.f108575b);
        return stringBuffer;
    }

    public RealVectorFormat(String str, String str2, String str3) {
        this(str, str2, str3, CompositeFormat.getDefaultNumberFormat());
    }

    public RealVectorFormat(String str, String str2, String str3, NumberFormat numberFormat) {
        this.f108574a = str;
        this.f108575b = str2;
        this.f108576c = str3;
        this.f108577d = str.trim();
        this.f108578e = str2.trim();
        this.f108579f = str3.trim();
        this.f108580g = numberFormat;
    }

    public ArrayRealVector parse(String str, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
        if (!CompositeFormat.parseFixedstring(str, this.f108577d, parsePosition)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        while (z) {
            if (!arrayList.isEmpty()) {
                CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
                if (!CompositeFormat.parseFixedstring(str, this.f108579f, parsePosition)) {
                    z = false;
                }
            }
            if (z) {
                CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
                Number parseNumber = CompositeFormat.parseNumber(str, this.f108580g, parsePosition);
                if (parseNumber != null) {
                    arrayList.add(parseNumber);
                } else {
                    parsePosition.setIndex(index);
                    return null;
                }
            }
        }
        CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
        if (!CompositeFormat.parseFixedstring(str, this.f108578e, parsePosition)) {
            return null;
        }
        int size = arrayList.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = ((Number) arrayList.get(i)).doubleValue();
        }
        return new ArrayRealVector(dArr, false);
    }
}
