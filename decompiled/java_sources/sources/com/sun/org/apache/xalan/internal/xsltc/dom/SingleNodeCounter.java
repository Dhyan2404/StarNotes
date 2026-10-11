package com.sun.org.apache.xalan.internal.xsltc.dom;

import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.Translet;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import org.apache.commons.math3.dfp.Dfp;

/* loaded from: classes10.dex */
public abstract class SingleNodeCounter extends NodeCounter {
    private static final int[] EmptyArray = new int[0];
    DTMAxisIterator _countSiblings;

    /* loaded from: classes10.dex */
    public static class DefaultSingleNodeCounter extends SingleNodeCounter {
        public DefaultSingleNodeCounter(Translet translet, DOM dom, DTMAxisIterator dTMAxisIterator) {
            super(translet, dom, dTMAxisIterator);
        }

        @Override // com.sun.org.apache.xalan.internal.xsltc.dom.SingleNodeCounter, com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter
        public String getCounter() {
            int i;
            double d = this._value;
            if (d == -2.147483648E9d) {
                this._countSiblings.setStartNode(this._node);
                i = 1;
                while (this._countSiblings.next() != -1) {
                    i++;
                }
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

        @Override // com.sun.org.apache.xalan.internal.xsltc.dom.SingleNodeCounter, com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter
        public NodeCounter setStartNode(int i) {
            this._node = i;
            this._nodeType = this._document.getExpandedTypeID(i);
            DOM dom = this._document;
            this._countSiblings = dom.getTypedAxisIterator(12, dom.getExpandedTypeID(i));
            return this;
        }
    }

    public SingleNodeCounter(Translet translet, DOM dom, DTMAxisIterator dTMAxisIterator) {
        super(translet, dom, dTMAxisIterator);
        this._countSiblings = null;
    }

    public static NodeCounter getDefaultNodeCounter(Translet translet, DOM dom, DTMAxisIterator dTMAxisIterator) {
        return new DefaultSingleNodeCounter(translet, dom, dTMAxisIterator);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003f, code lost:
    
        if (matchesCount(r0) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0041, code lost:
    
        r0 = r5._document.getParent(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0047, code lost:
    
        if (r0 <= (-1)) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004d, code lost:
    
        if (matchesCount(r0) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        if (matchesFrom(r0) == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0056, code lost:
    
        r0 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0057, code lost:
    
        if (r0 == (-1)) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
    
        r5._countSiblings.setStartNode(r0);
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0063, code lost:
    
        if (matchesCount(r0) == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0065, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0067, code lost:
    
        r0 = r5._countSiblings.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x006d, code lost:
    
        if (r0 != (-1)) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x006f, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x007b, code lost:
    
        return formatNumbers(com.sun.org.apache.xalan.internal.xsltc.dom.SingleNodeCounter.EmptyArray);
     */
    @Override // com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getCounter() {
        /*
            r5 = this;
            double r0 = r5._value
            r2 = -4476578029606273024(0xc1e0000000000000, double:-2.147483648E9)
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto L38
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L11
            java.lang.String r5 = "0"
            return r5
        L11:
            boolean r0 = java.lang.Double.isNaN(r0)
            if (r0 == 0) goto L1a
            java.lang.String r5 = "NaN"
            return r5
        L1a:
            double r0 = r5._value
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 >= 0) goto L29
            boolean r0 = java.lang.Double.isInfinite(r0)
            if (r0 == 0) goto L29
            java.lang.String r5 = "-Infinity"
            return r5
        L29:
            double r0 = r5._value
            boolean r0 = java.lang.Double.isInfinite(r0)
            if (r0 == 0) goto L34
            java.lang.String r5 = "Infinity"
            return r5
        L34:
            double r0 = r5._value
            int r0 = (int) r0
            goto L70
        L38:
            int r0 = r5._node
            boolean r1 = r5.matchesCount(r0)
            r2 = -1
            if (r1 != 0) goto L57
        L41:
            com.sun.org.apache.xalan.internal.xsltc.DOM r1 = r5._document
            int r0 = r1.getParent(r0)
            if (r0 <= r2) goto L57
            boolean r1 = r5.matchesCount(r0)
            if (r1 == 0) goto L50
            goto L57
        L50:
            boolean r1 = r5.matchesFrom(r0)
            if (r1 == 0) goto L41
            r0 = r2
        L57:
            if (r0 == r2) goto L75
            com.sun.org.apache.xml.internal.dtm.DTMAxisIterator r1 = r5._countSiblings
            r1.setStartNode(r0)
            r1 = 0
        L5f:
            boolean r0 = r5.matchesCount(r0)
            if (r0 == 0) goto L67
            int r1 = r1 + 1
        L67:
            com.sun.org.apache.xml.internal.dtm.DTMAxisIterator r0 = r5._countSiblings
            int r0 = r0.next()
            if (r0 != r2) goto L5f
            r0 = r1
        L70:
            java.lang.String r5 = r5.formatNumbers(r0)
            return r5
        L75:
            int[] r0 = com.sun.org.apache.xalan.internal.xsltc.dom.SingleNodeCounter.EmptyArray
            java.lang.String r5 = r5.formatNumbers(r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.dom.SingleNodeCounter.getCounter():java.lang.String");
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter
    public NodeCounter setStartNode(int i) {
        this._node = i;
        this._nodeType = this._document.getExpandedTypeID(i);
        this._countSiblings = this._document.getAxisIterator(12);
        return this;
    }
}
