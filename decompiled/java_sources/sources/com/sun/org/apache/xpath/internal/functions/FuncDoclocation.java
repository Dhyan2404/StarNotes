package com.sun.org.apache.xpath.internal.functions;

/* loaded from: classes10.dex */
public class FuncDoclocation extends FunctionDef1Arg {
    static final long serialVersionUID = 7469213946343568769L;

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    @Override // com.sun.org.apache.xpath.internal.functions.Function, com.sun.org.apache.xpath.internal.Expression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xpath.internal.objects.XObject execute(com.sun.org.apache.xpath.internal.XPathContext r4) throws javax.xml.transform.TransformerException {
        /*
            r3 = this;
            int r3 = r3.getArg0AsNode(r4)
            r0 = -1
            if (r0 == r3) goto L1e
            com.sun.org.apache.xml.internal.dtm.DTM r4 = r4.getDTM(r3)
            short r1 = r4.getNodeType(r3)
            r2 = 11
            if (r2 != r1) goto L17
            int r3 = r4.getFirstChild(r3)
        L17:
            if (r0 == r3) goto L1e
            java.lang.String r3 = r4.getDocumentBaseURI()
            goto L1f
        L1e:
            r3 = 0
        L1f:
            com.sun.org.apache.xpath.internal.objects.XString r4 = new com.sun.org.apache.xpath.internal.objects.XString
            if (r3 == 0) goto L24
            goto L26
        L24:
            java.lang.String r3 = ""
        L26:
            r4.<init>(r3)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.functions.FuncDoclocation.execute(com.sun.org.apache.xpath.internal.XPathContext):com.sun.org.apache.xpath.internal.objects.XObject");
    }
}
