package org.apache.xerces.impl.p117xs.traversers;

import com.sunia.HTREnginev2.tmo;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.impl.p117xs.XSAnnotationImpl;
import org.apache.xerces.impl.p117xs.XSDeclarationPool;
import org.apache.xerces.impl.p117xs.XSParticleDecl;
import org.apache.xerces.impl.p117xs.XSWildcardDecl;
import org.apache.xerces.impl.p117xs.util.XInt;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.util.DOMUtil;
import org.w3c.dom.Element;

/* renamed from: org.apache.xerces.impl.xs.traversers.g */
/* loaded from: classes13.dex */
public class C20062g extends AbstractC20056a {
    public C20062g(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    /* renamed from: q */
    public XSParticleDecl m70478q(Element element, tmo tmoVar, SchemaGrammar schemaGrammar) {
        XSParticleDecl xSParticleDecl;
        Object[] checkAttributes = this.f113218c.checkAttributes(element, false, tmoVar);
        XSWildcardDecl m70480s = m70480s(element, checkAttributes, tmoVar, schemaGrammar);
        if (m70480s != null) {
            int intValue = ((XInt) checkAttributes[XSAttributeChecker.ATTIDX_MINOCCURS]).intValue();
            int intValue2 = ((XInt) checkAttributes[XSAttributeChecker.ATTIDX_MAXOCCURS]).intValue();
            if (intValue2 != 0) {
                XSDeclarationPool xSDeclarationPool = this.f113216a.fDeclPool;
                xSParticleDecl = xSDeclarationPool != null ? xSDeclarationPool.getParticleDecl() : new XSParticleDecl();
                xSParticleDecl.fType = (short) 2;
                xSParticleDecl.fValue = m70480s;
                xSParticleDecl.fMinOccurs = intValue;
                xSParticleDecl.fMaxOccurs = intValue2;
                xSParticleDecl.fAnnotations = m70480s.fAnnotations;
                this.f113218c.returnAttrArray(checkAttributes, tmoVar);
                return xSParticleDecl;
            }
        }
        xSParticleDecl = null;
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
        return xSParticleDecl;
    }

    /* renamed from: r */
    public XSWildcardDecl m70479r(Element element, tmo tmoVar, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.f113218c.checkAttributes(element, false, tmoVar);
        XSWildcardDecl m70480s = m70480s(element, checkAttributes, tmoVar, schemaGrammar);
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
        return m70480s;
    }

    /* renamed from: s */
    public XSWildcardDecl m70480s(Element element, Object[] objArr, tmo tmoVar, SchemaGrammar schemaGrammar) {
        XSObjectListImpl xSObjectListImpl;
        XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
        xSWildcardDecl.fType = ((XInt) objArr[XSAttributeChecker.ATTIDX_NAMESPACE]).shortValue();
        xSWildcardDecl.fNamespaceList = (String[]) objArr[XSAttributeChecker.ATTIDX_NAMESPACE_LIST];
        xSWildcardDecl.fProcessContents = ((XInt) objArr[XSAttributeChecker.ATTIDX_PROCESSCONTENTS]).shortValue();
        Element firstChildElement = DOMUtil.getFirstChildElement(element);
        XSAnnotationImpl xSAnnotationImpl = null;
        if (firstChildElement != null) {
            if (DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                xSAnnotationImpl = m70454m(firstChildElement, objArr, false, tmoVar);
                firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
            } else {
                String syntheticAnnotation = DOMUtil.getSyntheticAnnotation(element);
                if (syntheticAnnotation != null) {
                    xSAnnotationImpl = m70457p(element, syntheticAnnotation, objArr, false, tmoVar);
                }
            }
            if (firstChildElement != null) {
                m70451j("s4s-elt-must-match.1", new Object[]{"wildcard", "(annotation?)", DOMUtil.getLocalName(firstChildElement)}, element);
            }
        } else {
            String syntheticAnnotation2 = DOMUtil.getSyntheticAnnotation(element);
            if (syntheticAnnotation2 != null) {
                xSAnnotationImpl = m70457p(element, syntheticAnnotation2, objArr, false, tmoVar);
            }
        }
        if (xSAnnotationImpl != null) {
            xSObjectListImpl = new XSObjectListImpl();
            xSObjectListImpl.addXSObject(xSAnnotationImpl);
        } else {
            xSObjectListImpl = XSObjectListImpl.EMPTY_LIST;
        }
        xSWildcardDecl.fAnnotations = xSObjectListImpl;
        return xSWildcardDecl;
    }
}
