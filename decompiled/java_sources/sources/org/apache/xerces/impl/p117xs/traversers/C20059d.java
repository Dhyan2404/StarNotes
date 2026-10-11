package org.apache.xerces.impl.p117xs.traversers;

import com.sunia.HTREnginev2.omo;
import com.sunia.HTREnginev2.tmo;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.impl.p117xs.XSAnnotationImpl;
import org.apache.xerces.impl.p117xs.XSConstraints;
import org.apache.xerces.impl.p117xs.XSGroupDecl;
import org.apache.xerces.impl.p117xs.XSModelGroupImpl;
import org.apache.xerces.impl.p117xs.XSParticleDecl;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.util.DOMUtil;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.QName;
import org.w3c.dom.Element;

/* renamed from: org.apache.xerces.impl.xs.traversers.d */
/* loaded from: classes13.dex */
public class C20059d extends omo {
    public C20059d(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    /* renamed from: v */
    public XSGroupDecl m70467v(Element element, tmo tmoVar, SchemaGrammar schemaGrammar) {
        Object obj;
        Element element2;
        XSAnnotationImpl xSAnnotationImpl;
        String str;
        Element element3;
        XSParticleDecl m56104u;
        XSAnnotationImpl xSAnnotationImpl2;
        Object m70410l0;
        XSObjectListImpl xSObjectListImpl;
        Object[] checkAttributes = this.f113218c.checkAttributes(element, true, tmoVar);
        String str2 = (String) checkAttributes[XSAttributeChecker.ATTIDX_NAME];
        if (str2 == null) {
            m70451j("s4s-att-must-appear", new Object[]{"group (global)", "name"}, element);
        }
        XSGroupDecl xSGroupDecl = new XSGroupDecl();
        Element firstChildElement = DOMUtil.getFirstChildElement(element);
        if (firstChildElement == null) {
            m70451j("s4s-elt-must-match.2", new Object[]{"group (global)", "(annotation?, (all | choice | sequence))"}, element);
            m56104u = null;
            xSAnnotationImpl2 = null;
        } else {
            String localName = firstChildElement.getLocalName();
            if (localName.equals(SchemaSymbols.ELT_ANNOTATION)) {
                XSAnnotationImpl m70454m = m70454m(firstChildElement, checkAttributes, true, tmoVar);
                Element nextSiblingElement = DOMUtil.getNextSiblingElement(firstChildElement);
                if (nextSiblingElement != null) {
                    localName = nextSiblingElement.getLocalName();
                }
                xSAnnotationImpl = m70454m;
                obj = "(annotation?, (all | choice | sequence))";
                element2 = nextSiblingElement;
            } else {
                String syntheticAnnotation = DOMUtil.getSyntheticAnnotation(element);
                if (syntheticAnnotation != null) {
                    obj = "(annotation?, (all | choice | sequence))";
                    element2 = firstChildElement;
                    localName = localName;
                    xSAnnotationImpl = m70457p(element, syntheticAnnotation, checkAttributes, false, tmoVar);
                } else {
                    obj = "(annotation?, (all | choice | sequence))";
                    element2 = firstChildElement;
                    xSAnnotationImpl = null;
                }
            }
            if (element2 == null) {
                m70451j("s4s-elt-must-match.2", new Object[]{"group (global)", obj}, element);
                str = "s4s-elt-must-match.1";
                element3 = element2;
            } else {
                if (localName.equals(SchemaSymbols.ELT_ALL)) {
                    str = "s4s-elt-must-match.1";
                    m56104u = m56101r(element2, tmoVar, schemaGrammar, 4, xSGroupDecl);
                    element3 = element2;
                } else {
                    str = "s4s-elt-must-match.1";
                    Element element4 = element2;
                    if (localName.equals(SchemaSymbols.ELT_CHOICE)) {
                        element3 = element4;
                        m56104u = m56102s(element3, tmoVar, schemaGrammar, 4, xSGroupDecl);
                    } else if (localName.equals(SchemaSymbols.ELT_SEQUENCE)) {
                        element3 = element4;
                        m56104u = m56104u(element3, tmoVar, schemaGrammar, 4, xSGroupDecl);
                    } else {
                        element3 = element4;
                        m70451j(str, new Object[]{"group (global)", obj, DOMUtil.getLocalName(element4)}, element3);
                    }
                }
                if (element3 != null && DOMUtil.getNextSiblingElement(element3) != null) {
                    m70451j(str, new Object[]{"group (global)", obj, DOMUtil.getLocalName(DOMUtil.getNextSiblingElement(element3))}, DOMUtil.getNextSiblingElement(element3));
                }
                xSAnnotationImpl2 = xSAnnotationImpl;
            }
            m56104u = null;
            if (element3 != null) {
                m70451j(str, new Object[]{"group (global)", obj, DOMUtil.getLocalName(DOMUtil.getNextSiblingElement(element3))}, DOMUtil.getNextSiblingElement(element3));
            }
            xSAnnotationImpl2 = xSAnnotationImpl;
        }
        if (str2 != null) {
            xSGroupDecl.fName = str2;
            xSGroupDecl.fTargetNamespace = tmoVar.f85508h;
            if (m56104u == null) {
                m56104u = XSConstraints.getEmptySequence();
            }
            xSGroupDecl.fModelGroup = (XSModelGroupImpl) m56104u.fValue;
            if (xSAnnotationImpl2 != null) {
                xSObjectListImpl = new XSObjectListImpl();
                xSObjectListImpl.addXSObject(xSAnnotationImpl2);
            } else {
                xSObjectListImpl = XSObjectListImpl.EMPTY_LIST;
            }
            xSGroupDecl.fAnnotations = xSObjectListImpl;
            if (schemaGrammar.getGlobalGroupDecl(xSGroupDecl.fName) == null) {
                schemaGrammar.addGlobalGroupDecl(xSGroupDecl);
            }
            String schemaDocument2SystemId = this.f113216a.schemaDocument2SystemId(tmoVar);
            XSGroupDecl globalGroupDecl = schemaGrammar.getGlobalGroupDecl(xSGroupDecl.fName, schemaDocument2SystemId);
            if (globalGroupDecl == null) {
                schemaGrammar.addGlobalGroupDecl(xSGroupDecl, schemaDocument2SystemId);
            }
            XSDHandler xSDHandler = this.f113216a;
            if (xSDHandler.f113133H) {
                if (globalGroupDecl != null) {
                    xSGroupDecl = globalGroupDecl;
                }
                xSDHandler.m70403i(xSGroupDecl);
            }
        } else {
            xSGroupDecl = null;
        }
        if (xSGroupDecl != null && (m70410l0 = this.f113216a.m70410l0(4, new QName(XMLSymbols.EMPTY_STRING, str2, str2, tmoVar.f85508h), tmoVar, element)) != null) {
            schemaGrammar.addRedefinedGroupDecl(xSGroupDecl, (XSGroupDecl) m70410l0, this.f113216a.element2Locator(element));
        }
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
        return xSGroupDecl;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a2  */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.impl.p117xs.XSParticleDecl m70468w(org.w3c.dom.Element r18, com.sunia.HTREnginev2.tmo r19, org.apache.xerces.impl.p117xs.SchemaGrammar r20) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.C20059d.m70468w(org.w3c.dom.Element, com.sunia.HTREnginev2.tmo, org.apache.xerces.impl.xs.SchemaGrammar):org.apache.xerces.impl.xs.XSParticleDecl");
    }
}
