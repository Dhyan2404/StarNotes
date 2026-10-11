package com.sun.org.apache.xpath.internal.patterns;

import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ContextMatchStepPattern extends StepPattern {
    static final long serialVersionUID = -1888092779313211942L;

    public ContextMatchStepPattern(int i, int i2) {
        super(-1, i, i2);
    }

    @Override // com.sun.org.apache.xpath.internal.patterns.StepPattern, com.sun.org.apache.xpath.internal.patterns.NodeTest, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        return xPathContext.getIteratorRoot() == xPathContext.getCurrentNode() ? getStaticScore() : NodeTest.SCORE_NONE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0097, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x009b, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xpath.internal.objects.XObject executeRelativePathPattern(com.sun.org.apache.xpath.internal.XPathContext r17, com.sun.org.apache.xpath.internal.patterns.StepPattern r18) throws javax.xml.transform.TransformerException {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            com.sun.org.apache.xpath.internal.objects.XNumber r2 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE
            int r3 = r17.getCurrentNode()
            com.sun.org.apache.xml.internal.dtm.DTM r4 = r1.getDTM(r3)
            if (r4 == 0) goto L9c
            r17.getCurrentNode()
            int r5 = r0.m_axis
            boolean r6 = com.sun.org.apache.xpath.internal.axes.WalkerFactory.isDownwardAxisOfMany(r5)
            int r7 = r17.getIteratorRoot()
            short r7 = r4.getNodeType(r7)
            r9 = 1
            r10 = 2
            if (r7 != r10) goto L27
            r7 = r9
            goto L28
        L27:
            r7 = 0
        L28:
            r11 = 11
            if (r11 != r5) goto L30
            if (r7 == 0) goto L30
            r5 = 15
        L30:
            com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser r5 = r4.getAxisTraverser(r5)
            int r11 = r5.first(r3)
        L38:
            r12 = -1
            if (r12 == r11) goto L9c
            r1.pushCurrentNode(r11)     // Catch: java.lang.Throwable -> L97
            com.sun.org.apache.xpath.internal.objects.XObject r2 = r16.execute(r17)     // Catch: java.lang.Throwable -> L97
            com.sun.org.apache.xpath.internal.objects.XNumber r13 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE     // Catch: java.lang.Throwable -> L97
            if (r2 == r13) goto L51
            boolean r14 = r0.executePredicates(r1, r4, r3)     // Catch: java.lang.Throwable -> L97
            if (r14 == 0) goto L50
            r17.popCurrentNode()
            return r2
        L50:
            r2 = r13
        L51:
            if (r6 == 0) goto L8f
            if (r7 == 0) goto L8f
            short r13 = r4.getNodeType(r11)     // Catch: java.lang.Throwable -> L97
            if (r9 != r13) goto L8f
            r14 = r10
            r13 = 0
        L5d:
            if (r13 >= r10) goto L8f
            com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser r14 = r4.getAxisTraverser(r14)     // Catch: java.lang.Throwable -> L97
            int r15 = r14.first(r11)     // Catch: java.lang.Throwable -> L97
        L67:
            if (r12 == r15) goto L8a
            r1.pushCurrentNode(r15)     // Catch: java.lang.Throwable -> L85
            com.sun.org.apache.xpath.internal.objects.XObject r2 = r16.execute(r17)     // Catch: java.lang.Throwable -> L85
            com.sun.org.apache.xpath.internal.objects.XNumber r8 = com.sun.org.apache.xpath.internal.patterns.NodeTest.SCORE_NONE     // Catch: java.lang.Throwable -> L85
            if (r2 == r8) goto L7d
            if (r2 == r8) goto L7d
            r17.popCurrentNode()     // Catch: java.lang.Throwable -> L97
            r17.popCurrentNode()
            return r2
        L7d:
            r17.popCurrentNode()     // Catch: java.lang.Throwable -> L97
            int r15 = r14.next(r11, r15)     // Catch: java.lang.Throwable -> L97
            goto L67
        L85:
            r0 = move-exception
            r17.popCurrentNode()     // Catch: java.lang.Throwable -> L97
            throw r0     // Catch: java.lang.Throwable -> L97
        L8a:
            int r13 = r13 + 1
            r14 = 9
            goto L5d
        L8f:
            r17.popCurrentNode()
            int r11 = r5.next(r3, r11)
            goto L38
        L97:
            r0 = move-exception
            r17.popCurrentNode()
            throw r0
        L9c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.patterns.ContextMatchStepPattern.executeRelativePathPattern(com.sun.org.apache.xpath.internal.XPathContext, com.sun.org.apache.xpath.internal.patterns.StepPattern):com.sun.org.apache.xpath.internal.objects.XObject");
    }
}
