package com.sunia.HTREnginev2;

import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.impl.p117xs.XSAttributeGroupDecl;
import org.apache.xerces.impl.p117xs.traversers.AbstractC20056a;
import org.apache.xerces.impl.p117xs.traversers.XSAttributeChecker;
import org.apache.xerces.impl.p117xs.traversers.XSDHandler;
import org.apache.xerces.util.DOMUtil;
import org.apache.xerces.xni.QName;
import org.w3c.dom.Element;

/* loaded from: classes13.dex */
public class pmo extends AbstractC20056a {
    public pmo(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0099  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.impl.p117xs.XSAttributeGroupDecl m56328q(org.w3c.dom.Element r20, com.sunia.HTREnginev2.tmo r21, org.apache.xerces.impl.p117xs.SchemaGrammar r22) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.pmo.m56328q(org.w3c.dom.Element, com.sunia.HTREnginev2.tmo, org.apache.xerces.impl.xs.SchemaGrammar):org.apache.xerces.impl.xs.XSAttributeGroupDecl");
    }

    /* renamed from: r */
    public XSAttributeGroupDecl m56329r(Element element, tmo tmoVar, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.f113218c.checkAttributes(element, false, tmoVar);
        QName qName = (QName) checkAttributes[XSAttributeChecker.ATTIDX_REF];
        if (qName == null) {
            m70451j("s4s-att-must-appear", new Object[]{"attributeGroup (local)", "ref"}, element);
            this.f113218c.returnAttrArray(checkAttributes, tmoVar);
            return null;
        }
        XSAttributeGroupDecl xSAttributeGroupDecl = (XSAttributeGroupDecl) this.f113216a.getGlobalDecl(tmoVar, 2, qName, element);
        Element firstChildElement = DOMUtil.getFirstChildElement(element);
        if (firstChildElement != null) {
            if (DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                m70454m(firstChildElement, checkAttributes, false, tmoVar);
                firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
            } else {
                String syntheticAnnotation = DOMUtil.getSyntheticAnnotation(firstChildElement);
                if (syntheticAnnotation != null) {
                    m70457p(firstChildElement, syntheticAnnotation, checkAttributes, false, tmoVar);
                }
            }
            if (firstChildElement != null) {
                m70451j("s4s-elt-must-match.1", new Object[]{qName.rawname, "(annotation?)", DOMUtil.getLocalName(firstChildElement)}, firstChildElement);
            }
        }
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
        return xSAttributeGroupDecl;
    }
}
