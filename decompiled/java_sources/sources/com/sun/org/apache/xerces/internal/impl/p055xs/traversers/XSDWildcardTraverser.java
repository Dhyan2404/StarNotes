package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAnnotationImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSDeclarationPool;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSWildcardDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XInt;
import com.sun.org.apache.xerces.internal.util.DOMUtil;
import org.w3c.dom.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class XSDWildcardTraverser extends XSDAbstractTraverser {
    public XSDWildcardTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    public XSParticleDecl traverseAny(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        XSParticleDecl xSParticleDecl;
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo);
        XSWildcardDecl traverseWildcardDecl = traverseWildcardDecl(element, checkAttributes, xSDocumentInfo, schemaGrammar);
        if (traverseWildcardDecl != null) {
            int intValue = ((XInt) checkAttributes[XSAttributeChecker.ATTIDX_MINOCCURS]).intValue();
            int intValue2 = ((XInt) checkAttributes[XSAttributeChecker.ATTIDX_MAXOCCURS]).intValue();
            if (intValue2 != 0) {
                XSDeclarationPool xSDeclarationPool = this.fSchemaHandler.fDeclPool;
                xSParticleDecl = xSDeclarationPool != null ? xSDeclarationPool.getParticleDecl() : new XSParticleDecl();
                xSParticleDecl.fType = (short) 2;
                xSParticleDecl.fValue = traverseWildcardDecl;
                xSParticleDecl.fMinOccurs = intValue;
                xSParticleDecl.fMaxOccurs = intValue2;
                this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
                return xSParticleDecl;
            }
        }
        xSParticleDecl = null;
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        return xSParticleDecl;
    }

    public XSWildcardDecl traverseAnyAttribute(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo);
        XSWildcardDecl traverseWildcardDecl = traverseWildcardDecl(element, checkAttributes, xSDocumentInfo, schemaGrammar);
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        return traverseWildcardDecl;
    }

    public XSWildcardDecl traverseWildcardDecl(Element element, Object[] objArr, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
        xSWildcardDecl.fType = ((XInt) objArr[XSAttributeChecker.ATTIDX_NAMESPACE]).shortValue();
        xSWildcardDecl.fNamespaceList = (String[]) objArr[XSAttributeChecker.ATTIDX_NAMESPACE_LIST];
        xSWildcardDecl.fProcessContents = ((XInt) objArr[XSAttributeChecker.ATTIDX_PROCESSCONTENTS]).shortValue();
        Element firstChildElement = DOMUtil.getFirstChildElement(element);
        XSAnnotationImpl xSAnnotationImpl = null;
        if (firstChildElement != null) {
            if (DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                xSAnnotationImpl = traverseAnnotationDecl(firstChildElement, objArr, false, xSDocumentInfo);
                firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
            } else {
                String syntheticAnnotation = DOMUtil.getSyntheticAnnotation(element);
                if (syntheticAnnotation != null) {
                    xSAnnotationImpl = traverseSyntheticAnnotation(element, syntheticAnnotation, objArr, false, xSDocumentInfo);
                }
            }
            if (firstChildElement != null) {
                reportSchemaError("s4s-elt-must-match.1", new Object[]{"wildcard", "(annotation?)", DOMUtil.getLocalName(firstChildElement)}, element);
            }
        } else {
            String syntheticAnnotation2 = DOMUtil.getSyntheticAnnotation(element);
            if (syntheticAnnotation2 != null) {
                xSAnnotationImpl = traverseSyntheticAnnotation(element, syntheticAnnotation2, objArr, false, xSDocumentInfo);
            }
        }
        xSWildcardDecl.fAnnotation = xSAnnotationImpl;
        return xSWildcardDecl;
    }
}
