package com.sunia.HTREnginev2;

import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.impl.p117xs.XSElementDecl;
import org.apache.xerces.impl.p117xs.identity.IdentityConstraint;
import org.apache.xerces.impl.p117xs.identity.UniqueOrKey;
import org.apache.xerces.impl.p117xs.traversers.XSAttributeChecker;
import org.apache.xerces.impl.p117xs.traversers.XSDHandler;
import org.apache.xerces.util.DOMUtil;
import org.w3c.dom.Element;

/* loaded from: classes13.dex */
public class smo extends nmo {
    public smo(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    /* renamed from: r */
    public void m57179r(Element element, XSElementDecl xSElementDecl, tmo tmoVar, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.f113218c.checkAttributes(element, false, tmoVar);
        String str = (String) checkAttributes[XSAttributeChecker.ATTIDX_NAME];
        if (str == null) {
            m70451j("s4s-att-must-appear", new Object[]{DOMUtil.getLocalName(element), SchemaSymbols.ATT_NAME}, element);
        } else {
            UniqueOrKey uniqueOrKey = DOMUtil.getLocalName(element).equals(SchemaSymbols.ELT_UNIQUE) ? new UniqueOrKey(tmoVar.f85508h, str, xSElementDecl.fName, (short) 3) : new UniqueOrKey(tmoVar.f85508h, str, xSElementDecl.fName, (short) 1);
            if (m55769q(uniqueOrKey, element, tmoVar, checkAttributes)) {
                if (schemaGrammar.getIDConstraintDecl(uniqueOrKey.getIdentityConstraintName()) == null) {
                    schemaGrammar.addIDConstraintDecl(xSElementDecl, uniqueOrKey);
                }
                String schemaDocument2SystemId = this.f113216a.schemaDocument2SystemId(tmoVar);
                IdentityConstraint iDConstraintDecl = schemaGrammar.getIDConstraintDecl(uniqueOrKey.getIdentityConstraintName(), schemaDocument2SystemId);
                if (iDConstraintDecl == null) {
                    schemaGrammar.addIDConstraintDecl(xSElementDecl, uniqueOrKey, schemaDocument2SystemId);
                }
                XSDHandler xSDHandler = this.f113216a;
                if (xSDHandler.f113133H) {
                    if (iDConstraintDecl != null) {
                        boolean z = iDConstraintDecl instanceof UniqueOrKey;
                    }
                    xSDHandler.m70419q(uniqueOrKey);
                }
            }
        }
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
    }
}
