package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSDeclarationPool;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSGroupDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XInt;
import com.sun.org.apache.xerces.internal.util.DOMUtil;
import com.sun.org.apache.xerces.internal.xni.QName;
import org.w3c.dom.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class XSDGroupTraverser extends XSDAbstractParticleTraverser {
    public XSDGroupTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xerces.internal.impl.p055xs.XSGroupDecl traverseGlobal(org.w3c.dom.Element r20, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r21, com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar r22) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDGroupTraverser.traverseGlobal(org.w3c.dom.Element, com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar):com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl");
    }

    public XSParticleDecl traverseLocal(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        XSGroupDecl xSGroupDecl;
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo);
        QName qName = (QName) checkAttributes[XSAttributeChecker.ATTIDX_REF];
        XInt xInt = (XInt) checkAttributes[XSAttributeChecker.ATTIDX_MINOCCURS];
        XInt xInt2 = (XInt) checkAttributes[XSAttributeChecker.ATTIDX_MAXOCCURS];
        XSParticleDecl xSParticleDecl = null;
        if (qName == null) {
            reportSchemaError("s4s-att-must-appear", new Object[]{"group (local)", "ref"}, element);
            xSGroupDecl = null;
        } else {
            xSGroupDecl = (XSGroupDecl) this.fSchemaHandler.getGlobalDecl(xSDocumentInfo, 4, qName, element);
        }
        Element firstChildElement = DOMUtil.getFirstChildElement(element);
        if (firstChildElement != null && DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
            traverseAnnotationDecl(firstChildElement, checkAttributes, false, xSDocumentInfo);
            firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
        }
        if (firstChildElement != null) {
            reportSchemaError("s4s-elt-must-match.1", new Object[]{"group (local)", "(annotation?)", DOMUtil.getLocalName(element)}, element);
        }
        int intValue = xInt.intValue();
        int intValue2 = xInt2.intValue();
        if (xSGroupDecl != null && xSGroupDecl.fModelGroup != null && (intValue != 0 || intValue2 != 0)) {
            XSDeclarationPool xSDeclarationPool = this.fSchemaHandler.fDeclPool;
            xSParticleDecl = xSDeclarationPool != null ? xSDeclarationPool.getParticleDecl() : new XSParticleDecl();
            xSParticleDecl.fType = (short) 3;
            xSParticleDecl.fValue = xSGroupDecl.fModelGroup;
            xSParticleDecl.fMinOccurs = intValue;
            xSParticleDecl.fMaxOccurs = intValue2;
        }
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        return xSParticleDecl;
    }
}
