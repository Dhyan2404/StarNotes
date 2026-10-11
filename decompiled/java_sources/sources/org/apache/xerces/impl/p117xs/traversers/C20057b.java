package org.apache.xerces.impl.p117xs.traversers;

import com.sunia.HTREnginev2.tmo;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.impl.p117xs.XSAnnotationImpl;
import org.apache.xerces.impl.p117xs.XSAttributeDecl;
import org.apache.xerces.impl.p117xs.XSAttributeUseImpl;
import org.apache.xerces.impl.p117xs.XSComplexTypeDecl;
import org.apache.xerces.impl.p117xs.XSDeclarationPool;
import org.apache.xerces.impl.p117xs.util.XInt;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.util.DOMUtil;
import org.apache.xerces.xni.QName;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.Element;

/* renamed from: org.apache.xerces.impl.xs.traversers.b */
/* loaded from: classes13.dex */
public class C20057b extends AbstractC20056a {
    public C20057b(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
    }

    /* renamed from: q */
    public void m70458q(XSAttributeDecl xSAttributeDecl) throws InvalidDatatypeValueException {
        ((XSSimpleType) xSAttributeDecl.getTypeDefinition()).validate(xSAttributeDecl.getValInfo().normalizedValue, (ValidationContext) this.f113220e, xSAttributeDecl.getValInfo());
        ((XSSimpleType) xSAttributeDecl.getTypeDefinition()).validate(xSAttributeDecl.getValInfo().stringValue(), (ValidationContext) this.f113220e, xSAttributeDecl.getValInfo());
    }

    /* renamed from: r */
    public void m70459r(XSAttributeUseImpl xSAttributeUseImpl) throws InvalidDatatypeValueException {
        XSSimpleType xSSimpleType = (XSSimpleType) xSAttributeUseImpl.fAttrDecl.getTypeDefinition();
        ValidatedInfo validatedInfo = xSAttributeUseImpl.fDefault;
        xSSimpleType.validate(validatedInfo.normalizedValue, (ValidationContext) this.f113220e, validatedInfo);
        ((XSSimpleType) xSAttributeUseImpl.fAttrDecl.getTypeDefinition()).validate(xSAttributeUseImpl.fDefault.stringValue(), (ValidationContext) this.f113220e, xSAttributeUseImpl.fDefault);
    }

    /* renamed from: s */
    public XSAttributeDecl m70460s(Element element, tmo tmoVar, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.f113218c.checkAttributes(element, true, tmoVar);
        XSAttributeDecl m70462u = m70462u(element, checkAttributes, tmoVar, schemaGrammar, true, null);
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
        return m70462u;
    }

