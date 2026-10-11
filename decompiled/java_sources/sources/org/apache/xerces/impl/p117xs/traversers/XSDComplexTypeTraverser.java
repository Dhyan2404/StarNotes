package org.apache.xerces.impl.p117xs.traversers;

import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.omo;
import com.sunia.HTREnginev2.tmo;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.impl.p117xs.XSAnnotationImpl;
import org.apache.xerces.impl.p117xs.XSAttributeGroupDecl;
import org.apache.xerces.impl.p117xs.XSAttributeUseImpl;
import org.apache.xerces.impl.p117xs.XSComplexTypeDecl;
import org.apache.xerces.impl.p117xs.XSModelGroupImpl;
import org.apache.xerces.impl.p117xs.XSParticleDecl;
import org.apache.xerces.impl.p117xs.XSWildcardDecl;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.XSAttributeUse;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.DOMUtil;
import org.apache.xerces.xni.QName;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.Element;

/* loaded from: classes13.dex */
public class XSDComplexTypeTraverser extends omo {

    /* renamed from: E */
    public static final int f113090E = 11;

    /* renamed from: F */
    public static XSParticleDecl f113091F;

    /* renamed from: G */
    public static XSWildcardDecl f113092G;

    /* renamed from: H */
    public static final boolean f113093H = false;

    /* renamed from: A */
    public XSComplexTypeDecl f113094A;

    /* renamed from: B */
    public XSAnnotationImpl[] f113095B;

    /* renamed from: C */
    public Object[] f113096C;

    /* renamed from: D */
    public int f113097D;

    /* renamed from: p */
    public String f113098p;

    /* renamed from: q */
    public String f113099q;

    /* renamed from: r */
    public short f113100r;

    /* renamed from: s */
    public short f113101s;

    /* renamed from: t */
    public short f113102t;

    /* renamed from: u */
    public short f113103u;

    /* renamed from: v */
    public XSTypeDefinition f113104v;

    /* renamed from: w */
    public XSAttributeGroupDecl f113105w;

    /* renamed from: x */
    public XSSimpleType f113106x;

    /* renamed from: y */
    public XSParticleDecl f113107y;

    /* renamed from: z */
    public boolean f113108z;

    /* loaded from: classes13.dex */
    public static final class ComplexTypeRecoverableError extends Exception {
        private static final long serialVersionUID = 6802729912091130335L;
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

    public XSDComplexTypeTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
        this.f113098p = null;
        this.f113099q = null;
        this.f113100r = (short) 2;
        this.f113101s = (short) 0;
        this.f113102t = (short) 0;
        this.f113103u = (short) 0;
        this.f113104v = null;
        this.f113105w = null;
        this.f113106x = null;
        this.f113107y = null;
        this.f113108z = false;
        this.f113094A = null;
        this.f113095B = null;
        this.f113096C = null;
        this.f113097D = 0;
    }

    /* renamed from: A */
    public static XSWildcardDecl m70325A() {
        if (f113092G == null) {
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fProcessContents = (short) 2;
            f113092G = xSWildcardDecl;
        }
        return f113092G;
    }

    /* renamed from: z */
    public static XSParticleDecl m70326z() {
        if (f113091F == null) {
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fType = (short) 2;
            xSParticleDecl.fValue = m70325A();
            xSParticleDecl.fMinOccurs = 0;
            xSParticleDecl.fMaxOccurs = -1;
            XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
            xSModelGroupImpl.fCompositor = (short) 102;
            xSModelGroupImpl.fParticleCount = 1;
            xSModelGroupImpl.fParticles = r3;
            XSParticleDecl[] xSParticleDeclArr = {xSParticleDecl};
            XSParticleDecl xSParticleDecl2 = new XSParticleDecl();
            xSParticleDecl2.fType = (short) 3;
            xSParticleDecl2.fValue = xSModelGroupImpl;
            f113091F = xSParticleDecl2;
        }
        return f113091F;
    }

