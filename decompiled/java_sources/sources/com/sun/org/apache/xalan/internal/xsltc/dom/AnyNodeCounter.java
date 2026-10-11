package com.sun.org.apache.xalan.internal.xsltc.dom;

import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.Translet;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import org.apache.commons.math3.dfp.Dfp;

/* loaded from: classes10.dex */
public abstract class AnyNodeCounter extends NodeCounter {

    /* loaded from: classes10.dex */
    public static class DefaultAnyNodeCounter extends AnyNodeCounter {
        public DefaultAnyNodeCounter(Translet translet, DOM dom, DTMAxisIterator dTMAxisIterator) {
            super(translet, dom, dTMAxisIterator);
        }

        @Override // com.sun.org.apache.xalan.internal.xsltc.dom.AnyNodeCounter, com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter
        public String getCounter() {
            int i;
            double d = this._value;
            if (d == -2.147483648E9d) {
                int i2 = this._node;
                int expandedTypeID = this._document.getExpandedTypeID(i2);
                int document = this._document.getDocument();
                int i3 = 0;
                while (i2 >= 0) {
                    if (expandedTypeID == this._document.getExpandedTypeID(i2)) {
                        i3++;
                    }
                    if (i2 == document) {
                        break;
                    }
                    i2--;
                }
                i = i3;
            } else {
                if (d == 0.0d) {
                    return "0";
                }
                if (Double.isNaN(d)) {
                    return "NaN";
                }
                double d2 = this._value;
                if (d2 < 0.0d && Double.isInfinite(d2)) {
                    return Dfp.f108008h;
                }
                if (Double.isInfinite(this._value)) {
                    return "Infinity";
                }
                i = (int) this._value;
            }
            return formatNumbers(i);
        }
    }

    public AnyNodeCounter(Translet translet, DOM dom, DTMAxisIterator dTMAxisIterator) {
        super(translet, dom, dTMAxisIterator);
    }

    public static NodeCounter getDefaultNodeCounter(Translet translet, DOM dom, DTMAxisIterator dTMAxisIterator) {
        return new DefaultAnyNodeCounter(translet, dom, dTMAxisIterator);
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
        int document = this._document.getDocument();
        int i = 0;
        for (int i2 = this._node; i2 >= document && !matchesFrom(i2); i2--) {
            if (matchesCount(i2)) {
                i++;
            }
        }
        return formatNumbers(i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter
    public NodeCounter setStartNode(int i) {
        this._node = i;
        this._nodeType = this._document.getExpandedTypeID(i);
        return this;
    }
}