    /* renamed from: t */
    public XSAttributeUseImpl m70461t(Element element, tmo tmoVar, SchemaGrammar schemaGrammar, XSComplexTypeDecl xSComplexTypeDecl) {
        String str;
        XSAttributeDecl m70462u;
        XSAnnotationImpl xSAnnotationImpl;
        String str2;
        short s;
        XSAttributeUseImpl xSAttributeUseImpl;
        ValidatedInfo validatedInfo;
        short s2;
        short s3;
        XSObjectListImpl xSObjectListImpl;
        XSAnnotationImpl xSAnnotationImpl2;
        Object[] checkAttributes = this.f113218c.checkAttributes(element, false, tmoVar);
        String str3 = (String) checkAttributes[XSAttributeChecker.ATTIDX_DEFAULT];
        String str4 = (String) checkAttributes[XSAttributeChecker.ATTIDX_FIXED];
        String str5 = (String) checkAttributes[XSAttributeChecker.ATTIDX_NAME];
        QName qName = (QName) checkAttributes[XSAttributeChecker.ATTIDX_REF];
        XInt xInt = (XInt) checkAttributes[XSAttributeChecker.ATTIDX_USE];
        String str6 = SchemaSymbols.ATT_REF;
        if (element.getAttributeNode(str6) == null) {
            str = str6;
            m70462u = m70462u(element, checkAttributes, tmoVar, schemaGrammar, false, xSComplexTypeDecl);
            xSAnnotationImpl = null;
        } else if (qName != null) {
            XSAttributeDecl xSAttributeDecl = (XSAttributeDecl) this.f113216a.getGlobalDecl(tmoVar, 1, qName, element);
            Element firstChildElement = DOMUtil.getFirstChildElement(element);
            if (firstChildElement == null || !DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                String syntheticAnnotation = DOMUtil.getSyntheticAnnotation(element);
                if (syntheticAnnotation != null) {
                    str = str6;
                    xSAnnotationImpl2 = m70457p(element, syntheticAnnotation, checkAttributes, false, tmoVar);
                    firstChildElement = firstChildElement;
                } else {
                    str = str6;
                    xSAnnotationImpl2 = null;
                }
            } else {
                XSAnnotationImpl m70454m = m70454m(firstChildElement, checkAttributes, false, tmoVar);
                firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
                xSAnnotationImpl2 = m70454m;
                str = str6;
            }
            if (firstChildElement != null) {
                m70451j(XmlErrorCodes.SCHEMA_ATTR$REF_FEATURES, new Object[]{qName.rawname}, firstChildElement);
            }
            str5 = qName.localpart;
            xSAnnotationImpl = xSAnnotationImpl2;
            m70462u = xSAttributeDecl;
        } else {
            str = str6;
            xSAnnotationImpl = null;
            m70462u = null;
        }
        if (str3 != null) {
            str2 = str4;
            str4 = str3;
            s = 1;
        } else if (str4 != null) {
            s = 2;
            str2 = null;
        } else {
            str2 = str4;
            str4 = str3;
            s = 0;
        }
        if (m70462u != null) {
            XSDeclarationPool xSDeclarationPool = this.f113216a.fDeclPool;
            xSAttributeUseImpl = xSDeclarationPool != null ? xSDeclarationPool.getAttributeUse() : new XSAttributeUseImpl();
            xSAttributeUseImpl.fAttrDecl = m70462u;
            xSAttributeUseImpl.fUse = xInt.shortValue();
            xSAttributeUseImpl.fConstraintType = s;
            if (str4 != null) {
                ValidatedInfo validatedInfo2 = new ValidatedInfo();
                xSAttributeUseImpl.fDefault = validatedInfo2;
                validatedInfo2.normalizedValue = str4;
            }
            if (element.getAttributeNode(str) == null) {
                xSAttributeUseImpl.fAnnotations = m70462u.getAnnotations();
            } else {
                if (xSAnnotationImpl != null) {
                    xSObjectListImpl = new XSObjectListImpl();
                    xSObjectListImpl.addXSObject(xSAnnotationImpl);
                } else {
                    xSObjectListImpl = XSObjectListImpl.EMPTY_LIST;
                }
                xSAttributeUseImpl.fAnnotations = xSObjectListImpl;
            }
        } else {
            xSAttributeUseImpl = null;
        }
        if (str4 != null && str2 != null) {
            m70451j(XmlErrorCodes.SCHEMA_ATTR$DEFAULT_OR_FIXED, new Object[]{str5}, element);
        }
        if (s == 1 && xInt != null && xInt.intValue() != 0) {
            m70451j(XmlErrorCodes.SCHEMA_ATTR$DEFAULT_AND_USE_OPTIONAL, new Object[]{str5}, element);
            xSAttributeUseImpl.fUse = (short) 0;
        }
        if (str4 != null && xSAttributeUseImpl != null) {
            this.f113220e.setNamespaceSupport(tmoVar.f85501a);
            try {
                m70459r(xSAttributeUseImpl);
                validatedInfo = null;
                s2 = 0;
            } catch (InvalidDatatypeValueException e) {
                m70451j(e.getKey(), e.getArgs(), element);
                m70451j(XmlErrorCodes.ATTR_PROPERTIES$CONSTRAINT_VALID, new Object[]{str5, str4}, element);
                validatedInfo = null;
                xSAttributeUseImpl.fDefault = null;
                s2 = 0;
                xSAttributeUseImpl.fConstraintType = (short) 0;
            }
            if (((XSSimpleType) m70462u.getTypeDefinition()).isIDType()) {
                m70451j(XmlErrorCodes.ATTR_PROPERTIES$ID_FIXED_OR_DEFAULT, new Object[]{str5}, element);
                xSAttributeUseImpl.fDefault = validatedInfo;
                xSAttributeUseImpl.fConstraintType = s2;
            }
            if (xSAttributeUseImpl.fAttrDecl.getConstraintType() == 2 && (s3 = xSAttributeUseImpl.fConstraintType) != 0 && (s3 != 2 || !xSAttributeUseImpl.fAttrDecl.getValInfo().actualValue.equals(xSAttributeUseImpl.fDefault.actualValue))) {
                m70451j("au-props-correct.2", new Object[]{str5, xSAttributeUseImpl.fAttrDecl.getValInfo().stringValue()}, element);
                xSAttributeUseImpl.fDefault = xSAttributeUseImpl.fAttrDecl.getValInfo();
                xSAttributeUseImpl.fConstraintType = (short) 2;
            }
        }
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
        return xSAttributeUseImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00dd  */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.impl.p117xs.XSAttributeDecl m70462u(org.w3c.dom.Element r27, java.lang.Object[] r28, com.sunia.HTREnginev2.tmo r29, org.apache.xerces.impl.p117xs.SchemaGrammar r30, boolean r31, org.apache.xerces.impl.p117xs.XSComplexTypeDecl r32) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.C20057b.m70462u(org.w3c.dom.Element, java.lang.Object[], com.sunia.HTREnginev2.tmo, org.apache.xerces.impl.xs.SchemaGrammar, boolean, org.apache.xerces.impl.xs.XSComplexTypeDecl):org.apache.xerces.impl.xs.XSAttributeDecl");
    }
}
