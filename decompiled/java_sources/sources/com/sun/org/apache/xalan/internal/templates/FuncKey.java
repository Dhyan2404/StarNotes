package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xpath.internal.functions.Function2Args;

/* loaded from: classes10.dex */
public class FuncKey extends Function2Args {
    private static Boolean ISTRUE = new Boolean(true);
    static final long serialVersionUID = 9089293100115347340L;

    /* JADX WARN: Code restructure failed: missing block: B:7:0x004b, code lost:
    
        if (r6.getLength() <= 1) goto L12;
     */
    @Override // com.sun.org.apache.xpath.internal.functions.Function, com.sun.org.apache.xpath.internal.Expression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xpath.internal.objects.XObject execute(com.sun.org.apache.xpath.internal.XPathContext r12) throws javax.xml.transform.TransformerException {
        /*
            r11 = this;
            java.lang.Object r0 = r12.getOwnerObject()
            com.sun.org.apache.xalan.internal.transformer.TransformerImpl r0 = (com.sun.org.apache.xalan.internal.transformer.TransformerImpl) r0
            int r1 = r12.getCurrentNode()
            com.sun.org.apache.xml.internal.dtm.DTM r2 = r12.getDTM(r1)
            int r1 = r2.getDocumentRoot(r1)
            com.sun.org.apache.xpath.internal.Expression r2 = r11.getArg0()
            com.sun.org.apache.xpath.internal.objects.XObject r2 = r2.execute(r12)
            java.lang.String r2 = r2.str()
            com.sun.org.apache.xml.internal.utils.QName r9 = new com.sun.org.apache.xml.internal.utils.QName
            com.sun.org.apache.xml.internal.utils.PrefixResolver r3 = r12.getNamespaceContext()
            r9.<init>(r2, r3)
            com.sun.org.apache.xpath.internal.Expression r2 = r11.getArg1()
            com.sun.org.apache.xpath.internal.objects.XObject r2 = r2.execute(r12)
            int r3 = r2.getType()
            r4 = 0
            r5 = 1
            r6 = 4
            if (r6 != r3) goto L3a
            r3 = r5
            goto L3b
        L3a:
            r3 = r4
        L3b:
            com.sun.org.apache.xalan.internal.transformer.KeyManager r0 = r0.getKeyManager()
            if (r3 == 0) goto L4e
            r6 = r2
            com.sun.org.apache.xpath.internal.objects.XNodeSet r6 = (com.sun.org.apache.xpath.internal.objects.XNodeSet) r6
            r6.setShouldCacheNodes(r5)
            int r6 = r6.getLength()
            if (r6 > r5) goto L4e
            goto L4f
        L4e:
            r4 = r3
        L4f:
            if (r4 == 0) goto La7
            com.sun.org.apache.xml.internal.dtm.DTMIterator r2 = r2.iter()
            com.sun.org.apache.xpath.internal.axes.UnionPathIterator r10 = new com.sun.org.apache.xpath.internal.axes.UnionPathIterator
            r10.<init>()
            r10.exprSetParent(r11)
            r11 = 0
        L5e:
            int r3 = r2.nextNode()
            r4 = -1
            if (r4 == r3) goto L9a
            com.sun.org.apache.xml.internal.dtm.DTM r4 = r12.getDTM(r3)
            com.sun.org.apache.xml.internal.utils.XMLString r7 = r4.getStringValue(r3)
            if (r7 != 0) goto L70
            goto L5e
        L70:
            if (r11 != 0) goto L77
            java.util.Hashtable r11 = new java.util.Hashtable
            r11.<init>()
        L77:
            java.lang.Object r3 = r11.get(r7)
            if (r3 == 0) goto L7e
            goto L5e
        L7e:
            java.lang.Boolean r3 = com.sun.org.apache.xalan.internal.templates.FuncKey.ISTRUE
            r11.put(r7, r3)
            com.sun.org.apache.xml.internal.utils.PrefixResolver r8 = r12.getNamespaceContext()
            r3 = r0
            r4 = r12
            r5 = r1
            r6 = r9
            com.sun.org.apache.xpath.internal.objects.XNodeSet r3 = r3.getNodeSetDTMByKey(r4, r5, r6, r7, r8)
            int r4 = r12.getCurrentNode()
            r3.setRoot(r4, r12)
            r10.addIterator(r3)
            goto L5e
        L9a:
            int r11 = r12.getCurrentNode()
            r10.setRoot(r11, r12)
            com.sun.org.apache.xpath.internal.objects.XNodeSet r11 = new com.sun.org.apache.xpath.internal.objects.XNodeSet
            r11.<init>(r10)
            goto Lbe
        La7:
            com.sun.org.apache.xml.internal.utils.XMLString r7 = r2.xstr()
            com.sun.org.apache.xml.internal.utils.PrefixResolver r8 = r12.getNamespaceContext()
            r3 = r0
            r4 = r12
            r5 = r1
            r6 = r9
            com.sun.org.apache.xpath.internal.objects.XNodeSet r11 = r3.getNodeSetDTMByKey(r4, r5, r6, r7, r8)
            int r0 = r12.getCurrentNode()
            r11.setRoot(r0, r12)
        Lbe:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.templates.FuncKey.execute(com.sun.org.apache.xpath.internal.XPathContext):com.sun.org.apache.xpath.internal.objects.XObject");
    }
}
