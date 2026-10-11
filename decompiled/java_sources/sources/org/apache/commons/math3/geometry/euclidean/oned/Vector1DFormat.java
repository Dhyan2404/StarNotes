package org.apache.commons.math3.geometry.euclidean.oned;

import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.Locale;
import org.apache.commons.math3.exception.MathParseException;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.VectorFormat;
import org.apache.commons.math3.util.CompositeFormat;

/* loaded from: classes12.dex */
public class Vector1DFormat extends VectorFormat<Euclidean1D> {
    public Vector1DFormat() {
        super("{", "}", "; ", CompositeFormat.getDefaultNumberFormat());
    }

    public static Vector1DFormat getInstance() {
        return getInstance(Locale.getDefault());
    }

    @Override // org.apache.commons.math3.geometry.VectorFormat
    public StringBuffer format(Vector<Euclidean1D> vector, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        return format(stringBuffer, fieldPosition, ((Vector1D) vector).getX());
    }

    public Vector1DFormat(NumberFormat numberFormat) {
        super("{", "}", "; ", numberFormat);
    }

    public static Vector1DFormat getInstance(Locale locale) {
        return new Vector1DFormat(CompositeFormat.getDefaultNumberFormat(locale));
    }

    public Vector1DFormat(String str, String str2) {
        super(str, str2, "; ", CompositeFormat.getDefaultNumberFormat());
    }

    @Override // org.apache.commons.math3.geometry.VectorFormat
    public Vector<Euclidean1D> parse(String str) throws MathParseException {
        ParsePosition parsePosition = new ParsePosition(0);
        Vector<Euclidean1D> parse = parse(str, parsePosition);
        if (parsePosition.getIndex() != 0) {
            return parse;
        }
        throw new MathParseException(str, parsePosition.getErrorIndex(), Vector1D.class);
    }

    public Vector1DFormat(String str, String str2, NumberFormat numberFormat) {
        super(str, str2, "; ", numberFormat);
    }

    @Override // org.apache.commons.math3.geometry.VectorFormat
    public Vector<Euclidean1D> parse(String str, ParsePosition parsePosition) {
        double[] parseCoordinates = parseCoordinates(1, str, parsePosition);
        if (parseCoordinates == null) {
            return null;
        }
        return new Vector1D(parseCoordinates[0]);
    }
}
