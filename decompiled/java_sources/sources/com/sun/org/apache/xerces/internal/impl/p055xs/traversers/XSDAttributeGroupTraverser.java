package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAnnotationImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAttributeGroupDecl;
import com.sun.org.apache.xerces.internal.util.DOMUtil;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.QName;
import org.w3c.dom.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class XSDAttributeGroupTraverser extends XSDAbstractTraverser {
    public XSDAttributeGroupTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    public XSAttributeGroupDecl traverseGlobal(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        XSAnnotationImpl traverseSyntheticAnnotation;
        Object[] validRestrictionOf;
        XSAttributeGroupDecl xSAttributeGroupDecl = new XSAttributeGroupDecl();
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, true, xSDocumentInfo);
        String str = (String) checkAttributes[XSAttributeChecker.ATTIDX_NAME];
        if (str == null) {
            reportSchemaError("s4s-att-must-appear", new Object[]{"attributeGroup (global)", "name"}, element);
            str = "no name";
        }
        String str2 = str;
        xSAttributeGroupDecl.fName = str2;
        xSAttributeGroupDecl.fTargetNamespace = xSDocumentInfo.fTargetNamespace;
        Element firstChildElement = DOMUtil.getFirstChildElement(element);
        if (firstChildElement == null || !DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
            String syntheticAnnotation = DOMUtil.getSyntheticAnnotation(element);
            traverseSyntheticAnnotation = syntheticAnnotation != null ? traverseSyntheticAnnotation(element, syntheticAnnotation, checkAttributes, false, xSDocumentInfo) : null;
        } else {
            traverseSyntheticAnnotation = traverseAnnotationDecl(firstChildElement, checkAttributes, false, xSDocumentInfo);
            firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
        }
        Element element2 = firstChildElement;
        XSAnnotationImpl xSAnnotationImpl = traverseSyntheticAnnotation;
        Element traverseAttrsAndAttrGrps = traverseAttrsAndAttrGrps(element2, xSAttributeGroupDecl, xSDocumentInfo, schemaGrammar, null);
        if (traverseAttrsAndAttrGrps != null) {
            reportSchemaError("s4s-elt-must-match.1", new Object[]{str2, "(annotation?, ((attribute | attributeGroup)*, anyAttribute?))", DOMUtil.getLocalName(traverseAttrsAndAttrGrps)}, traverseAttrsAndAttrGrps);
        }
        xSAttributeGroupDecl.removeProhibitedAttrs();
        XSAttributeGroupDecl xSAttributeGroupDecl2 = (XSAttributeGroupDecl) this.fSchemaHandler.getGrpOrAttrGrpRedefinedByRestriction(2, new QName(XMLSymbols.EMPTY_STRING, str2, str2, xSDocumentInfo.fTargetNamespace), xSDocumentInfo, element);
        if (xSAttributeGroupDecl2 != null && (validRestrictionOf = xSAttributeGroupDecl.validRestrictionOf(str2, xSAttributeGroupDecl2)) != null) {
            reportSchemaError((String) validRestrictionOf[validRestrictionOf.length - 1], validRestrictionOf, element2);
            reportSchemaError("src-redefine.7.2.2", new Object[]{str2, validRestrictionOf[validRestrictionOf.length - 1]}, element2);
        }
        xSAttributeGroupDecl.fAnnotation = xSAnnotationImpl;
        schemaGrammar.addGlobalAttributeGroupDecl(xSAttributeGroupDecl);
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        return xSAttributeGroupDecl;
    }

    public XSAttributeGroupDecl traverseLocal(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo);
        QName qName = (QName) checkAttributes[XSAttributeChecker.ATTIDX_REF];
        if (qName == null) {
            reportSchemaError("s4s-att-must-appear", new Object[]{"attributeGroup (local)", "ref"}, element);
            this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
            return null;
        }
        XSAttributeGroupDecl xSAttributeGroupDecl = (XSAttributeGroupDecl) this.fSchemaHandler.getGlobalDecl(xSDocumentInfo, 2, qName, element);
        Element firstChildElement = DOMUtil.getFirstChildElement(element);
        if (firstChildElement != null) {
            if (DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                traverseAnnotationDecl(firstChildElement, checkAttributes, false, xSDocumentInfo);
                firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
            }
            if (firstChildElement != null) {
                reportSchemaError("s4s-elt-must-match.1", new Object[]{qName.rawname, "(annotation?)", DOMUtil.getLocalName(firstChildElement)}, firstChildElement);
            }
        }
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        return xSAttributeGroupDecl;
    }
}
