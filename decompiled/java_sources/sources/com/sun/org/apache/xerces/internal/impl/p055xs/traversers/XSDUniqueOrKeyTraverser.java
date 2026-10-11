package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSElementDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.identity.UniqueOrKey;
import com.sun.org.apache.xerces.internal.util.DOMUtil;
import org.w3c.dom.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class XSDUniqueOrKeyTraverser extends XSDAbstractIDConstraintTraverser {
    public XSDUniqueOrKeyTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    public void traverse(Element element, XSElementDecl xSElementDecl, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo);
        String str = (String) checkAttributes[XSAttributeChecker.ATTIDX_NAME];
        if (str == null) {
            reportSchemaError("s4s-att-must-appear", new Object[]{DOMUtil.getLocalName(element), SchemaSymbols.ATT_NAME}, element);
            this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        } else {
            UniqueOrKey uniqueOrKey = DOMUtil.getLocalName(element).equals(SchemaSymbols.ELT_UNIQUE) ? new UniqueOrKey(xSDocumentInfo.fTargetNamespace, str, xSElementDecl.fName, (short) 3) : new UniqueOrKey(xSDocumentInfo.fTargetNamespace, str, xSElementDecl.fName, (short) 1);
            traverseIdentityConstraint(uniqueOrKey, element, xSDocumentInfo, checkAttributes);
            schemaGrammar.addIDConstraintDecl(xSElementDecl, uniqueOrKey);
            this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        }
    }
}
