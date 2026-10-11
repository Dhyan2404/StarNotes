package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.axes.OneStepIteratorForward;
import java.util.Vector;

/* loaded from: classes10.dex */
public class KeyIterator extends OneStepIteratorForward {
    static final long serialVersionUID = -1349109910100249661L;
    private Vector m_keyDeclarations;
    private QName m_name;

    public KeyIterator(QName qName, Vector vector) {
        super(16);
        this.m_keyDeclarations = vector;
        this.m_name = qName;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045  */
    @Override // com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public short acceptNode(int r11) {
        /*
            r10 = this;
            com.sun.org.apache.xpath.internal.axes.LocPathIterator r10 = r10.m_lpi
            com.sun.org.apache.xalan.internal.transformer.KeyIterator r10 = (com.sun.org.apache.xalan.internal.transformer.KeyIterator) r10
            com.sun.org.apache.xpath.internal.XPathContext r0 = r10.getXPathContext()
            java.util.Vector r1 = r10.getKeyDeclarations()
            com.sun.org.apache.xml.internal.utils.QName r10 = r10.getName()
            r2 = 0
            int r3 = r1.size()     // Catch: javax.xml.transform.TransformerException -> L40
            r4 = r2
        L16:
            if (r2 >= r3) goto L41
            java.lang.Object r5 = r1.elementAt(r2)     // Catch: javax.xml.transform.TransformerException -> L3f
            com.sun.org.apache.xalan.internal.templates.KeyDeclaration r5 = (com.sun.org.apache.xalan.internal.templates.KeyDeclaration) r5     // Catch: javax.xml.transform.TransformerException -> L3f
            com.sun.org.apache.xml.internal.utils.QName r6 = r5.getName()     // Catch: javax.xml.transform.TransformerException -> L3f
            boolean r6 = r6.equals(r10)     // Catch: javax.xml.transform.TransformerException -> L3f
            if (r6 != 0) goto L29
            goto L3b
        L29:
            r4 = 1
            com.sun.org.apache.xpath.internal.XPath r6 = r5.getMatch()     // Catch: javax.xml.transform.TransformerException -> L3f
            double r6 = r6.getMatchScore(r0, r11)     // Catch: javax.xml.transform.TransformerException -> L3f
            r5.getMatch()     // Catch: javax.xml.transform.TransformerException -> L3f
            r8 = -4503599627370496(0xfff0000000000000, double:-Infinity)
            int r5 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r5 != 0) goto L3e
        L3b:
            int r2 = r2 + 1
            goto L16
        L3e:
            return r4
        L3f:
            r2 = r4
        L40:
            r4 = r2
        L41:
            if (r4 == 0) goto L45
            r10 = 2
            return r10
        L45:
            java.lang.RuntimeException r11 = new java.lang.RuntimeException
            java.lang.String r10 = r10.getLocalName()
            java.lang.Object[] r10 = new java.lang.Object[]{r10}
            java.lang.String r0 = "ER_NO_XSLKEY_DECLARATION"
            java.lang.String r10 = com.sun.org.apache.xalan.internal.res.XSLMessages.createMessage(r0, r10)
            r11.<init>(r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.transformer.KeyIterator.acceptNode(int):short");
    }

    public Vector getKeyDeclarations() {
        return this.m_keyDeclarations;
    }

    public QName getName() {
        return this.m_name;
    }
}