    /* renamed from: B */
    public final void m70327B(String str, Object[] objArr, Element element) {
        if (str != null) {
            m70451j(str, objArr, element);
        }
        this.f113104v = SchemaGrammar.fAnyType;
        this.f113103u = (short) 3;
        this.f113106x = null;
        this.f113107y = m70326z();
        this.f113105w.fAttributeWC = m70325A();
    }

    /* renamed from: C */
    public final boolean m70328C(Element element) {
        String localName = DOMUtil.getLocalName(element);
        return localName.equals(SchemaSymbols.ELT_ATTRIBUTE) || localName.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP) || localName.equals(SchemaSymbols.ELT_ANYATTRIBUTE);
    }

    /* renamed from: D */
    public final void m70329D(XSAttributeGroupDecl xSAttributeGroupDecl, XSAttributeGroupDecl xSAttributeGroupDecl2, String str, boolean z, Element element) throws ComplexTypeRecoverableError {
        XSObjectList attributeUses = xSAttributeGroupDecl.getAttributeUses();
        int length = attributeUses.getLength();
        for (int i = 0; i < length; i++) {
            XSAttributeUseImpl xSAttributeUseImpl = (XSAttributeUseImpl) attributeUses.item(i);
            XSAttributeUse attributeUse = xSAttributeGroupDecl2.getAttributeUse(xSAttributeUseImpl.fAttrDecl.getNamespace(), xSAttributeUseImpl.fAttrDecl.getName());
            if (attributeUse == null) {
                String addAttributeUse = xSAttributeGroupDecl2.addAttributeUse(xSAttributeUseImpl);
                if (addAttributeUse != null) {
                    throw new ComplexTypeRecoverableError("ct-props-correct.5", new Object[]{str, addAttributeUse, xSAttributeUseImpl.fAttrDecl.getName()}, element);
                }
            } else if (attributeUse != xSAttributeUseImpl && z) {
                m70451j(XmlErrorCodes.COMPLEX_TYPE_PROPERTIES$DUPLICATE_ATTRIBUTE, new Object[]{str, xSAttributeUseImpl.fAttrDecl.getName()}, element);
                xSAttributeGroupDecl2.replaceAttributeUse(attributeUse, xSAttributeUseImpl);
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
                XSWildcardDecl performUnionWith = xSWildcardDecl.performUnionWith(xSWildcardDecl2, xSWildcardDecl.fProcessContents);
                xSAttributeGroupDecl2.fAttributeWC = performUnionWith;
                if (performUnionWith == null) {
                    throw new ComplexTypeRecoverableError("src-ct.5", new Object[]{str}, element);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00b6, code lost:
    
        if (r2 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0046, code lost:
    
        if (((org.apache.xerces.impl.p117xs.XSModelGroupImpl) r0.fValue).fParticleCount == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0070, code lost:
    
        if (((org.apache.xerces.impl.p117xs.XSModelGroupImpl) r0.fValue).fParticleCount == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0091, code lost:
    
        if (((org.apache.xerces.impl.p117xs.XSModelGroupImpl) r0.fValue).fParticleCount == 0) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0111 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00a0  */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m70330E(org.w3c.dom.Element r14, boolean r15, boolean r16, com.sunia.HTREnginev2.tmo r17, org.apache.xerces.impl.p117xs.SchemaGrammar r18) throws org.apache.xerces.impl.xs.traversers.XSDComplexTypeTraverser.ComplexTypeRecoverableError {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.XSDComplexTypeTraverser.m70330E(org.w3c.dom.Element, boolean, boolean, com.sunia.HTREnginev2.tmo, org.apache.xerces.impl.xs.SchemaGrammar):void");
    }

    /* renamed from: F */
    public final void m70331F(Element element, boolean z, tmo tmoVar, SchemaGrammar schemaGrammar) throws ComplexTypeRecoverableError {
        Object[] objArr;
        Object[] validRestrictionOf;
        String str;
        Object[] checkAttributes = this.f113218c.checkAttributes(element, false, tmoVar);
        Boolean bool = (Boolean) checkAttributes[XSAttributeChecker.ATTIDX_MIXED];
        boolean booleanValue = bool != null ? bool.booleanValue() : z;
        this.f113106x = null;
        Element firstChildElement = DOMUtil.getFirstChildElement(element);
        if (firstChildElement == null || !DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
            String syntheticAnnotation = DOMUtil.getSyntheticAnnotation(element);
            if (syntheticAnnotation != null) {
                m70338v(m70457p(element, syntheticAnnotation, checkAttributes, false, tmoVar));
            }
        } else {
            m70338v(m70454m(firstChildElement, checkAttributes, false, tmoVar));
            firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
        }
        if (firstChildElement == null) {
            this.f113218c.returnAttrArray(checkAttributes, tmoVar);
            throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.2", new Object[]{this.f113098p, SchemaSymbols.ELT_COMPLEXCONTENT}, element);
        }
        String localName = DOMUtil.getLocalName(firstChildElement);
        if (localName.equals(SchemaSymbols.ELT_RESTRICTION)) {
            this.f113100r = (short) 2;
        } else {
            if (!localName.equals(SchemaSymbols.ELT_EXTENSION)) {
                this.f113218c.returnAttrArray(checkAttributes, tmoVar);
                throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.1", new Object[]{this.f113098p, localName}, firstChildElement);
            }
            this.f113100r = (short) 1;
        }
        Element nextSiblingElement = DOMUtil.getNextSiblingElement(firstChildElement);
        if (nextSiblingElement != null) {
            this.f113218c.returnAttrArray(checkAttributes, tmoVar);
            throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.1", new Object[]{this.f113098p, DOMUtil.getLocalName(nextSiblingElement)}, nextSiblingElement);
        }
        Object[] checkAttributes2 = this.f113218c.checkAttributes(firstChildElement, false, tmoVar);
        QName qName = (QName) checkAttributes2[XSAttributeChecker.ATTIDX_BASE];
        if (qName == null) {
            this.f113218c.returnAttrArray(checkAttributes, tmoVar);
            this.f113218c.returnAttrArray(checkAttributes2, tmoVar);
            throw new ComplexTypeRecoverableError("s4s-att-must-appear", new Object[]{localName, gon.f71271X}, firstChildElement);
        }
        XSTypeDefinition xSTypeDefinition = (XSTypeDefinition) this.f113216a.getGlobalDecl(tmoVar, 7, qName, firstChildElement);
        if (xSTypeDefinition == null) {
            this.f113218c.returnAttrArray(checkAttributes, tmoVar);
            this.f113218c.returnAttrArray(checkAttributes2, tmoVar);
            throw new ComplexTypeRecoverableError();
        }
        if (!(xSTypeDefinition instanceof XSComplexTypeDecl)) {
            this.f113218c.returnAttrArray(checkAttributes, tmoVar);
            this.f113218c.returnAttrArray(checkAttributes2, tmoVar);
            throw new ComplexTypeRecoverableError(XmlErrorCodes.SCHEMA_COMPLEX_TYPE$COMPLEX_CONTENT, new Object[]{this.f113098p, xSTypeDefinition.getName()}, firstChildElement);
        }
        XSComplexTypeDecl xSComplexTypeDecl = (XSComplexTypeDecl) xSTypeDefinition;
        this.f113104v = xSComplexTypeDecl;
        if ((xSComplexTypeDecl.getFinal() & this.f113100r) != 0) {
            this.f113218c.returnAttrArray(checkAttributes, tmoVar);
            this.f113218c.returnAttrArray(checkAttributes2, tmoVar);
            throw new ComplexTypeRecoverableError(this.f113100r == 1 ? XmlErrorCodes.COMPLEX_TYPE_EXTENSION$FINAL : XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$FINAL, new Object[]{this.f113098p, this.f113104v.getName()}, firstChildElement);
        }
        Element firstChildElement2 = DOMUtil.getFirstChildElement(firstChildElement);
        if (firstChildElement2 != null) {
            String localName2 = DOMUtil.getLocalName(firstChildElement2);
            String str2 = SchemaSymbols.ELT_ANNOTATION;
            if (localName2.equals(str2)) {
                m70338v(m70454m(firstChildElement2, checkAttributes2, false, tmoVar));
                firstChildElement2 = DOMUtil.getNextSiblingElement(firstChildElement2);
            } else {
                String syntheticAnnotation2 = DOMUtil.getSyntheticAnnotation(firstChildElement2);
                if (syntheticAnnotation2 != null) {
                    str = str2;
                    objArr = checkAttributes2;
                    m70338v(m70457p(firstChildElement2, syntheticAnnotation2, checkAttributes2, false, tmoVar));
                    if (firstChildElement2 != null && DOMUtil.getLocalName(firstChildElement2).equals(str)) {
                        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
                        this.f113218c.returnAttrArray(objArr, tmoVar);
                        throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.1", new Object[]{this.f113098p, str}, firstChildElement2);
                    }
                }
            }
            str = str2;
            objArr = checkAttributes2;
            if (firstChildElement2 != null) {
                this.f113218c.returnAttrArray(checkAttributes, tmoVar);
                this.f113218c.returnAttrArray(objArr, tmoVar);
                throw new ComplexTypeRecoverableError("s4s-elt-invalid-content.1", new Object[]{this.f113098p, str}, firstChildElement2);
            }
        } else {
            objArr = checkAttributes2;
            String syntheticAnnotation3 = DOMUtil.getSyntheticAnnotation(firstChildElement2);
            if (syntheticAnnotation3 != null) {
                m70338v(m70457p(firstChildElement2, syntheticAnnotation3, objArr, false, tmoVar));
            }
        }
        try {
            m70330E(firstChildElement2, booleanValue, true, tmoVar, schemaGrammar);
            XSParticleDecl xSParticleDecl = (XSParticleDecl) xSComplexTypeDecl.getParticle();
            if (this.f113100r != 2) {
                if (this.f113107y == null) {
                    this.f113103u = xSComplexTypeDecl.getContentType();
                    this.f113106x = (XSSimpleType) xSComplexTypeDecl.getSimpleType();
                    this.f113107y = xSParticleDecl;
                } else if (xSComplexTypeDecl.getContentType() != 0) {
                    if (this.f113103u == 2 && xSComplexTypeDecl.getContentType() != 2) {
                        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
                        this.f113218c.returnAttrArray(objArr, tmoVar);
                        throw new ComplexTypeRecoverableError("cos-ct-extends.1.4.3.2.2.1.a", new Object[]{this.f113098p}, firstChildElement2);
                    }
                    if (this.f113103u == 3 && xSComplexTypeDecl.getContentType() != 3) {
                        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
                        this.f113218c.returnAttrArray(objArr, tmoVar);
                        throw new ComplexTypeRecoverableError("cos-ct-extends.1.4.3.2.2.1.b", new Object[]{this.f113098p}, firstChildElement2);
                    }
                    XSParticleDecl xSParticleDecl2 = this.f113107y;
                    if ((xSParticleDecl2.fType == 3 && ((XSModelGroupImpl) xSParticleDecl2.fValue).fCompositor == 103) || (((XSParticleDecl) xSComplexTypeDecl.getParticle()).fType == 3 && ((XSModelGroupImpl) ((XSParticleDecl) xSComplexTypeDecl.getParticle()).fValue).fCompositor == 103)) {
                        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
                        this.f113218c.returnAttrArray(objArr, tmoVar);
                        throw new ComplexTypeRecoverableError("cos-all-limited.1.2", new Object[0], firstChildElement2);
                    }
                    XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
                    xSModelGroupImpl.fCompositor = (short) 102;
                    xSModelGroupImpl.fParticleCount = 2;
                    XSParticleDecl[] xSParticleDeclArr = new XSParticleDecl[2];
                    xSModelGroupImpl.fParticles = xSParticleDeclArr;
                    xSParticleDeclArr[0] = (XSParticleDecl) xSComplexTypeDecl.getParticle();
                    xSModelGroupImpl.fParticles[1] = this.f113107y;
                    XSObjectListImpl xSObjectListImpl = XSObjectListImpl.EMPTY_LIST;
                    xSModelGroupImpl.fAnnotations = xSObjectListImpl;
                    XSParticleDecl xSParticleDecl3 = new XSParticleDecl();
                    xSParticleDecl3.fType = (short) 3;
                    xSParticleDecl3.fValue = xSModelGroupImpl;
                    xSParticleDecl3.fAnnotations = xSObjectListImpl;
                    this.f113107y = xSParticleDecl3;
                }
                this.f113105w.removeProhibitedAttrs();
                try {
                    m70329D(xSComplexTypeDecl.getAttrGrp(), this.f113105w, this.f113098p, true, firstChildElement2);
                } catch (ComplexTypeRecoverableError e) {
                    this.f113218c.returnAttrArray(checkAttributes, tmoVar);
                    this.f113218c.returnAttrArray(objArr, tmoVar);
                    throw e;
                }
            } else {
                if (this.f113103u == 3 && xSComplexTypeDecl.getContentType() != 3) {
                    this.f113218c.returnAttrArray(checkAttributes, tmoVar);
                    this.f113218c.returnAttrArray(objArr, tmoVar);
                    throw new ComplexTypeRecoverableError("derivation-ok-restriction.5.4.1.2", new Object[]{this.f113098p, xSComplexTypeDecl.getName()}, firstChildElement2);
                }
                try {
                    m70329D(xSComplexTypeDecl.getAttrGrp(), this.f113105w, this.f113098p, false, firstChildElement2);
                    this.f113105w.removeProhibitedAttrs();
                    if (xSComplexTypeDecl != SchemaGrammar.fAnyType && (validRestrictionOf = this.f113105w.validRestrictionOf(this.f113098p, xSComplexTypeDecl.getAttrGrp())) != null) {
                        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
                        this.f113218c.returnAttrArray(objArr, tmoVar);
                        throw new ComplexTypeRecoverableError((String) validRestrictionOf[validRestrictionOf.length - 1], validRestrictionOf, firstChildElement2);
                    }
                } catch (ComplexTypeRecoverableError e2) {
                    this.f113218c.returnAttrArray(checkAttributes, tmoVar);
                    this.f113218c.returnAttrArray(objArr, tmoVar);
                    throw e2;
                }
            }
            this.f113218c.returnAttrArray(checkAttributes, tmoVar);
            this.f113218c.returnAttrArray(objArr, tmoVar);
        } catch (ComplexTypeRecoverableError e3) {
            this.f113218c.returnAttrArray(checkAttributes, tmoVar);
            this.f113218c.returnAttrArray(objArr, tmoVar);
            throw e3;
        }
    }

    /* renamed from: G */
    public final void m70332G(Element element, boolean z) {
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0178  */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.xerces.impl.p117xs.XSComplexTypeDecl m70333H(org.w3c.dom.Element r26, java.lang.String r27, java.lang.Object[] r28, com.sunia.HTREnginev2.tmo r29, org.apache.xerces.impl.p117xs.SchemaGrammar r30) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.XSDComplexTypeTraverser.m70333H(org.w3c.dom.Element, java.lang.String, java.lang.Object[], com.sunia.HTREnginev2.tmo, org.apache.xerces.impl.xs.SchemaGrammar):org.apache.xerces.impl.xs.XSComplexTypeDecl");
    }

    /* renamed from: I */
    public XSComplexTypeDecl m70334I(Element element, tmo tmoVar, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.f113218c.checkAttributes(element, true, tmoVar);
        String str = (String) checkAttributes[XSAttributeChecker.ATTIDX_NAME];
        m70339w();
        XSComplexTypeDecl m70333H = m70333H(element, str, checkAttributes, tmoVar, schemaGrammar);
        m70340x();
        schemaGrammar.addComplexTypeDecl(m70333H, this.f113216a.element2Locator(element));
        if (str == null) {
            m70451j("s4s-att-must-appear", new Object[]{SchemaSymbols.ELT_COMPLEXTYPE, SchemaSymbols.ATT_NAME}, element);
            m70333H = null;
        } else {
            if (schemaGrammar.getGlobalTypeDecl(m70333H.getName()) == null) {
                schemaGrammar.addGlobalComplexTypeDecl(m70333H);
            }
            String schemaDocument2SystemId = this.f113216a.schemaDocument2SystemId(tmoVar);
            XSTypeDefinition globalTypeDecl = schemaGrammar.getGlobalTypeDecl(m70333H.getName(), schemaDocument2SystemId);
            if (globalTypeDecl == null) {
                schemaGrammar.addGlobalComplexTypeDecl(m70333H, schemaDocument2SystemId);
            }
            XSDHandler xSDHandler = this.f113216a;
            if (xSDHandler.f113133H) {
                if (globalTypeDecl != null && (globalTypeDecl instanceof XSComplexTypeDecl)) {
                    m70333H = (XSComplexTypeDecl) globalTypeDecl;
                }
                xSDHandler.m70411m(m70333H);
            }
        }
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
        return m70333H;
    }

    /* renamed from: J */
    public XSComplexTypeDecl m70335J(Element element, tmo tmoVar, SchemaGrammar schemaGrammar) {
        Object[] checkAttributes = this.f113218c.checkAttributes(element, false, tmoVar);
        String m70341y = m70341y(element);
        m70339w();
        XSComplexTypeDecl m70333H = m70333H(element, m70341y, checkAttributes, tmoVar, schemaGrammar);
        m70340x();
        schemaGrammar.addComplexTypeDecl(m70333H, this.f113216a.element2Locator(element));
        m70333H.setIsAnonymous();
        this.f113218c.returnAttrArray(checkAttributes, tmoVar);
        return m70333H;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0113  */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m70336K(org.w3c.dom.Element r27, com.sunia.HTREnginev2.tmo r28, org.apache.xerces.impl.p117xs.SchemaGrammar r29) throws org.apache.xerces.impl.xs.traversers.XSDComplexTypeTraverser.ComplexTypeRecoverableError {
        /*
            Method dump skipped, instructions count: 1051
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.XSDComplexTypeTraverser.m70336K(org.w3c.dom.Element, com.sunia.HTREnginev2.tmo, org.apache.xerces.impl.xs.SchemaGrammar):void");
    }

    /* renamed from: L */
    public final void m70337L(Element element) {
    }

    /* renamed from: v */
    public final void m70338v(XSAnnotationImpl xSAnnotationImpl) {
        if (xSAnnotationImpl == null) {
            return;
        }
        XSAnnotationImpl[] xSAnnotationImplArr = this.f113095B;
        if (xSAnnotationImplArr == null) {
            this.f113095B = new XSAnnotationImpl[1];
        } else {
            XSAnnotationImpl[] xSAnnotationImplArr2 = new XSAnnotationImpl[xSAnnotationImplArr.length + 1];
            System.arraycopy(xSAnnotationImplArr, 0, xSAnnotationImplArr2, 0, xSAnnotationImplArr.length);
            this.f113095B = xSAnnotationImplArr2;
        }
        XSAnnotationImpl[] xSAnnotationImplArr3 = this.f113095B;
        xSAnnotationImplArr3[xSAnnotationImplArr3.length - 1] = xSAnnotationImpl;
    }

    /* renamed from: w */
    public final void m70339w() {
        if (this.f113096C == null) {
            this.f113096C = new Object[11];
            this.f113097D = 0;
        }
        int i = this.f113097D;
        Object[] objArr = this.f113096C;
        if (i == objArr.length) {
            Object[] objArr2 = new Object[i + 11];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            this.f113096C = objArr2;
        }
        Object[] objArr3 = this.f113096C;
        int i2 = this.f113097D;
        int i3 = i2 + 1;
        objArr3[i2] = this.f113094A;
        int i4 = i3 + 1;
        this.f113097D = i4;
        objArr3[i3] = this.f113108z ? Boolean.TRUE : Boolean.FALSE;
        int i5 = i4 + 1;
        objArr3[i4] = this.f113098p;
        int i6 = i5 + 1;
        objArr3[i5] = this.f113099q;
        this.f113097D = i6 + 1;
        objArr3[i6] = new Integer((this.f113100r << 16) + this.f113101s);
        Object[] objArr4 = this.f113096C;
        int i7 = this.f113097D;
        this.f113097D = i7 + 1;
        objArr4[i7] = new Integer((this.f113102t << 16) + this.f113103u);
        Object[] objArr5 = this.f113096C;
        int i8 = this.f113097D;
        int i9 = i8 + 1;
        objArr5[i8] = this.f113104v;
        int i10 = i9 + 1;
        objArr5[i9] = this.f113105w;
        int i11 = i10 + 1;
        objArr5[i10] = this.f113107y;
        int i12 = i11 + 1;
        objArr5[i11] = this.f113106x;
        this.f113097D = i12 + 1;
        objArr5[i12] = this.f113095B;
    }

    /* renamed from: x */
    public final void m70340x() {
        Object[] objArr = this.f113096C;
        int i = this.f113097D - 1;
        this.f113097D = i;
        this.f113095B = (XSAnnotationImpl[]) objArr[i];
        int i2 = i - 1;
        this.f113097D = i2;
        this.f113106x = (XSSimpleType) objArr[i2];
        int i3 = i2 - 1;
        this.f113097D = i3;
        this.f113107y = (XSParticleDecl) objArr[i3];
        int i4 = i3 - 1;
        this.f113097D = i4;
        this.f113105w = (XSAttributeGroupDecl) objArr[i4];
        int i5 = i4 - 1;
        this.f113097D = i5;
        this.f113104v = (XSTypeDefinition) objArr[i5];
        int i6 = i5 - 1;
        this.f113097D = i6;
        int intValue = ((Integer) objArr[i6]).intValue();
        this.f113102t = (short) (intValue >> 16);
        this.f113103u = (short) intValue;
        Object[] objArr2 = this.f113096C;
        int i7 = this.f113097D - 1;
        this.f113097D = i7;
        int intValue2 = ((Integer) objArr2[i7]).intValue();
        this.f113100r = (short) (intValue2 >> 16);
        this.f113101s = (short) intValue2;
        Object[] objArr3 = this.f113096C;
        int i8 = this.f113097D - 1;
        this.f113097D = i8;
        this.f113099q = (String) objArr3[i8];
        int i9 = i8 - 1;
        this.f113097D = i9;
        this.f113098p = (String) objArr3[i9];
        int i10 = i9 - 1;
        this.f113097D = i10;
        this.f113108z = ((Boolean) objArr3[i10]).booleanValue();
        Object[] objArr4 = this.f113096C;
        int i11 = this.f113097D - 1;
        this.f113097D = i11;
        this.f113094A = (XSComplexTypeDecl) objArr4[i11];
    }

    /* renamed from: y */
    public final String m70341y(Element element) {
        StringBuffer stringBuffer = new StringBuffer("#AnonType_");
        while (true) {
            element = DOMUtil.getParent(element);
            if (element == null || element == DOMUtil.getRoot(DOMUtil.getDocument(element))) {
                break;
            }
            stringBuffer.append(element.getAttribute(SchemaSymbols.ATT_NAME));
        }
        return stringBuffer.toString();
    }
}
