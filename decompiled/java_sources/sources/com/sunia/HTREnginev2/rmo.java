package com.sunia.HTREnginev2;

import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.impl.p117xs.XSAnnotationImpl;
import org.apache.xerces.impl.p117xs.XSNotationDecl;
import org.apache.xerces.impl.p117xs.traversers.AbstractC20056a;
import org.apache.xerces.impl.p117xs.traversers.XSAttributeChecker;
import org.apache.xerces.impl.p117xs.traversers.XSDHandler;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.util.DOMUtil;
import org.w3c.dom.Element;

/* loaded from: classes13.dex */
public class rmo extends AbstractC20056a {
    public rmo(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    /* renamed from: q */
    public XSNotationDecl m56983q(Element element, tmo tmoVar, SchemaGrammar schemaGrammar) {
        XSObjectListImpl xSObjectListImpl;
        Object[] checkAttributes = this.f113218c.checkAttributes(element, true, tmoVar);
        String str = (String) checkAttributes[XSAttributeChecker.ATTIDX_NAME];
        String str2 = (String) checkAttributes[XSAttributeChecker.ATTIDX_PUBLIC];
        String str3 = (String) checkAttributes[XSAttributeChecker.ATTIDX_SYSTEM];
        XSAnnotationImpl xSAnnotationImpl = null;
        if (str == null) {
            m70451j("s4s-att-must-appear", new Object[]{SchemaSymbols.ELT_NOTATION, SchemaSymbols.ATT_NAME}, element);
            this.f113218c.returnAttrArray(checkAttributes, tmoVar);
            return null;
        }
        if (str3 == null && str2 == null) {
            m70451j("PublicSystemOnNotation", null, element);
            str2 = "missing";
        }
        XSNotationDecl xSNotationDecl = new XSNotationDecl();
        xSNotationDecl.fName = str;
        xSNotationDecl.fTargetNamespace = tmoVar.f85508h;
        xSNotationDecl.fPublicId = str2;
        xSNotationDecl.fSystemId = str3;
        Element firstChildElement = DOMUtil.getFirstChildElement(element);
        if (firstChildElement == null || !DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
            String syntheticAnnotation = DOMUtil.getSyntheticAnnotation(element);
            if (syntheticAnnotation != null) {
                xSAnnotationImpl = m70457p(element, syntheticAnnotation, checkAttributes, false, tmoVar);
            }
        } else {
            xSAnnotationImpl = m70454m(firstChildElement, checkAttributes, false, tmoVar);
            firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
        }
        if (xSAnnotationImpl != null) {
            xSObjectListImpl = new XSObjectListImpl();
            xSObjectListImpl.addXSObject(xSAnnotationImpl);
        } else {
            xSObjectListImpl = XSObjectListImpl.EMPTY_LIST;
        }
        xSNotationDecl.fAnnotations = xSObjectListImpl;
        if (firstChildElement != null) {
            m70451j("s4s-elt-must-match.1", new Object[]{SchemaSymbols.ELT_NOTATION, "(annotation?)", DOMUtil.getLocalName(firstChildElement)}, firstChildElement);
        }
        if (schemaGrammar.getGlobalNotationDecl(xSNotationDecl.fName) == null) {
            schemaGrammar.addGlobalNotationDecl(xSNotationDecl);
        }
        String schemaDocument2SystemId = this.f113216a.schemaDocument2SystemId(tmoVar);
        XSNotationDecl globalNotationDecl = schemaGrammar.getGlobalNotationDecl(xSNotationDecl.fName, schemaDocument2SystemId);
        if (globalNotationDecl == null) {
            schemaGrammar.addGlobalNotationDecl(xSNotationDecl, schemaDocument2SystemId);
        }
        XSDHandler xSDHandler = this.f113216a;
        if (xSDHandler.f113133H) {
            if (globalNotationDecl != null) {
                xSNotationDecl = globalNotationDecl;
            }
            xSDHandler.m70407k(xSNotationDecl);
        }
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
        return xSNotationDecl;
    }
}
