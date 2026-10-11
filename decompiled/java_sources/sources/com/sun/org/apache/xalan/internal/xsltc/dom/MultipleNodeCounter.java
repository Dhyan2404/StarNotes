package com.sun.org.apache.xalan.internal.xsltc.dom;

import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.Translet;
import com.sun.org.apache.xalan.internal.xsltc.util.IntegerArray;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import org.apache.commons.math3.dfp.Dfp;

/* loaded from: classes10.dex */
public abstract class MultipleNodeCounter extends NodeCounter {
    private DTMAxisIterator _precSiblings;

    /* loaded from: classes10.dex */
    public static class DefaultMultipleNodeCounter extends MultipleNodeCounter {
        public DefaultMultipleNodeCounter(Translet translet, DOM dom, DTMAxisIterator dTMAxisIterator) {
            super(translet, dom, dTMAxisIterator);
        }
    }

    public MultipleNodeCounter(Translet translet, DOM dom, DTMAxisIterator dTMAxisIterator) {
        super(translet, dom, dTMAxisIterator);
        this._precSiblings = null;
    }

    public static NodeCounter getDefaultNodeCounter(Translet translet, DOM dom, DTMAxisIterator dTMAxisIterator) {
        return new DefaultMultipleNodeCounter(translet, dom, dTMAxisIterator);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter
    public String getCounter() {
        double d = this._value;
        if (d != -2.147483648E9d) {
            if (d == 0.0d) {
                return "0";
            }
            if (Double.isNaN(d)) {
                return "NaN";
            }
            double d2 = this._value;
            return (d2 >= 0.0d || !Double.isInfinite(d2)) ? Double.isInfinite(this._value) ? "Infinity" : formatNumbers((int) this._value) : Dfp.f108008h;
        }
        IntegerArray integerArray = new IntegerArray();
        int i = this._node;
        integerArray.add(i);
        while (true) {
            i = this._document.getParent(i);
            if (i <= -1 || matchesFrom(i)) {
                break;
            }
            integerArray.add(i);
        }
        int cardinality = integerArray.cardinality();
        int[] iArr = new int[cardinality];
        int i2 = 0;
        for (int i3 = 0; i3 < cardinality; i3++) {
            iArr[i3] = Integer.MIN_VALUE;
        }
        int i4 = cardinality - 1;
        while (i4 >= 0) {
            int i5 = iArr[i2];
            int m52897at = integerArray.m52897at(i4);
            if (matchesCount(m52897at)) {
                this._precSiblings.setStartNode(m52897at);
                while (true) {
                    int next = this._precSiblings.next();
                    if (next == -1) {
                        break;
                    }
                    if (matchesCount(next)) {
                        int i6 = iArr[i2];
                        iArr[i2] = i6 == Integer.MIN_VALUE ? 1 : i6 + 1;
                    }
                }
                int i7 = iArr[i2];
                iArr[i2] = i7 == Integer.MIN_VALUE ? 1 : i7 + 1;
            }
            i4--;
            i2++;
        }
        return formatNumbers(iArr);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter
    public NodeCounter setStartNode(int i) {
        this._node = i;
        this._nodeType = this._document.getExpandedTypeID(i);
        this._precSiblings = this._document.getAxisIterator(12);
        return this;
    }
}
