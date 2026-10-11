package org.apache.commons.math3.linear;

import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.commons.math3.exception.MathParseException;
import org.apache.commons.math3.util.CompositeFormat;

/* loaded from: classes12.dex */
public class RealMatrixFormat {

    /* renamed from: h */
    public static final String f108540h = "{";

    /* renamed from: i */
    public static final String f108541i = "}";

    /* renamed from: j */
    public static final String f108542j = "{";

    /* renamed from: k */
    public static final String f108543k = "}";

    /* renamed from: l */
    public static final String f108544l = ",";

    /* renamed from: m */
    public static final String f108545m = ",";

    /* renamed from: a */
    public final String f108546a;

    /* renamed from: b */
    public final String f108547b;

    /* renamed from: c */
    public final String f108548c;

    /* renamed from: d */
    public final String f108549d;

    /* renamed from: e */
    public final String f108550e;

    /* renamed from: f */
    public final String f108551f;

    /* renamed from: g */
    public final NumberFormat f108552g;

    public RealMatrixFormat() {
        this("{", "}", "{", "}", ",", ",", CompositeFormat.getDefaultNumberFormat());
    }

    public static Locale[] getAvailableLocales() {
        return NumberFormat.getAvailableLocales();
    }

    public static RealMatrixFormat getInstance() {
        return getInstance(Locale.getDefault());
    }

    public String format(RealMatrix realMatrix) {
        return format(realMatrix, new StringBuffer(), new FieldPosition(0)).toString();
    }

    public String getColumnSeparator() {
        return this.f108551f;
    }

    public NumberFormat getFormat() {
        return this.f108552g;
    }

    public String getPrefix() {
        return this.f108546a;
    }

    public String getRowPrefix() {
        return this.f108548c;
    }

    public String getRowSeparator() {
        return this.f108550e;
    }

    public String getRowSuffix() {
        return this.f108549d;
    }

    public String getSuffix() {
        return this.f108547b;
    }

    public RealMatrix parse(String str) {
        ParsePosition parsePosition = new ParsePosition(0);
        RealMatrix parse = parse(str, parsePosition);
        if (parsePosition.getIndex() != 0) {
            return parse;
        }
        throw new MathParseException(str, parsePosition.getErrorIndex(), Array2DRowRealMatrix.class);
    }

    public RealMatrixFormat(NumberFormat numberFormat) {
        this("{", "}", "{", "}", ",", ",", numberFormat);
    }

    public static RealMatrixFormat getInstance(Locale locale) {
        return new RealMatrixFormat(CompositeFormat.getDefaultNumberFormat(locale));
    }

    public StringBuffer format(RealMatrix realMatrix, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(0);
        stringBuffer.append(this.f108546a);
        int rowDimension = realMatrix.getRowDimension();
        for (int i = 0; i < rowDimension; i++) {
            stringBuffer.append(this.f108548c);
            for (int i2 = 0; i2 < realMatrix.getColumnDimension(); i2++) {
                if (i2 > 0) {
                    stringBuffer.append(this.f108551f);
                }
                CompositeFormat.formatDouble(realMatrix.getEntry(i, i2), this.f108552g, stringBuffer, fieldPosition);
            }
            stringBuffer.append(this.f108549d);
            if (i < rowDimension - 1) {
                stringBuffer.append(this.f108550e);
            }
        }
        stringBuffer.append(this.f108547b);
        return stringBuffer;
    }

    public RealMatrixFormat(String str, String str2, String str3, String str4, String str5, String str6) {
        this(str, str2, str3, str4, str5, str6, CompositeFormat.getDefaultNumberFormat());
    }

    public RealMatrixFormat(String str, String str2, String str3, String str4, String str5, String str6, NumberFormat numberFormat) {
        this.f108546a = str;
        this.f108547b = str2;
        this.f108548c = str3;
        this.f108549d = str4;
        this.f108550e = str5;
        this.f108551f = str6;
        this.f108552g = numberFormat;
        numberFormat.setGroupingUsed(false);
    }

    public RealMatrix parse(String str, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        String trim = this.f108546a.trim();
        String trim2 = this.f108547b.trim();
        String trim3 = this.f108548c.trim();
        String trim4 = this.f108549d.trim();
        String trim5 = this.f108551f.trim();
        String trim6 = this.f108550e.trim();
        CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
        if (!CompositeFormat.parseFixedstring(str, trim, parsePosition)) {
            return null;
        }
        ArrayList<List> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        boolean z = true;
        while (z) {
            if (!arrayList2.isEmpty()) {
                CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
                if (!CompositeFormat.parseFixedstring(str, trim5, parsePosition)) {
                    if (trim4.length() != 0 && !CompositeFormat.parseFixedstring(str, trim4, parsePosition)) {
                        return null;
                    }
                    CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
                    if (CompositeFormat.parseFixedstring(str, trim6, parsePosition)) {
                        arrayList.add(arrayList2);
                        arrayList2 = new ArrayList();
                    } else {
                        z = false;
                    }
                }
            } else {
                CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
                if (trim3.length() != 0 && !CompositeFormat.parseFixedstring(str, trim3, parsePosition)) {
                    return null;
                }
            }
            if (z) {
                CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
                Number parseNumber = CompositeFormat.parseNumber(str, this.f108552g, parsePosition);
                if (parseNumber != null) {
                    arrayList2.add(parseNumber);
                } else {
                    if (!arrayList2.isEmpty()) {
                        parsePosition.setIndex(index);
                        return null;
                    }
                    z = false;
                }
            } else {
                continue;
            }
        }
        if (!arrayList2.isEmpty()) {
            arrayList.add(arrayList2);
        }
        CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
        if (!CompositeFormat.parseFixedstring(str, trim2, parsePosition)) {
            return null;
        }
        if (arrayList.isEmpty()) {
            parsePosition.setIndex(index);
            return null;
        }
        double[][] dArr = new double[arrayList.size()];
        int i = 0;
        for (List list : arrayList) {
            dArr[i] = new double[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                dArr[i][i2] = ((Number) list.get(i2)).doubleValue();
            }
            i++;
        }
        return MatrixUtils.createRealMatrix(dArr);
    }
}
