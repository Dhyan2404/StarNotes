package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class XSDKeyrefTraverser extends XSDAbstractIDConstraintTraverser {
    public XSDKeyrefTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void traverse(org.w3c.dom.Element r7, com.sun.org.apache.xerces.internal.impl.p055xs.XSElementDecl r8, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r9, com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar r10) {
        /*
            r6 = this;
            com.sun.org.apache.xerces.internal.impl.xs.traversers.XSAttributeChecker r0 = r6.fAttrChecker
            r1 = 0
            java.lang.Object[] r0 = r0.checkAttributes(r7, r1, r9)
            int r1 = com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSAttributeChecker.ATTIDX_NAME
            r1 = r0[r1]
            java.lang.String r1 = (java.lang.String) r1
            java.lang.String r2 = "s4s-att-must-appear"
            if (r1 != 0) goto L22
            java.lang.String r8 = com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols.ELT_KEYREF
            java.lang.String r10 = com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols.ATT_NAME
            java.lang.Object[] r8 = new java.lang.Object[]{r8, r10}
            r6.reportSchemaError(r2, r8, r7)
            com.sun.org.apache.xerces.internal.impl.xs.traversers.XSAttributeChecker r6 = r6.fAttrChecker
            r6.returnAttrArray(r0, r9)
            return
        L22:
            int r3 = com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSAttributeChecker.ATTIDX_REFER
            r3 = r0[r3]
            com.sun.org.apache.xerces.internal.xni.QName r3 = (com.sun.org.apache.xerces.internal.xni.QName) r3
            if (r3 != 0) goto L3b
            java.lang.String r8 = com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols.ELT_KEYREF
            java.lang.String r10 = com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols.ATT_REFER
            java.lang.Object[] r8 = new java.lang.Object[]{r8, r10}
            r6.reportSchemaError(r2, r8, r7)
            com.sun.org.apache.xerces.internal.impl.xs.traversers.XSAttributeChecker r6 = r6.fAttrChecker
            r6.returnAttrArray(r0, r9)
            return
        L3b:
            com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDHandler r2 = r6.fSchemaHandler
            r4 = 5
            java.lang.Object r2 = r2.getGlobalDecl(r9, r4, r3, r7)
            com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint r2 = (com.sun.org.apache.xerces.internal.impl.p055xs.identity.IdentityConstraint) r2
            if (r2 == 0) goto L66
            short r4 = r2.getCategory()
            r5 = 1
            if (r4 == r5) goto L63
            short r4 = r2.getCategory()
            r5 = 3
            if (r4 != r5) goto L55
            goto L63
        L55:
            java.lang.String r2 = r3.rawname
            java.lang.String r3 = "identity constraint key/unique"
            java.lang.Object[] r2 = new java.lang.Object[]{r2, r3}
            java.lang.String r3 = "src-resolve"
            r6.reportSchemaError(r3, r2, r7)
            goto L66
        L63:
            com.sun.org.apache.xerces.internal.impl.xs.identity.UniqueOrKey r2 = (com.sun.org.apache.xerces.internal.impl.p055xs.identity.UniqueOrKey) r2
            goto L67
        L66:
            r2 = 0
        L67:
            if (r2 != 0) goto L6f
            com.sun.org.apache.xerces.internal.impl.xs.traversers.XSAttributeChecker r6 = r6.fAttrChecker
            r6.returnAttrArray(r0, r9)
            return
        L6f:
            com.sun.org.apache.xerces.internal.impl.xs.identity.KeyRef r3 = new com.sun.org.apache.xerces.internal.impl.xs.identity.KeyRef
            java.lang.String r4 = r9.fTargetNamespace
            java.lang.String r5 = r8.fName
            r3.<init>(r4, r1, r5, r2)
            r6.traverseIdentityConstraint(r3, r7, r9, r0)
            int r4 = r2.getFieldCount()
            int r5 = r3.getFieldCount()
            if (r4 == r5) goto L93
            java.lang.String r8 = r2.getIdentityConstraintName()
            java.lang.Object[] r8 = new java.lang.Object[]{r1, r8}
            java.lang.String r10 = "c-props-correct.2"
            r6.reportSchemaError(r10, r8, r7)
            goto L96
        L93:
            r10.addIDConstraintDecl(r8, r3)
        L96:
            com.sun.org.apache.xerces.internal.impl.xs.traversers.XSAttributeChecker r6 = r6.fAttrChecker
            r6.returnAttrArray(r0, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDKeyrefTraverser.traverse(org.w3c.dom.Element, com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar):void");
    }
}
