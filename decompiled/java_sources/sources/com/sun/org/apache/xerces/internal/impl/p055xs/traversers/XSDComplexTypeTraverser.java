package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p053dv.SchemaDVFactory;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAnnotationImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAttributeGroupDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAttributeUseImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSModelGroupImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSWildcardDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XInt;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XSObjectListImpl;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.util.DOMUtil;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sunia.HTREnginev2.gon;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class XSDComplexTypeTraverser extends XSDAbstractParticleTraverser {
    private static final boolean DEBUG = false;
    private static final int GLOBAL_NUM = 11;
    private XSAnnotationImpl[] fAnnotations;
    private XSAttributeGroupDecl fAttrGrp;
    private XSTypeDefinition fBaseType;
    private short fBlock;
    private XSComplexTypeDecl fComplexTypeDecl;
    private short fContentType;
    private short fDerivedBy;
    private XSParticleDecl fEmptyParticle;
    private short fFinal;
    private Object[] fGlobalStore;
    private int fGlobalStorePos;
    private boolean fIsAbstract;
    private String fName;
    private XSParticleDecl fParticle;
    private String fTargetNamespace;
    private XSSimpleType fXSSimpleType;
    private SchemaDVFactory schemaFactory;

    public XSDComplexTypeTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
        this.fName = null;
        this.fTargetNamespace = null;
        this.fDerivedBy = (short) 2;
        this.fFinal = (short) 0;
        this.fBlock = (short) 0;
        this.fContentType = (short) 0;
        this.fBaseType = null;
        this.fAttrGrp = null;
        this.fXSSimpleType = null;
        this.fParticle = null;
        this.fIsAbstract = false;
        this.fComplexTypeDecl = null;
        this.fAnnotations = null;
        this.fEmptyParticle = null;
        this.fGlobalStore = null;
        this.fGlobalStorePos = 0;
        this.schemaFactory = SchemaDVFactory.getInstance();
    }

    private void addAnnotation(XSAnnotationImpl xSAnnotationImpl) {
        if (xSAnnotationImpl == null) {
            return;
        }
        XSAnnotationImpl[] xSAnnotationImplArr = this.fAnnotations;
        if (xSAnnotationImplArr == null) {
            this.fAnnotations = new XSAnnotationImpl[1];
        } else {
            XSAnnotationImpl[] xSAnnotationImplArr2 = new XSAnnotationImpl[xSAnnotationImplArr.length + 1];
            System.arraycopy(xSAnnotationImplArr, 0, xSAnnotationImplArr2, 0, xSAnnotationImplArr.length);
            this.fAnnotations = xSAnnotationImplArr2;
        }
        XSAnnotationImpl[] xSAnnotationImplArr3 = this.fAnnotations;
        xSAnnotationImplArr3[xSAnnotationImplArr3.length - 1] = xSAnnotationImpl;
    }

    private void contentBackup() {
        if (this.fGlobalStore == null) {
            this.fGlobalStore = new Object[11];
            this.fGlobalStorePos = 0;
        }
        int i = this.fGlobalStorePos;
        Object[] objArr = this.fGlobalStore;
        if (i == objArr.length) {
            Object[] objArr2 = new Object[i + 11];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            this.fGlobalStore = objArr2;
        }
        Object[] objArr3 = this.fGlobalStore;
        int i2 = this.fGlobalStorePos;
        int i3 = i2 + 1;
        objArr3[i2] = this.fComplexTypeDecl;
        int i4 = i3 + 1;
        this.fGlobalStorePos = i4;
        objArr3[i3] = this.fIsAbstract ? Boolean.TRUE : Boolean.FALSE;
        int i5 = i4 + 1;
        objArr3[i4] = this.fName;
        int i6 = i5 + 1;
        objArr3[i5] = this.fTargetNamespace;
        this.fGlobalStorePos = i6 + 1;
        objArr3[i6] = new Integer((this.fDerivedBy << 16) + this.fFinal);
        Object[] objArr4 = this.fGlobalStore;
        int i7 = this.fGlobalStorePos;
        this.fGlobalStorePos = i7 + 1;
        objArr4[i7] = new Integer((this.fBlock << 16) + this.fContentType);
        Object[] objArr5 = this.fGlobalStore;
        int i8 = this.fGlobalStorePos;
        int i9 = i8 + 1;
        objArr5[i8] = this.fBaseType;
        int i10 = i9 + 1;
        objArr5[i9] = this.fAttrGrp;
        int i11 = i10 + 1;
        objArr5[i10] = this.fParticle;
        int i12 = i11 + 1;
        objArr5[i11] = this.fXSSimpleType;
        this.fGlobalStorePos = i12 + 1;
        objArr5[i12] = this.fAnnotations;
    }

    private void contentRestore() {
        Object[] objArr = this.fGlobalStore;
        int i = this.fGlobalStorePos - 1;
        this.fGlobalStorePos = i;
        this.fAnnotations = (XSAnnotationImpl[]) objArr[i];
        int i2 = i - 1;
        this.fGlobalStorePos = i2;
        this.fXSSimpleType = (XSSimpleType) objArr[i2];
        int i3 = i2 - 1;
        this.fGlobalStorePos = i3;
        this.fParticle = (XSParticleDecl) objArr[i3];
        int i4 = i3 - 1;
        this.fGlobalStorePos = i4;
        this.fAttrGrp = (XSAttributeGroupDecl) objArr[i4];
        int i5 = i4 - 1;
        this.fGlobalStorePos = i5;
        this.fBaseType = (XSTypeDefinition) objArr[i5];
        int i6 = i5 - 1;
        this.fGlobalStorePos = i6;
        int intValue = ((Integer) objArr[i6]).intValue();
        this.fBlock = (short) (intValue >> 16);
        this.fContentType = (short) intValue;
        Object[] objArr2 = this.fGlobalStore;
        int i7 = this.fGlobalStorePos - 1;
        this.fGlobalStorePos = i7;
        int intValue2 = ((Integer) objArr2[i7]).intValue();
        this.fDerivedBy = (short) (intValue2 >> 16);
        this.fFinal = (short) intValue2;
        Object[] objArr3 = this.fGlobalStore;
        int i8 = this.fGlobalStorePos - 1;
        this.fGlobalStorePos = i8;
        this.fTargetNamespace = (String) objArr3[i8];
        int i9 = i8 - 1;
        this.fGlobalStorePos = i9;
        this.fName = (String) objArr3[i9];
        int i10 = i9 - 1;
        this.fGlobalStorePos = i10;
        this.fIsAbstract = ((Boolean) objArr3[i10]).booleanValue();
        Object[] objArr4 = this.fGlobalStore;
        int i11 = this.fGlobalStorePos - 1;
        this.fGlobalStorePos = i11;
        this.fComplexTypeDecl = (XSComplexTypeDecl) objArr4[i11];
    }

    private String genAnonTypeName(Element element) {
        StringBuffer stringBuffer = new StringBuffer("#AnonType_");
        for (Element parent = DOMUtil.getParent(element); parent != null && parent != DOMUtil.getRoot(DOMUtil.getDocument(parent)); parent = DOMUtil.getParent(parent)) {
            stringBuffer.append(parent.getAttribute(SchemaSymbols.ATT_NAME));
        }
        return stringBuffer.toString();
    }

    private XSParticleDecl getErrorContent() {
        XSParticleDecl xSParticleDecl = new XSParticleDecl();
        xSParticleDecl.fType = (short) 2;
        xSParticleDecl.fValue = getErrorWildcard();
        xSParticleDecl.fMinOccurs = 0;
        xSParticleDecl.fMaxOccurs = -1;
        XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
        xSModelGroupImpl.fCompositor = (short) 102;
        xSModelGroupImpl.fParticleCount = 1;
        xSModelGroupImpl.fParticles = r2;
        XSParticleDecl[] xSParticleDeclArr = {xSParticleDecl};
        XSParticleDecl xSParticleDecl2 = new XSParticleDecl();
        xSParticleDecl2.fType = (short) 3;
        xSParticleDecl2.fValue = xSModelGroupImpl;
        return xSParticleDecl2;
    }

    private XSWildcardDecl getErrorWildcard() {
        XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
        xSWildcardDecl.fProcessContents = (short) 2;
        return xSWildcardDecl;
    }

    private void handleComplexTypeError(String str, Object[] objArr, Element element) {
        if (str != null) {
            reportSchemaError(str, objArr, element);
        }
        this.fBaseType = SchemaGrammar.fAnyType;
        this.fContentType = (short) 3;
        this.fParticle = getErrorContent();
        this.fAttrGrp.fAttributeWC = getErrorWildcard();
    }

    private boolean isAttrOrAttrGroup(Element element) {
        String localName = DOMUtil.getLocalName(element);
        return localName.equals(SchemaSymbols.ELT_ATTRIBUTE) || localName.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP) || localName.equals(SchemaSymbols.ELT_ANYATTRIBUTE);
    }

    private void mergeAttributes(XSAttributeGroupDecl xSAttributeGroupDecl, XSAttributeGroupDecl xSAttributeGroupDecl2, String str, boolean z, Element element) throws ComplexTypeRecoverableError {
        XSObjectList attributeUses = xSAttributeGroupDecl.getAttributeUses();
        int length = attributeUses.getLength();
        for (int i = 0; i < length; i++) {
            XSAttributeUseImpl xSAttributeUseImpl = (XSAttributeUseImpl) attributeUses.item(i);
            if (xSAttributeGroupDecl2.getAttributeUse(xSAttributeUseImpl.fAttrDecl.getNamespace(), xSAttributeUseImpl.fAttrDecl.getName()) == null) {
                String addAttributeUse = xSAttributeGroupDecl2.addAttributeUse(xSAttributeUseImpl);
                if (addAttributeUse != null) {
                    throw new ComplexTypeRecoverableError("ct-props-correct.5", new Object[]{str, addAttributeUse, xSAttributeUseImpl.fAttrDecl.getName()}, element);
                }
            } else if (z) {
                throw new ComplexTypeRecoverableError(XmlErrorCodes.COMPLEX_TYPE_PROPERTIES$DUPLICATE_ATTRIBUTE, new Object[]{str, xSAttributeUseImpl.fAttrDecl.getName()}, element);
            }
        }
        if (z) {
            XSWildcardDecl xSWildcardDecl = xSAttributeGroupDecl2.fAttributeWC;
            if (xSWildcardDecl == null) {
                xSAttributeGroupDecl2.fAttributeWC = xSAttributeGroupDecl.fAttributeWC;
                return;
            }
            XSWildcardDecl xSWildcardDecl2 = xSAttributeGroupDecl.fAttributeWC;
            if (xSWildcardDecl2 != null) {
                xSAttributeGroupDecl2.fAttributeWC = xSWildcardDecl.performUnionWith(xSWildcardDecl2, xSWildcardDecl.fProcessContents);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0139 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void processComplexContent(org.w3c.dom.Element r14, boolean r15, boolean r16, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r17, com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar r18) throws com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDComplexTypeTraverser.ComplexTypeRecoverableError {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDComplexTypeTraverser.processComplexContent(org.w3c.dom.Element, boolean, boolean, com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar):void");
    }

    private void traverseComplexContent(Element element, boolean z, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) throws ComplexTypeRecoverableError {
        Object[] objArr;
        Object[] validRestrictionOf;
        String str;
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo);
        Boolean bool = (Boolean) checkAttributes[XSAttributeChecker.ATTIDX_MIXED];
        boolean booleanValue = bool != null ? bool.booleanValue() : z;
        this.fXSSimpleType = null;
        Element firstChildElement = DOMUtil.getFirstChildElement(element);
        if (firstChildElement == null || !DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
            String syntheticAnnotation = DOMUtil.getSyntheticAnnotation(element);
            if (syntheticAnnotation != null) {
                addAnnotation(traverseSyntheticAnnotation(element, syntheticAnnotation, checkAttributes, false, xSDocumentInfo));
            }
        } else {
            addAnnotation(traverseAnnotationDecl(firstChildElement, checkAttributes, false, xSDocumentInfo));
            firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
        }
        if (firstChildElement == null) {
            this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
            throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.2", new Object[]{this.fName, SchemaSymbols.ELT_COMPLEXCONTENT}, element);
        }
        String localName = DOMUtil.getLocalName(firstChildElement);
        if (localName.equals(SchemaSymbols.ELT_RESTRICTION)) {
            this.fDerivedBy = (short) 2;
        } else {
            if (!localName.equals(SchemaSymbols.ELT_EXTENSION)) {
                this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
                throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.1", new Object[]{this.fName, localName}, firstChildElement);
            }
            this.fDerivedBy = (short) 1;
        }
        Element nextSiblingElement = DOMUtil.getNextSiblingElement(firstChildElement);
        if (nextSiblingElement != null) {
            this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
            throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.1", new Object[]{this.fName, DOMUtil.getLocalName(nextSiblingElement)}, nextSiblingElement);
        }
        Object[] checkAttributes2 = this.fAttrChecker.checkAttributes(firstChildElement, false, xSDocumentInfo);
        QName qName = (QName) checkAttributes2[XSAttributeChecker.ATTIDX_BASE];
        if (qName == null) {
            this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
            this.fAttrChecker.returnAttrArray(checkAttributes2, xSDocumentInfo);
            throw new ComplexTypeRecoverableError("s4s-att-must-appear", new Object[]{localName, gon.f71271X}, firstChildElement);
        }
        XSTypeDefinition xSTypeDefinition = (XSTypeDefinition) this.fSchemaHandler.getGlobalDecl(xSDocumentInfo, 7, qName, firstChildElement);
        if (xSTypeDefinition == null) {
            this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
            this.fAttrChecker.returnAttrArray(checkAttributes2, xSDocumentInfo);
            throw new ComplexTypeRecoverableError();
        }
        if (!(xSTypeDefinition instanceof XSComplexTypeDecl)) {
            this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
            this.fAttrChecker.returnAttrArray(checkAttributes2, xSDocumentInfo);
            throw new ComplexTypeRecoverableError(XmlErrorCodes.SCHEMA_COMPLEX_TYPE$COMPLEX_CONTENT, new Object[]{this.fName, xSTypeDefinition.getName()}, firstChildElement);
        }
        XSComplexTypeDecl xSComplexTypeDecl = (XSComplexTypeDecl) xSTypeDefinition;
        this.fBaseType = xSComplexTypeDecl;
        if ((xSComplexTypeDecl.getFinal() & this.fDerivedBy) != 0) {
            this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
            this.fAttrChecker.returnAttrArray(checkAttributes2, xSDocumentInfo);
            throw new ComplexTypeRecoverableError(this.fDerivedBy == 1 ? XmlErrorCodes.COMPLEX_TYPE_EXTENSION$FINAL : XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$FINAL, new Object[]{this.fName, this.fBaseType.getName()}, firstChildElement);
        }
        Element firstChildElement2 = DOMUtil.getFirstChildElement(firstChildElement);
        if (firstChildElement2 != null) {
            String localName2 = DOMUtil.getLocalName(firstChildElement2);
            String str2 = SchemaSymbols.ELT_ANNOTATION;
            if (localName2.equals(str2)) {
                addAnnotation(traverseAnnotationDecl(firstChildElement2, checkAttributes2, false, xSDocumentInfo));
                firstChildElement2 = DOMUtil.getNextSiblingElement(firstChildElement2);
            } else {
                String syntheticAnnotation2 = DOMUtil.getSyntheticAnnotation(firstChildElement2);
                if (syntheticAnnotation2 != null) {
                    str = str2;
                    objArr = checkAttributes2;
                    addAnnotation(traverseSyntheticAnnotation(firstChildElement2, syntheticAnnotation2, checkAttributes2, false, xSDocumentInfo));
                    if (firstChildElement2 != null && DOMUtil.getLocalName(firstChildElement2).equals(str)) {
                        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
                        this.fAttrChecker.returnAttrArray(objArr, xSDocumentInfo);
                        throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.1", new Object[]{this.fName, str}, firstChildElement2);
                    }
                }
            }
            str = str2;
            objArr = checkAttributes2;
            if (firstChildElement2 != null) {
                this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
                this.fAttrChecker.returnAttrArray(objArr, xSDocumentInfo);
                throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.1", new Object[]{this.fName, str}, firstChildElement2);
            }
        } else {
            objArr = checkAttributes2;
            String syntheticAnnotation3 = DOMUtil.getSyntheticAnnotation(firstChildElement2);
            if (syntheticAnnotation3 != null) {
                addAnnotation(traverseSyntheticAnnotation(firstChildElement2, syntheticAnnotation3, objArr, false, xSDocumentInfo));
            }
        }
        try {
            processComplexContent(firstChildElement2, booleanValue, true, xSDocumentInfo, schemaGrammar);
            XSParticleDecl xSParticleDecl = (XSParticleDecl) xSComplexTypeDecl.getParticle();
            if (this.fDerivedBy != 2) {
                if (this.fParticle == null) {
                    this.fContentType = xSComplexTypeDecl.getContentType();
                    this.fXSSimpleType = (XSSimpleType) xSComplexTypeDecl.getSimpleType();
                    this.fParticle = xSParticleDecl;
                } else if (xSComplexTypeDecl.getContentType() != 0) {
                    if (this.fContentType == 2 && xSComplexTypeDecl.getContentType() != 2) {
                        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
                        this.fAttrChecker.returnAttrArray(objArr, xSDocumentInfo);
                        throw new ComplexTypeRecoverableError("cos-ct-extends.1.4.3.2.2.1.a", new Object[]{this.fName}, firstChildElement2);
                    }
                    if (this.fContentType == 3 && xSComplexTypeDecl.getContentType() != 3) {
                        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
                        this.fAttrChecker.returnAttrArray(objArr, xSDocumentInfo);
                        throw new ComplexTypeRecoverableError("cos-ct-extends.1.4.3.2.2.1.b", new Object[]{this.fName}, firstChildElement2);
                    }
                    XSParticleDecl xSParticleDecl2 = this.fParticle;
                    if ((xSParticleDecl2.fType == 3 && ((XSModelGroupImpl) xSParticleDecl2.fValue).fCompositor == 103) || (((XSParticleDecl) xSComplexTypeDecl.getParticle()).fType == 3 && ((XSModelGroupImpl) ((XSParticleDecl) xSComplexTypeDecl.getParticle()).fValue).fCompositor == 103)) {
                        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
                        this.fAttrChecker.returnAttrArray(objArr, xSDocumentInfo);
                        throw new ComplexTypeRecoverableError("cos-all-limited.1.2", new Object[0], firstChildElement2);
                    }
                    XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
                    xSModelGroupImpl.fCompositor = (short) 102;
                    xSModelGroupImpl.fParticleCount = 2;
                    XSParticleDecl[] xSParticleDeclArr = new XSParticleDecl[2];
                    xSModelGroupImpl.fParticles = xSParticleDeclArr;
                    xSParticleDeclArr[0] = (XSParticleDecl) xSComplexTypeDecl.getParticle();
                    xSModelGroupImpl.fParticles[1] = this.fParticle;
                    XSParticleDecl xSParticleDecl3 = new XSParticleDecl();
                    xSParticleDecl3.fType = (short) 3;
                    xSParticleDecl3.fValue = xSModelGroupImpl;
                    this.fParticle = xSParticleDecl3;
                }
                this.fAttrGrp.removeProhibitedAttrs();
                try {
                    mergeAttributes(xSComplexTypeDecl.getAttrGrp(), this.fAttrGrp, this.fName, true, firstChildElement2);
                } catch (ComplexTypeRecoverableError e) {
                    this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
                    this.fAttrChecker.returnAttrArray(objArr, xSDocumentInfo);
                    throw e;
                }
            } else {
                if (this.fContentType == 3 && xSComplexTypeDecl.getContentType() != 3) {
                    this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
                    this.fAttrChecker.returnAttrArray(objArr, xSDocumentInfo);
                    throw new ComplexTypeRecoverableError("derivation-ok-restriction.5.4.1.2", new Object[]{this.fName, xSComplexTypeDecl.getName()}, firstChildElement2);
                }
                try {
                    mergeAttributes(xSComplexTypeDecl.getAttrGrp(), this.fAttrGrp, this.fName, false, firstChildElement2);
                    this.fAttrGrp.removeProhibitedAttrs();
                    if (xSComplexTypeDecl != SchemaGrammar.fAnyType && (validRestrictionOf = this.fAttrGrp.validRestrictionOf(this.fName, xSComplexTypeDecl.getAttrGrp())) != null) {
                        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
                        this.fAttrChecker.returnAttrArray(objArr, xSDocumentInfo);
                        throw new ComplexTypeRecoverableError((String) validRestrictionOf[validRestrictionOf.length - 1], validRestrictionOf, firstChildElement2);
                    }
                } catch (ComplexTypeRecoverableError e2) {
                    this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
                    this.fAttrChecker.returnAttrArray(objArr, xSDocumentInfo);
                    throw e2;
                }
            }
            this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
            this.fAttrChecker.returnAttrArray(objArr, xSDocumentInfo);
        } catch (ComplexTypeRecoverableError e3) {
            this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
            this.fAttrChecker.returnAttrArray(objArr, xSDocumentInfo);
            throw e3;
        }
    }

    private void traverseComplexContentDecl(Element element, boolean z) {
    }

    private XSComplexTypeDecl traverseComplexTypeDecl(Element element, String str, Object[] objArr, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        this.fComplexTypeDecl = new XSComplexTypeDecl();
        this.fAttrGrp = new XSAttributeGroupDecl();
        Boolean bool = (Boolean) objArr[XSAttributeChecker.ATTIDX_ABSTRACT];
        XInt xInt = (XInt) objArr[XSAttributeChecker.ATTIDX_BLOCK];
        Boolean bool2 = (Boolean) objArr[XSAttributeChecker.ATTIDX_MIXED];
        XInt xInt2 = (XInt) objArr[XSAttributeChecker.ATTIDX_FINAL];
        this.fName = str;
        this.fComplexTypeDecl.setName(str);
        this.fTargetNamespace = xSDocumentInfo.fTargetNamespace;
        this.fBlock = xInt == null ? xSDocumentInfo.fBlockDefault : xInt.shortValue();
        short shortValue = xInt2 == null ? xSDocumentInfo.fFinalDefault : xInt2.shortValue();
        this.fBlock = (short) (this.fBlock & 3);
        this.fFinal = (short) (shortValue & 3);
        this.fIsAbstract = bool != null && bool.booleanValue();
        try {
            Element firstChildElement = DOMUtil.getFirstChildElement(element);
            if (firstChildElement != null) {
                String localName = DOMUtil.getLocalName(firstChildElement);
                String str2 = SchemaSymbols.ELT_ANNOTATION;
                if (localName.equals(str2)) {
                    addAnnotation(traverseAnnotationDecl(firstChildElement, objArr, false, xSDocumentInfo));
                    firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
                } else {
                    String syntheticAnnotation = DOMUtil.getSyntheticAnnotation(element);
                    if (syntheticAnnotation != null) {
                        addAnnotation(traverseSyntheticAnnotation(element, syntheticAnnotation, objArr, false, xSDocumentInfo));
                    }
                }
                if (firstChildElement != null && DOMUtil.getLocalName(firstChildElement).equals(str2)) {
                    throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.1", new Object[]{this.fName, str2}, firstChildElement);
                }
            } else {
                String syntheticAnnotation2 = DOMUtil.getSyntheticAnnotation(element);
                if (syntheticAnnotation2 != null) {
                    addAnnotation(traverseSyntheticAnnotation(element, syntheticAnnotation2, objArr, false, xSDocumentInfo));
                }
            }
            Element element2 = firstChildElement;
            if (element2 == null) {
                this.fBaseType = SchemaGrammar.fAnyType;
                processComplexContent(element2, bool2.booleanValue(), false, xSDocumentInfo, schemaGrammar);
            } else if (DOMUtil.getLocalName(element2).equals(SchemaSymbols.ELT_SIMPLECONTENT)) {
                traverseSimpleContent(element2, xSDocumentInfo, schemaGrammar);
                Element nextSiblingElement = DOMUtil.getNextSiblingElement(element2);
                if (nextSiblingElement != null) {
                    throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.1", new Object[]{this.fName, DOMUtil.getLocalName(nextSiblingElement)}, nextSiblingElement);
                }
            } else if (DOMUtil.getLocalName(element2).equals(SchemaSymbols.ELT_COMPLEXCONTENT)) {
                traverseComplexContent(element2, bool2.booleanValue(), xSDocumentInfo, schemaGrammar);
                Element nextSiblingElement2 = DOMUtil.getNextSiblingElement(element2);
                if (nextSiblingElement2 != null) {
                    throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.1", new Object[]{this.fName, DOMUtil.getLocalName(nextSiblingElement2)}, nextSiblingElement2);
                }
            } else {
                this.fBaseType = SchemaGrammar.fAnyType;
                processComplexContent(element2, bool2.booleanValue(), false, xSDocumentInfo, schemaGrammar);
            }
        } catch (ComplexTypeRecoverableError e) {
            handleComplexTypeError(e.getMessage(), e.errorSubstText, e.errorElem);
        }
        XSComplexTypeDecl xSComplexTypeDecl = this.fComplexTypeDecl;
        String str3 = this.fName;
        String str4 = this.fTargetNamespace;
        XSTypeDefinition xSTypeDefinition = this.fBaseType;
        short s = this.fDerivedBy;
        short s2 = this.fFinal;
        short s3 = this.fBlock;
        short s4 = this.fContentType;
        boolean z = this.fIsAbstract;
        XSAttributeGroupDecl xSAttributeGroupDecl = this.fAttrGrp;
        XSSimpleType xSSimpleType = this.fXSSimpleType;
        XSParticleDecl xSParticleDecl = this.fParticle;
        XSAnnotationImpl[] xSAnnotationImplArr = this.fAnnotations;
        xSComplexTypeDecl.setValues(str3, str4, xSTypeDefinition, s, s2, s3, s4, z, xSAttributeGroupDecl, xSSimpleType, xSParticleDecl, new XSObjectListImpl(xSAnnotationImplArr, xSAnnotationImplArr != null ? xSAnnotationImplArr.length : 0));
        return this.fComplexTypeDecl;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void traverseSimpleContent(org.w3c.dom.Element r27, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r28, com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar r29) throws com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDComplexTypeTraverser.ComplexTypeRecoverableError {
        /*
            Method dump skipped, instructions count: 1006
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDComplexTypeTraverser.traverseSimpleContent(org.w3c.dom.Element, com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar):void");
    }

    private void traverseSimpleContentDecl(Element element) {
    }

    public XSComplexTypeDecl traverseGlobal(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, true, xSDocumentInfo);
        String str = (String) checkAttributes[XSAttributeChecker.ATTIDX_NAME];
        contentBackup();
        XSComplexTypeDecl traverseComplexTypeDecl = traverseComplexTypeDecl(element, str, checkAttributes, xSDocumentInfo, schemaGrammar);
        contentRestore();
        if (str == null) {
            reportSchemaError("s4s-att-must-appear", new Object[]{SchemaSymbols.ELT_COMPLEXTYPE, SchemaSymbols.ATT_NAME}, element);
        } else {
            schemaGrammar.addGlobalTypeDecl(traverseComplexTypeDecl);
        }
        schemaGrammar.addComplexTypeDecl(traverseComplexTypeDecl, this.fSchemaHandler.element2Locator(element));
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        return traverseComplexTypeDecl;
    }

    public XSComplexTypeDecl traverseLocal(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.fAttrChecker.checkAttributes(element, false, xSDocumentInfo);
        String genAnonTypeName = genAnonTypeName(element);
        contentBackup();
        XSComplexTypeDecl traverseComplexTypeDecl = traverseComplexTypeDecl(element, genAnonTypeName, checkAttributes, xSDocumentInfo, schemaGrammar);
        contentRestore();
        schemaGrammar.addComplexTypeDecl(traverseComplexTypeDecl, this.fSchemaHandler.element2Locator(element));
        traverseComplexTypeDecl.setIsAnonymous();
        this.fAttrChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
        return traverseComplexTypeDecl;
    }

    /* loaded from: classes10.dex */
    public class ComplexTypeRecoverableError extends Exception {
        private static final long serialVersionUID = 3762247556666831417L;
        Element errorElem;
        Object[] errorSubstText;

        public ComplexTypeRecoverableError() {
            this.errorSubstText = null;
            this.errorElem = null;
        }

        public ComplexTypeRecoverableError(String str, Object[] objArr, Element element) {
            super(str);
            this.errorSubstText = objArr;
            this.errorElem = element;
        }
    }
}
