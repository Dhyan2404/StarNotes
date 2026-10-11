package org.apache.commons.math3.geometry.euclidean.twod;

import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.Locale;
import org.apache.commons.math3.exception.MathParseException;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.VectorFormat;
import org.apache.commons.math3.util.CompositeFormat;

/* loaded from: classes12.dex */
public class Vector2DFormat extends VectorFormat<Euclidean2D> {
    public Vector2DFormat() {
        super("{", "}", "; ", CompositeFormat.getDefaultNumberFormat());
    }

    public static Vector2DFormat getInstance() {
        return getInstance(Locale.getDefault());
    }

    @Override // org.apache.commons.math3.geometry.VectorFormat
    public StringBuffer format(Vector<Euclidean2D> vector, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        Vector2D vector2D = (Vector2D) vector;
        return format(stringBuffer, fieldPosition, vector2D.getX(), vector2D.getY());
    }

    public Vector2DFormat(NumberFormat numberFormat) {
        super("{", "}", "; ", numberFormat);
    }

    public static Vector2DFormat getInstance(Locale locale) {
        return new Vector2DFormat(CompositeFormat.getDefaultNumberFormat(locale));
    }

    public Vector2DFormat(String str, String str2, String str3) {
        super(str, str2, str3, CompositeFormat.getDefaultNumberFormat());
    }

    @Override // org.apache.commons.math3.geometry.VectorFormat
    public Vector<Euclidean2D> parse(String str) throws MathParseException {
        ParsePosition parsePosition = new ParsePosition(0);
        Vector<Euclidean2D> parse = parse(str, parsePosition);
        if (parsePosition.getIndex() != 0) {
            return parse;
        }
        throw new MathParseException(str, parsePosition.getErrorIndex(), Vector2D.class);
    }

    public Vector2DFormat(String str, String str2, String str3, NumberFormat numberFormat) {
        super(str, str2, str3, numberFormat);
    }

    @Override // org.apache.commons.math3.geometry.VectorFormat
    public Vector<Euclidean2D> parse(String str, ParsePosition parsePosition) {
        double[] parseCoordinates = parseCoordinates(2, str, parsePosition);
        if (parseCoordinates == null) {
            return null;
        }
        return new Vector2D(parseCoordinates[0], parseCoordinates[1]);
    }
}
