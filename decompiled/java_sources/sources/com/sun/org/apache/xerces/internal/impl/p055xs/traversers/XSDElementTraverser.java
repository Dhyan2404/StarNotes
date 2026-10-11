package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSDeclarationPool;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSElementDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XInt;
import com.sun.org.apache.xerces.internal.p056xs.XSObject;
import com.sun.org.apache.xerces.internal.util.DOMUtil;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.xni.QName;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class XSDElementTraverser extends XSDAbstractTraverser {
    boolean fDeferTraversingLocalElements;
    protected final XSElementDecl fTempElementDecl;

    public XSDElementTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
        this.fTempElementDecl = new XSElementDecl();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDAbstractTraverser
    public void reset(SymbolTable symbolTable, boolean z) {
        super.reset(symbolTable, z);
        this.fDeferTraversingLocalElements = true;
    }

    public XSElementDecl traverseGlobal(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, true, xSDocumentInfo);
        XSElementDecl traverseNamedElement = traverseNamedElement(element, checkAttributes, xSDocumentInfo, schemaGrammar, true, null);
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        return traverseNamedElement;
    }

    public XSParticleDecl traverseLocal(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar, int i, XSObject xSObject) {
        XSParticleDecl xSParticleDecl;
        XSDeclarationPool xSDeclarationPool = this.fSchemaHandler.fDeclPool;
        if (xSDeclarationPool != null) {
            xSParticleDecl = xSDeclarationPool.getParticleDecl();
        } else {
            xSParticleDecl = new XSParticleDecl();
        }
        if (this.fDeferTraversingLocalElements) {
            xSParticleDecl.fType = (short) 1;
            Attr attributeNode = element.getAttributeNode(SchemaSymbols.ATT_MINOCCURS);
            if (attributeNode != null) {
                try {
                    int parseInt = Integer.parseInt(attributeNode.getValue().trim());
                    if (parseInt >= 0) {
                        xSParticleDecl.fMinOccurs = parseInt;
                    }
                } catch (NumberFormatException unused) {
                }
            }
            this.fSchemaHandler.fillInLocalElemInfo(element, xSDocumentInfo, i, xSObject, xSParticleDecl);
            return xSParticleDecl;
        }
        traverseLocal(xSParticleDecl, element, xSDocumentInfo, schemaGrammar, i, xSObject, null);
        if (xSParticleDecl.fType == 0) {
            return null;
        }
        return xSParticleDecl;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x034c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x034e A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xerces.internal.impl.p055xs.XSElementDecl traverseNamedElement(org.w3c.dom.Element r21, java.lang.Object[] r22, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r23, com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar r24, boolean r25, com.sun.org.apache.xerces.internal.p056xs.XSObject r26) {
        /*
            Method dump skipped, instructions count: 847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDElementTraverser.traverseNamedElement(org.w3c.dom.Element, java.lang.Object[], com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar, boolean, com.sun.org.apache.xerces.internal.xs.XSObject):com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl");
    }

    public void traverseLocal(XSParticleDecl xSParticleDecl, Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar, int i, XSObject xSObject, String[] strArr) {
        XSElementDecl traverseNamedElement;
        if (strArr != null) {
            xSDocumentInfo.fNamespaceSupport.setEffectiveContext(strArr);
        }
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo);
        QName qName = (QName) checkAttributes[XSAttributeChecker.ATTIDX_REF];
        XInt xInt = (XInt) checkAttributes[XSAttributeChecker.ATTIDX_MINOCCURS];
        XInt xInt2 = (XInt) checkAttributes[XSAttributeChecker.ATTIDX_MAXOCCURS];
        if (element.getAttributeNode(SchemaSymbols.ATT_REF) == null) {
            traverseNamedElement = traverseNamedElement(element, checkAttributes, xSDocumentInfo, schemaGrammar, false, xSObject);
        } else if (qName != null) {
            traverseNamedElement = (XSElementDecl) this.fSchemaHandler.getGlobalDecl(xSDocumentInfo, 3, qName, element);
            Element firstChildElement = DOMUtil.getFirstChildElement(element);
            if (firstChildElement != null && DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                traverseAnnotationDecl(firstChildElement, checkAttributes, false, xSDocumentInfo);
                firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
            }
            if (firstChildElement != null) {
                reportSchemaError(XmlErrorCodes.SCHEMA_ELEM$REF_FEATURES, new Object[]{qName.rawname, DOMUtil.getLocalName(firstChildElement)}, firstChildElement);
            }
        } else {
            traverseNamedElement = null;
        }
        xSParticleDecl.fMinOccurs = xInt.intValue();
        xSParticleDecl.fMaxOccurs = xInt2.intValue();
        if (traverseNamedElement != null) {
            xSParticleDecl.fType = (short) 1;
            xSParticleDecl.fValue = traverseNamedElement;
        } else {
            xSParticleDecl.fType = (short) 0;
        }
        checkOccurrences(xSParticleDecl, SchemaSymbols.ELT_ELEMENT, (Element) element.getParentNode(), i, ((Long) checkAttributes[XSAttributeChecker.ATTIDX_FROMDEFAULT]).longValue());
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
    }
}
