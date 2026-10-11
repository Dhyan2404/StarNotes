package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidatedInfo;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAttributeDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAttributeUseImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSDeclarationPool;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XInt;
import com.sun.org.apache.xerces.internal.util.DOMUtil;
import com.sun.org.apache.xerces.internal.xni.QName;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class XSDAttributeTraverser extends XSDAbstractTraverser {
    public XSDAttributeTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    public void checkDefaultValid(XSAttributeDecl xSAttributeDecl) throws InvalidDatatypeValueException {
        ((XSSimpleType) xSAttributeDecl.getTypeDefinition()).validate(xSAttributeDecl.getValInfo().normalizedValue, (ValidationContext) this.fValidationState, xSAttributeDecl.getValInfo());
        ((XSSimpleType) xSAttributeDecl.getTypeDefinition()).validate(xSAttributeDecl.getValInfo().stringValue(), (ValidationContext) this.fValidationState, xSAttributeDecl.getValInfo());
    }

    public XSAttributeDecl traverseGlobal(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, true, xSDocumentInfo);
        XSAttributeDecl traverseNamedAttr = traverseNamedAttr(element, checkAttributes, xSDocumentInfo, schemaGrammar, true, null);
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        return traverseNamedAttr;
    }

    public XSAttributeUseImpl traverseLocal(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar, XSComplexTypeDecl xSComplexTypeDecl) {
        short s;
        XSAttributeDecl traverseNamedAttr;
        String str;
        short s2;
        XSAttributeUseImpl xSAttributeUseImpl;
        short s3;
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo);
        String str2 = (String) checkAttributes[XSAttributeChecker.ATTIDX_DEFAULT];
        String str3 = (String) checkAttributes[XSAttributeChecker.ATTIDX_FIXED];
        String str4 = (String) checkAttributes[XSAttributeChecker.ATTIDX_NAME];
        QName qName = (QName) checkAttributes[XSAttributeChecker.ATTIDX_REF];
        XInt xInt = (XInt) checkAttributes[XSAttributeChecker.ATTIDX_USE];
        if (element.getAttributeNode(SchemaSymbols.ATT_REF) == null) {
            s = 1;
            traverseNamedAttr = traverseNamedAttr(element, checkAttributes, xSDocumentInfo, schemaGrammar, false, xSComplexTypeDecl);
        } else if (qName != null) {
            traverseNamedAttr = (XSAttributeDecl) this.fSchemaHandler.getGlobalDecl(xSDocumentInfo, 1, qName, element);
            Element firstChildElement = DOMUtil.getFirstChildElement(element);
            if (firstChildElement != null && DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                traverseAnnotationDecl(firstChildElement, checkAttributes, false, xSDocumentInfo);
                firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
            }
            if (firstChildElement != null) {
                reportSchemaError(XmlErrorCodes.SCHEMA_ATTR$REF_FEATURES, new Object[]{qName.rawname}, firstChildElement);
            }
            str4 = qName.localpart;
            s = 1;
        } else {
            s = 1;
            traverseNamedAttr = null;
        }
        if (str2 != null) {
            str = str3;
            str3 = str2;
            s2 = s;
        } else if (str3 != null) {
            s2 = 2;
            str = null;
        } else {
            str = str3;
            str3 = str2;
            s2 = 0;
        }
        if (traverseNamedAttr != null) {
            XSDeclarationPool xSDeclarationPool = this.fSchemaHandler.fDeclPool;
            xSAttributeUseImpl = xSDeclarationPool != null ? xSDeclarationPool.getAttributeUse() : new XSAttributeUseImpl();
            xSAttributeUseImpl.fAttrDecl = traverseNamedAttr;
            xSAttributeUseImpl.fUse = xInt.shortValue();
            xSAttributeUseImpl.fConstraintType = s2;
            if (str3 != null) {
                ValidatedInfo validatedInfo = new ValidatedInfo();
                xSAttributeUseImpl.fDefault = validatedInfo;
                validatedInfo.normalizedValue = str3;
            }
        } else {
            xSAttributeUseImpl = null;
        }
        if (str3 != null && str != null) {
            reportSchemaError(XmlErrorCodes.SCHEMA_ATTR$DEFAULT_OR_FIXED, new Object[]{str4}, element);
        }
        if (s2 == s && xInt != null && xInt.intValue() != 0) {
            reportSchemaError(XmlErrorCodes.SCHEMA_ATTR$DEFAULT_AND_USE_OPTIONAL, new Object[]{str4}, element);
        }
        if (str3 != null && xSAttributeUseImpl != null) {
            this.fValidationState.setNamespaceSupport(xSDocumentInfo.fNamespaceSupport);
            try {
                checkDefaultValid(xSAttributeUseImpl);
            } catch (InvalidDatatypeValueException e) {
                reportSchemaError(e.getKey(), e.getArgs(), element);
                reportSchemaError(XmlErrorCodes.ATTR_PROPERTIES$CONSTRAINT_VALID, new Object[]{str4, str3}, element);
            }
            if (((XSSimpleType) traverseNamedAttr.getTypeDefinition()).isIDType()) {
                reportSchemaError(XmlErrorCodes.ATTR_PROPERTIES$ID_FIXED_OR_DEFAULT, new Object[]{str4}, element);
            }
            if (xSAttributeUseImpl.fAttrDecl.getConstraintType() == 2 && (s3 = xSAttributeUseImpl.fConstraintType) != 0 && (s3 != 2 || !xSAttributeUseImpl.fAttrDecl.getValInfo().actualValue.equals(xSAttributeUseImpl.fDefault.actualValue))) {
                reportSchemaError("au-props-correct.2", new Object[]{str4, xSAttributeUseImpl.fAttrDecl.getValInfo().stringValue()}, element);
            }
        }
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        return xSAttributeUseImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01f6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00e2  */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [java.lang.Object[], com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xerces.internal.impl.p055xs.XSAttributeDecl traverseNamedAttr(org.w3c.dom.Element r25, java.lang.Object[] r26, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r27, com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar r28, boolean r29, com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl r30) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDAttributeTraverser.traverseNamedAttr(org.w3c.dom.Element, java.lang.Object[], com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar, boolean, com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl):com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl");
    }

    public void checkDefaultValid(XSAttributeUseImpl xSAttributeUseImpl) throws InvalidDatatypeValueException {
        XSSimpleType xSSimpleType = (XSSimpleType) xSAttributeUseImpl.fAttrDecl.getTypeDefinition();
        ValidatedInfo validatedInfo = xSAttributeUseImpl.fDefault;
        xSSimpleType.validate(validatedInfo.normalizedValue, (ValidationContext) this.fValidationState, validatedInfo);
        ((XSSimpleType) xSAttributeUseImpl.fAttrDecl.getTypeDefinition()).validate(xSAttributeUseImpl.fDefault.stringValue(), (ValidationContext) this.fValidationState, xSAttributeUseImpl.fDefault);
    }
}
