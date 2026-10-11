package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAnnotationImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSNotationDecl;
import com.sun.org.apache.xerces.internal.util.DOMUtil;
import org.w3c.dom.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class XSDNotationTraverser extends XSDAbstractTraverser {
    public XSDNotationTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    public XSNotationDecl traverse(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, true, xSDocumentInfo);
        String str = (String) checkAttributes[XSAttributeChecker.ATTIDX_NAME];
        String str2 = (String) checkAttributes[XSAttributeChecker.ATTIDX_PUBLIC];
        String str3 = (String) checkAttributes[XSAttributeChecker.ATTIDX_SYSTEM];
        XSAnnotationImpl xSAnnotationImpl = null;
        if (str == null) {
            reportSchemaError("s4s-att-must-appear", new Object[]{SchemaSymbols.ELT_NOTATION, SchemaSymbols.ATT_NAME}, element);
            this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
            return null;
        }
        if (str3 == null && str2 == null) {
            reportSchemaError("PublicSystemOnNotation", null, element);
        }
        XSNotationDecl xSNotationDecl = new XSNotationDecl();
        xSNotationDecl.fName = str;
        xSNotationDecl.fTargetNamespace = xSDocumentInfo.fTargetNamespace;
        xSNotationDecl.fPublicId = str2;
        xSNotationDecl.fSystemId = str3;
        Element firstChildElement = DOMUtil.getFirstChildElement(element);
        if (firstChildElement == null || !DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
            String syntheticAnnotation = DOMUtil.getSyntheticAnnotation(element);
            if (syntheticAnnotation != null) {
                xSAnnotationImpl = traverseSyntheticAnnotation(element, syntheticAnnotation, checkAttributes, false, xSDocumentInfo);
            }
        } else {
            xSAnnotationImpl = traverseAnnotationDecl(firstChildElement, checkAttributes, false, xSDocumentInfo);
            firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
        }
        xSNotationDecl.fAnnotation = xSAnnotationImpl;
        if (firstChildElement != null) {
            reportSchemaError("s4s-elt-must-match.1", new Object[]{SchemaSymbols.ELT_NOTATION, "(annotation?)", DOMUtil.getLocalName(firstChildElement)}, firstChildElement);
        }
        schemaGrammar.addGlobalNotationDecl(xSNotationDecl);
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        return xSNotationDecl;
    }
}
