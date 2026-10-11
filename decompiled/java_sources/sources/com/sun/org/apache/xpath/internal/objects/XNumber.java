package com.sun.org.apache.xpath.internal.objects;

import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.XPathVisitor;
import javax.xml.transform.TransformerException;
import org.apache.commons.math3.dfp.Dfp;

/* loaded from: classes10.dex */
public class XNumber extends XObject {
    static final long serialVersionUID = -2720400709619020193L;
    double m_val;

    public XNumber(double d) {
        this.m_val = d;
    }

    private static String zeros(int i) {
        if (i < 1) {
            return "";
        }
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < i; i2++) {
            cArr[i2] = '0';
        }
        return new String(cArr);
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public boolean bool() {
        return (Double.isNaN(this.m_val) || this.m_val == 0.0d) ? false : true;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject, com.sun.org.apache.xpath.internal.XPathVisitable
    public void callVisitors(ExpressionOwner expressionOwner, XPathVisitor xPathVisitor) {
        xPathVisitor.visitNumberLiteral(expressionOwner, this);
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public boolean equals(XObject xObject) {
        int type = xObject.getType();
        try {
            return type == 4 ? xObject.equals((XObject) this) : type == 1 ? xObject.bool() == bool() : this.m_val == xObject.num();
        } catch (TransformerException e) {
            throw new WrappedRuntimeException(e);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public int getType() {
        return 2;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public String getTypeString() {
        return "#NUMBER";
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public boolean isStableNumber() {
        return true;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public double num() {
        return this.m_val;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public Object object() {
        if (this.m_obj == null) {
            this.m_obj = new Double(this.m_val);
        }
        return this.m_obj;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public String str() {
        String str;
        if (Double.isNaN(this.m_val)) {
            return "NaN";
        }
        if (Double.isInfinite(this.m_val)) {
            return this.m_val > 0.0d ? "Infinity" : Dfp.f108008h;
        }
        String d = Double.toString(this.m_val);
        int length = d.length();
        int i = length - 2;
        if (d.charAt(i) == '.' && d.charAt(length - 1) == '0') {
            String substring = d.substring(0, i);
            return substring.equals("-0") ? "0" : substring;
        }
        int indexOf = d.indexOf(69);
        if (indexOf < 0) {
            int i2 = length - 1;
            return d.charAt(i2) == '0' ? d.substring(0, i2) : d;
        }
        int parseInt = Integer.parseInt(d.substring(indexOf + 1));
        if (d.charAt(0) == '-') {
            d = d.substring(1);
            indexOf--;
            str = "-";
        } else {
            str = "";
        }
        int i3 = indexOf - 2;
        if (parseInt >= i3) {
            return str + d.substring(0, 1) + d.substring(2, indexOf) + zeros(parseInt - i3);
        }
        while (d.charAt(indexOf - 1) == '0') {
            indexOf--;
        }
        if (parseInt <= 0) {
            return str + "0." + zeros((-1) - parseInt) + d.substring(0, 1) + d.substring(2, indexOf);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(d.substring(0, 1));
        int i4 = parseInt + 2;
        sb.append(d.substring(2, i4));
        sb.append(".");
        sb.append(d.substring(i4, indexOf));
        return sb.toString();
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public double num(XPathContext xPathContext) throws TransformerException {
        return this.m_val;
    }

    public XNumber(Number number) {
        this.m_val = number.doubleValue();
        this.m_obj = number;
    }
}
