package com.sunia.HTREnginev2;

import org.apache.xerces.impl.p117xs.traversers.XSAttributeChecker;
import org.apache.xerces.impl.p117xs.traversers.XSDHandler;

/* loaded from: classes13.dex */
public class qmo extends nmo {
    public qmo(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0065  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m56727r(org.w3c.dom.Element r7, org.apache.xerces.impl.p117xs.XSElementDecl r8, com.sunia.HTREnginev2.tmo r9, org.apache.xerces.impl.p117xs.SchemaGrammar r10) {
        /*
            r6 = this;
            org.apache.xerces.impl.xs.traversers.XSAttributeChecker r0 = r6.f113218c
            r1 = 0
            java.lang.Object[] r0 = r0.checkAttributes(r7, r1, r9)
            int r1 = org.apache.xerces.impl.p117xs.traversers.XSAttributeChecker.ATTIDX_NAME
            r1 = r0[r1]
            java.lang.String r1 = (java.lang.String) r1
            java.lang.String r2 = "s4s-att-must-appear"
            if (r1 != 0) goto L22
            java.lang.String r8 = org.apache.xerces.impl.p117xs.SchemaSymbols.ELT_KEYREF
            java.lang.String r10 = org.apache.xerces.impl.p117xs.SchemaSymbols.ATT_NAME
            java.lang.Object[] r8 = new java.lang.Object[]{r8, r10}
            r6.m70451j(r2, r8, r7)
        L1c:
            org.apache.xerces.impl.xs.traversers.XSAttributeChecker r6 = r6.f113218c
            r6.returnAttrArray(r0, r9)
            return
        L22:
            int r3 = org.apache.xerces.impl.p117xs.traversers.XSAttributeChecker.ATTIDX_REFER
            r3 = r0[r3]
            org.apache.xerces.xni.QName r3 = (org.apache.xerces.xni.QName) r3
            if (r3 != 0) goto L36
            java.lang.String r8 = org.apache.xerces.impl.p117xs.SchemaSymbols.ELT_KEYREF
            java.lang.String r10 = org.apache.xerces.impl.p117xs.SchemaSymbols.ATT_REFER
            java.lang.Object[] r8 = new java.lang.Object[]{r8, r10}
            r6.m70451j(r2, r8, r7)
            goto L1c
        L36:
            org.apache.xerces.impl.xs.traversers.XSDHandler r2 = r6.f113216a
            r4 = 5
            java.lang.Object r2 = r2.getGlobalDecl(r9, r4, r3, r7)
            org.apache.xerces.impl.xs.identity.IdentityConstraint r2 = (org.apache.xerces.impl.p117xs.identity.IdentityConstraint) r2
            if (r2 == 0) goto L61
            short r4 = r2.getCategory()
            r5 = 1
            if (r4 == r5) goto L5e
            short r4 = r2.getCategory()
            r5 = 3
            if (r4 != r5) goto L50
            goto L5e
        L50:
            java.lang.String r2 = r3.rawname
            java.lang.String r3 = "identity constraint key/unique"
            java.lang.Object[] r2 = new java.lang.Object[]{r2, r3}
            java.lang.String r3 = "src-resolve"
            r6.m70451j(r3, r2, r7)
            goto L61
        L5e:
            org.apache.xerces.impl.xs.identity.UniqueOrKey r2 = (org.apache.xerces.impl.p117xs.identity.UniqueOrKey) r2
            goto L62
        L61:
            r2 = 0
        L62:
            if (r2 != 0) goto L65
            goto L1c
        L65:
            org.apache.xerces.impl.xs.identity.KeyRef r3 = new org.apache.xerces.impl.xs.identity.KeyRef
            java.lang.String r4 = r9.f85508h
            java.lang.String r5 = r8.fName
            r3.<init>(r4, r1, r5, r2)
            boolean r4 = r6.m55769q(r3, r7, r9, r0)
            if (r4 == 0) goto L1c
            int r4 = r2.getFieldCount()
            int r5 = r3.getFieldCount()
            if (r4 == r5) goto L8c
            java.lang.String r8 = r2.getIdentityConstraintName()
            java.lang.Object[] r8 = new java.lang.Object[]{r1, r8}
            java.lang.String r10 = "c-props-correct.2"
            r6.m70451j(r10, r8, r7)
            goto L1c
        L8c:
            java.lang.String r7 = r3.getIdentityConstraintName()
            org.apache.xerces.impl.xs.identity.IdentityConstraint r7 = r10.getIDConstraintDecl(r7)
            if (r7 != 0) goto L99
            r10.addIDConstraintDecl(r8, r3)
        L99:
            org.apache.xerces.impl.xs.traversers.XSDHandler r7 = r6.f113216a
            java.lang.String r7 = r7.schemaDocument2SystemId(r9)
            java.lang.String r1 = r3.getIdentityConstraintName()
            org.apache.xerces.impl.xs.identity.IdentityConstraint r1 = r10.getIDConstraintDecl(r1, r7)
            if (r1 != 0) goto Lac
            r10.addIDConstraintDecl(r8, r3, r7)
        Lac:
            org.apache.xerces.impl.xs.traversers.XSDHandler r7 = r6.f113216a
            boolean r8 = r7.f113133H
            if (r8 == 0) goto L1c
            if (r1 == 0) goto Lbb
            boolean r8 = r1 instanceof org.apache.xerces.impl.p117xs.identity.KeyRef
            if (r8 == 0) goto Lbb
            r3 = r1
            org.apache.xerces.impl.xs.identity.KeyRef r3 = (org.apache.xerces.impl.p117xs.identity.KeyRef) r3
        Lbb:
            r7.m70419q(r3)
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.qmo.m56727r(org.w3c.dom.Element, org.apache.xerces.impl.xs.XSElementDecl, com.sunia.HTREnginev2.tmo, org.apache.xerces.impl.xs.SchemaGrammar):void");
    }
}
