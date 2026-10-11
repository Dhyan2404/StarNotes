package org.apache.xerces.impl.p117xs;

import java.util.Comparator;
import java.util.Vector;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p117xs.models.CMBuilder;
import org.apache.xerces.impl.p117xs.models.XSCMValidator;
import org.apache.xerces.impl.p117xs.util.SimpleLocator;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSTerm;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.SymbolHash;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes13.dex */
public class XSConstraints {

    /* renamed from: a */
    public static final int f112891a = -2;

    /* renamed from: b */
    public static final XSSimpleType f112892b = (XSSimpleType) SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl("string");

    /* renamed from: c */
    public static XSParticleDecl f112893c = null;

    /* renamed from: d */
    public static final Comparator f112894d = new C20050a();

    public static Object ElementDefaultValidImmediate(XSTypeDefinition xSTypeDefinition, String str, ValidationContext validationContext, ValidatedInfo validatedInfo) {
        XSSimpleType xSSimpleType;
        if (xSTypeDefinition.getTypeCategory() == 16) {
            xSSimpleType = (XSSimpleType) xSTypeDefinition;
        } else {
            XSComplexTypeDecl xSComplexTypeDecl = (XSComplexTypeDecl) xSTypeDefinition;
            short s = xSComplexTypeDecl.f112884m;
            if (s == 1) {
                xSSimpleType = xSComplexTypeDecl.f112885n;
            } else {
                if (s != 3 || !((XSParticleDecl) xSComplexTypeDecl.getParticle()).emptiable()) {
                    return null;
                }
                xSSimpleType = null;
            }
        }
        if (xSSimpleType == null) {
            xSSimpleType = f112892b;
        }
        try {
            return validatedInfo != null ? xSSimpleType.validate(validatedInfo.stringValue(), validationContext, validatedInfo) : xSSimpleType.validate(str, validationContext, validatedInfo);
        } catch (InvalidDatatypeValueException unused) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m70204a(Vector vector, XSElementDecl xSElementDecl) {
        XSParticleDecl xSParticleDecl = new XSParticleDecl();
        xSParticleDecl.fValue = xSElementDecl;
        xSParticleDecl.fType = (short) 1;
        vector.addElement(xSParticleDecl);
    }

    /* renamed from: b */
    public static boolean m70205b(XSComplexTypeDecl xSComplexTypeDecl, XSTypeDefinition xSTypeDefinition, short s) {
        XSSimpleType xSSimpleType;
        if (xSComplexTypeDecl == xSTypeDefinition) {
            return true;
        }
        if ((xSComplexTypeDecl.f112879h & s) != 0) {
            return false;
        }
        XSTypeDefinition xSTypeDefinition2 = xSComplexTypeDecl.f112878g;
        if (xSTypeDefinition2 == xSTypeDefinition) {
            return true;
        }
        XSComplexTypeDecl xSComplexTypeDecl2 = SchemaGrammar.fAnyType;
        if (xSTypeDefinition2 != xSComplexTypeDecl2 && xSTypeDefinition2 != (xSSimpleType = SchemaGrammar.fAnySimpleType)) {
            if (xSTypeDefinition2.getTypeCategory() == 15) {
                return m70205b((XSComplexTypeDecl) xSTypeDefinition2, xSTypeDefinition, s);
            }
            if (xSTypeDefinition2.getTypeCategory() == 16) {
                if (xSTypeDefinition.getTypeCategory() == 15) {
                    if (xSTypeDefinition != xSComplexTypeDecl2) {
                        return false;
                    }
                    xSTypeDefinition = xSSimpleType;
                }
                return m70216m((XSSimpleType) xSTypeDefinition2, (XSSimpleType) xSTypeDefinition, s);
            }
        }
        return false;
    }

    /* renamed from: c */
    public static void m70206c(XSElementDecl xSElementDecl, XSElementDecl xSElementDecl2) throws XMLSchemaException {
    }

    public static boolean checkComplexDerivationOk(XSComplexTypeDecl xSComplexTypeDecl, XSTypeDefinition xSTypeDefinition, short s) {
        return xSComplexTypeDecl == SchemaGrammar.fAnyType ? xSComplexTypeDecl == xSTypeDefinition : m70205b(xSComplexTypeDecl, xSTypeDefinition, s);
    }

    public static void checkElementDeclsConsistent(XSComplexTypeDecl xSComplexTypeDecl, XSParticleDecl xSParticleDecl, SymbolHash symbolHash, SubstitutionGroupHandler substitutionGroupHandler) throws XMLSchemaException {
        short s = xSParticleDecl.fType;
        if (s == 2) {
            return;
        }
        int i = 0;
        XSTerm xSTerm = xSParticleDecl.fValue;
        if (s != 1) {
            XSModelGroupImpl xSModelGroupImpl = (XSModelGroupImpl) xSTerm;
            while (i < xSModelGroupImpl.fParticleCount) {
                checkElementDeclsConsistent(xSComplexTypeDecl, xSModelGroupImpl.fParticles[i], symbolHash, substitutionGroupHandler);
                i++;
            }
            return;
        }
        XSElementDecl xSElementDecl = (XSElementDecl) xSTerm;
        findElemInTable(xSComplexTypeDecl, xSElementDecl, symbolHash);
        if (xSElementDecl.fScope == 1) {
            XSElementDecl[] substitutionGroup = substitutionGroupHandler.getSubstitutionGroup(xSElementDecl);
            while (i < substitutionGroup.length) {
                findElemInTable(xSComplexTypeDecl, substitutionGroup[i], symbolHash);
                i++;
            }
        }
    }

    public static boolean checkSimpleDerivationOk(XSSimpleType xSSimpleType, XSTypeDefinition xSTypeDefinition, short s) {
        XSSimpleType xSSimpleType2 = SchemaGrammar.fAnySimpleType;
        if (xSSimpleType == xSSimpleType2) {
            return xSTypeDefinition == SchemaGrammar.fAnyType || xSTypeDefinition == xSSimpleType2;
        }
        if (xSTypeDefinition.getTypeCategory() == 15) {
            if (xSTypeDefinition != SchemaGrammar.fAnyType) {
                return false;
            }
            xSTypeDefinition = xSSimpleType2;
        }
        return m70216m(xSSimpleType, (XSSimpleType) xSTypeDefinition, s);
    }

    public static boolean checkTypeDerivationOk(XSTypeDefinition xSTypeDefinition, XSTypeDefinition xSTypeDefinition2, short s) {
        XSComplexTypeDecl xSComplexTypeDecl = SchemaGrammar.fAnyType;
        if (xSTypeDefinition == xSComplexTypeDecl) {
            return xSTypeDefinition == xSTypeDefinition2;
        }
        XSSimpleType xSSimpleType = SchemaGrammar.fAnySimpleType;
        if (xSTypeDefinition == xSSimpleType) {
            return xSTypeDefinition2 == xSComplexTypeDecl || xSTypeDefinition2 == xSSimpleType;
        }
        if (xSTypeDefinition.getTypeCategory() != 16) {
            return m70205b((XSComplexTypeDecl) xSTypeDefinition, xSTypeDefinition2, s);
        }
        if (xSTypeDefinition2.getTypeCategory() == 15) {
            if (xSTypeDefinition2 != xSComplexTypeDecl) {
                return false;
            }
            xSTypeDefinition2 = xSSimpleType;
        }
        return m70216m((XSSimpleType) xSTypeDefinition, (XSSimpleType) xSTypeDefinition2, s);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0055, code lost:
    
        r8 = r8 + 1;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m70207d(java.util.Vector r3, int r4, int r5, org.apache.xerces.impl.p117xs.SubstitutionGroupHandler r6, java.util.Vector r7, int r8, int r9, org.apache.xerces.impl.p117xs.SubstitutionGroupHandler r10) throws org.apache.xerces.impl.p117xs.XMLSchemaException {
        /*
            boolean r0 = m70212i(r4, r5, r8, r9)
            r1 = 0
            if (r0 != 0) goto L37
            org.apache.xerces.impl.xs.XMLSchemaException r3 = new org.apache.xerces.impl.xs.XMLSchemaException
            r6 = 4
            java.lang.Object[] r6 = new java.lang.Object[r6]
            java.lang.String r4 = java.lang.Integer.toString(r4)
            r6[r1] = r4
            java.lang.String r4 = "unbounded"
            r7 = -1
            if (r5 != r7) goto L19
            r5 = r4
            goto L1d
        L19:
            java.lang.String r5 = java.lang.Integer.toString(r5)
        L1d:
            r10 = 1
            r6[r10] = r5
            r5 = 2
            java.lang.String r8 = java.lang.Integer.toString(r8)
            r6[r5] = r8
            if (r9 != r7) goto L2a
            goto L2e
        L2a:
            java.lang.String r4 = java.lang.Integer.toString(r9)
        L2e:
            r5 = 3
            r6[r5] = r4
            java.lang.String r4 = "rcase-MapAndSum.2"
            r3.<init>(r4, r6)
            throw r3
        L37:
            int r4 = r3.size()
            int r5 = r7.size()
            r8 = r1
        L40:
            if (r8 < r4) goto L43
            return
        L43:
            java.lang.Object r9 = r3.elementAt(r8)
            org.apache.xerces.impl.xs.XSParticleDecl r9 = (org.apache.xerces.impl.p117xs.XSParticleDecl) r9
            r0 = r1
        L4a:
            if (r0 >= r5) goto L5b
            java.lang.Object r2 = r7.elementAt(r0)
            org.apache.xerces.impl.xs.XSParticleDecl r2 = (org.apache.xerces.impl.p117xs.XSParticleDecl) r2
            m70219p(r9, r6, r2, r10)     // Catch: org.apache.xerces.impl.p117xs.XMLSchemaException -> L58
            int r8 = r8 + 1
            goto L40
        L58:
            int r0 = r0 + 1
            goto L4a
        L5b:
            org.apache.xerces.impl.xs.XMLSchemaException r3 = new org.apache.xerces.impl.xs.XMLSchemaException
            java.lang.String r4 = "rcase-MapAndSum.1"
            r5 = 0
            r3.<init>(r4, r5)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.XSConstraints.m70207d(java.util.Vector, int, int, org.apache.xerces.impl.xs.SubstitutionGroupHandler, java.util.Vector, int, int, org.apache.xerces.impl.xs.SubstitutionGroupHandler):void");
    }

    /* renamed from: e */
    public static void m70208e(XSElementDecl xSElementDecl, int i, int i2, XSWildcardDecl xSWildcardDecl, int i3, int i4, boolean z) throws XMLSchemaException {
        if (!z || m70212i(i, i2, i3, i4)) {
            if (!xSWildcardDecl.allowNamespace(xSElementDecl.fTargetNamespace)) {
                throw new XMLSchemaException(XmlErrorCodes.PARTICLE_DERIVATION_NS_COMPAT$WILDCARD_VALID, new Object[]{xSElementDecl.fName, xSElementDecl.fTargetNamespace});
            }
            return;
        }
        Object[] objArr = new Object[5];
        objArr[0] = xSElementDecl.fName;
        objArr[1] = Integer.toString(i);
        objArr[2] = i2 == -1 ? "unbounded" : Integer.toString(i2);
        objArr[3] = Integer.toString(i3);
        objArr[4] = i4 != -1 ? Integer.toString(i4) : "unbounded";
        throw new XMLSchemaException("rcase-NSCompat.2", objArr);
    }

    /* renamed from: f */
    public static void m70209f(Vector vector, int i, int i2, SubstitutionGroupHandler substitutionGroupHandler, XSParticleDecl xSParticleDecl, int i3, int i4, boolean z) throws XMLSchemaException {
        if (z && !m70212i(i, i2, i3, i4)) {
            Object[] objArr = new Object[4];
            objArr[0] = Integer.toString(i);
            objArr[1] = i2 == -1 ? "unbounded" : Integer.toString(i2);
            objArr[2] = Integer.toString(i3);
            objArr[3] = i4 != -1 ? Integer.toString(i4) : "unbounded";
            throw new XMLSchemaException("rcase-NSRecurseCheckCardinality.2", objArr);
        }
        int size = vector.size();
        for (int i5 = 0; i5 < size; i5++) {
            try {
                m70220q((XSParticleDecl) vector.elementAt(i5), substitutionGroupHandler, xSParticleDecl, null, false);
            } catch (XMLSchemaException unused) {
                throw new XMLSchemaException("rcase-NSRecurseCheckCardinality.1", null);
            }
        }
    }

    public static void findElemInTable(XSComplexTypeDecl xSComplexTypeDecl, XSElementDecl xSElementDecl, SymbolHash symbolHash) throws XMLSchemaException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(xSElementDecl.fName);
        stringBuffer.append(",");
        stringBuffer.append(xSElementDecl.fTargetNamespace);
        String stringBuffer2 = stringBuffer.toString();
        XSElementDecl xSElementDecl2 = (XSElementDecl) symbolHash.get(stringBuffer2);
        if (xSElementDecl2 == null) {
            symbolHash.put(stringBuffer2, xSElementDecl);
        } else if (xSElementDecl != xSElementDecl2 && xSElementDecl.fType != xSElementDecl2.fType) {
            throw new XMLSchemaException(XmlErrorCodes.ELEM_CONSISTANT, new Object[]{xSComplexTypeDecl.f112876e, xSElementDecl.fName});
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void fullSchemaChecking(XSGrammarBucket xSGrammarBucket, SubstitutionGroupHandler substitutionGroupHandler, CMBuilder cMBuilder, XMLErrorReporter xMLErrorReporter) {
        boolean checkUniqueParticleAttribution;
        SchemaGrammar[] grammars = xSGrammarBucket.getGrammars();
        int i = 1;
        int length = grammars.length - 1;
        while (length >= 0) {
            substitutionGroupHandler.addSubstitutionGroup(grammars[length].m70121e());
            length--;
            i = 1;
        }
        XSParticleDecl xSParticleDecl = new XSParticleDecl();
        XSParticleDecl xSParticleDecl2 = new XSParticleDecl();
        xSParticleDecl.fType = (short) 3;
        xSParticleDecl2.fType = (short) 3;
        int length2 = grammars.length - i;
        boolean z = i;
        while (length2 >= 0) {
            XSGroupDecl[] m70119c = grammars[length2].m70119c();
            SimpleLocator[] m70118b = grammars[length2].m70118b();
            int i2 = 0;
            boolean z2 = z;
            while (i2 < m70119c.length) {
                int i3 = i2 + 1;
                XSGroupDecl xSGroupDecl = m70119c[i2];
                XSModelGroupImpl xSModelGroupImpl = xSGroupDecl.fModelGroup;
                int i4 = i3 + 1;
                XSModelGroupImpl xSModelGroupImpl2 = m70119c[i3].fModelGroup;
                xSParticleDecl.fValue = xSModelGroupImpl;
                xSParticleDecl2.fValue = xSModelGroupImpl2;
                if (xSModelGroupImpl2 == null) {
                    if (xSModelGroupImpl != null) {
                        m70222s(xMLErrorReporter, m70118b[(i4 / 2) - (z2 ? 1 : 0)], "src-redefine.6.2.2", new Object[]{xSGroupDecl.fName, XmlErrorCodes.PARTICLE_DERIVATION_RECURSE$MAP});
                    }
                } else if (xSModelGroupImpl != null) {
                    try {
                        m70219p(xSParticleDecl, substitutionGroupHandler, xSParticleDecl2, substitutionGroupHandler);
                    } catch (XMLSchemaException e) {
                        String key = e.getKey();
                        int i5 = (i4 / 2) - (z2 ? 1 : 0);
                        m70222s(xMLErrorReporter, m70118b[i5], key, e.getArgs());
                        m70222s(xMLErrorReporter, m70118b[i5], "src-redefine.6.2.2", new Object[]{xSGroupDecl.fName, key});
                    }
                } else if (!xSParticleDecl2.emptiable()) {
                    m70222s(xMLErrorReporter, m70118b[(i4 / 2) - (z2 ? 1 : 0)], "src-redefine.6.2.2", new Object[]{xSGroupDecl.fName, XmlErrorCodes.PARTICLE_DERIVATION_RECURSE$MAP});
                }
                i2 = i4;
                z2 = true;
            }
            length2--;
            z = z2;
        }
        SymbolHash symbolHash = new SymbolHash();
        for (int length3 = grammars.length - (z ? 1 : 0); length3 >= 0; length3--) {
            SchemaGrammar schemaGrammar = grammars[length3];
            boolean z3 = schemaGrammar.f112711v0;
            XSComplexTypeDecl[] m70123g = schemaGrammar.m70123g();
            SimpleLocator[] m70122f = grammars[length3].m70122f();
            int i6 = 0;
            for (int i7 = 0; i7 < m70123g.length; i7++) {
                if (!z3 && m70123g[i7].f112886o != null) {
                    symbolHash.clear();
                    try {
                        XSComplexTypeDecl xSComplexTypeDecl = m70123g[i7];
                        checkElementDeclsConsistent(xSComplexTypeDecl, xSComplexTypeDecl.f112886o, symbolHash, substitutionGroupHandler);
                    } catch (XMLSchemaException e2) {
                        m70222s(xMLErrorReporter, m70122f[i7], e2.getKey(), e2.getArgs());
                    }
                }
                XSComplexTypeDecl xSComplexTypeDecl2 = m70123g[i7];
                XSTypeDefinition xSTypeDefinition = xSComplexTypeDecl2.f112878g;
                if (xSTypeDefinition != null && xSTypeDefinition != SchemaGrammar.fAnyType && xSComplexTypeDecl2.f112879h == 2 && (xSTypeDefinition instanceof XSComplexTypeDecl)) {
                    XSParticleDecl xSParticleDecl3 = xSComplexTypeDecl2.f112886o;
                    XSParticleDecl xSParticleDecl4 = ((XSComplexTypeDecl) xSTypeDefinition).f112886o;
                    if (xSParticleDecl3 == null) {
                        if (xSParticleDecl4 != null && !xSParticleDecl4.emptiable()) {
                            SimpleLocator simpleLocator = m70122f[i7];
                            XSComplexTypeDecl xSComplexTypeDecl3 = m70123g[i7];
                            m70222s(xMLErrorReporter, simpleLocator, "derivation-ok-restriction.5.3.2", new Object[]{xSComplexTypeDecl3.f112876e, xSComplexTypeDecl3.f112878g.getName()});
                        }
                    } else if (xSParticleDecl4 != null) {
                        try {
                            m70219p(xSParticleDecl3, substitutionGroupHandler, ((XSComplexTypeDecl) xSTypeDefinition).f112886o, substitutionGroupHandler);
                        } catch (XMLSchemaException e3) {
                            m70222s(xMLErrorReporter, m70122f[i7], e3.getKey(), e3.getArgs());
                            m70222s(xMLErrorReporter, m70122f[i7], "derivation-ok-restriction.5.4.2", new Object[]{m70123g[i7].f112876e});
                        }
                    } else {
                        m70222s(xMLErrorReporter, m70122f[i7], "derivation-ok-restriction.5.4.2", new Object[]{xSComplexTypeDecl2.f112876e});
                    }
                }
                XSCMValidator contentModel = m70123g[i7].getContentModel(cMBuilder, z);
                if (contentModel != null) {
                    try {
                        checkUniqueParticleAttribution = contentModel.checkUniqueParticleAttribution(substitutionGroupHandler);
                    } catch (XMLSchemaException e4) {
                        m70222s(xMLErrorReporter, m70122f[i7], e4.getKey(), e4.getArgs());
                    }
                    if (!z3 && checkUniqueParticleAttribution) {
                        m70123g[i6] = m70123g[i7];
                        i6++;
                    }
                }
                checkUniqueParticleAttribution = false;
                if (!z3) {
                    m70123g[i6] = m70123g[i7];
                    i6++;
                }
            }
            if (!z3) {
                grammars[length3].m70124l(i6);
                grammars[length3].f112711v0 = z;
            }
        }
    }

    /* renamed from: g */
    public static void m70210g(XSWildcardDecl xSWildcardDecl, int i, int i2, XSWildcardDecl xSWildcardDecl2, int i3, int i4) throws XMLSchemaException {
        if (m70212i(i, i2, i3, i4)) {
            if (!xSWildcardDecl.isSubsetOf(xSWildcardDecl2)) {
                throw new XMLSchemaException("rcase-NSSubset.1", null);
            }
            if (xSWildcardDecl.weakerProcessContents(xSWildcardDecl2)) {
                throw new XMLSchemaException("rcase-NSSubset.3", new Object[]{xSWildcardDecl.getProcessContentsAsString(), xSWildcardDecl2.getProcessContentsAsString()});
            }
            return;
        }
        Object[] objArr = new Object[4];
        objArr[0] = Integer.toString(i);
        objArr[1] = i2 == -1 ? "unbounded" : Integer.toString(i2);
        objArr[2] = Integer.toString(i3);
        objArr[3] = i4 != -1 ? Integer.toString(i4) : "unbounded";
        throw new XMLSchemaException(XmlErrorCodes.PARTICLE_DERIVATION_NS_SUBST$WILDCARD_SUBSET, objArr);
    }

    public static XSParticleDecl getEmptySequence() {
        if (f112893c == null) {
            XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
            xSModelGroupImpl.fCompositor = (short) 102;
            xSModelGroupImpl.fParticleCount = 0;
            xSModelGroupImpl.fParticles = null;
            XSObjectListImpl xSObjectListImpl = XSObjectListImpl.EMPTY_LIST;
            xSModelGroupImpl.fAnnotations = xSObjectListImpl;
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fType = (short) 3;
            xSParticleDecl.fValue = xSModelGroupImpl;
            xSParticleDecl.fAnnotations = xSObjectListImpl;
            f112893c = xSParticleDecl;
        }
        return f112893c;
    }

    /* renamed from: h */
    public static void m70211h(XSElementDecl xSElementDecl, int i, int i2, XSElementDecl xSElementDecl2, int i3, int i4) throws XMLSchemaException {
        if (xSElementDecl.fName != xSElementDecl2.fName || xSElementDecl.fTargetNamespace != xSElementDecl2.fTargetNamespace) {
            throw new XMLSchemaException(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$NAME, new Object[]{xSElementDecl.fName, xSElementDecl.fTargetNamespace, xSElementDecl2.fName, xSElementDecl2.fTargetNamespace});
        }
        if (!xSElementDecl2.getNillable() && xSElementDecl.getNillable()) {
            throw new XMLSchemaException(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$NILLABLE, new Object[]{xSElementDecl.fName});
        }
        if (!m70212i(i, i2, i3, i4)) {
            Object[] objArr = new Object[5];
            objArr[0] = xSElementDecl.fName;
            objArr[1] = Integer.toString(i);
            objArr[2] = i2 == -1 ? "unbounded" : Integer.toString(i2);
            objArr[3] = Integer.toString(i3);
            objArr[4] = i4 != -1 ? Integer.toString(i4) : "unbounded";
            throw new XMLSchemaException("rcase-NameAndTypeOK.3", objArr);
        }
        if (xSElementDecl2.getConstraintType() == 2) {
            if (xSElementDecl.getConstraintType() != 2) {
                throw new XMLSchemaException("rcase-NameAndTypeOK.4.a", new Object[]{xSElementDecl.fName, xSElementDecl2.fDefault.stringValue()});
            }
            boolean z = xSElementDecl.fType.getTypeCategory() == 16 || ((XSComplexTypeDecl) xSElementDecl.fType).f112884m == 1;
            if ((!z && !xSElementDecl2.fDefault.normalizedValue.equals(xSElementDecl.fDefault.normalizedValue)) || (z && !xSElementDecl2.fDefault.actualValue.equals(xSElementDecl.fDefault.actualValue))) {
                throw new XMLSchemaException("rcase-NameAndTypeOK.4.b", new Object[]{xSElementDecl.fName, xSElementDecl.fDefault.stringValue(), xSElementDecl2.fDefault.stringValue()});
            }
        }
        m70206c(xSElementDecl, xSElementDecl2);
        short s = xSElementDecl.fBlock;
        short s2 = xSElementDecl2.fBlock;
        if ((s & s2) != s2 || (s == 0 && s2 != 0)) {
            throw new XMLSchemaException(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$DISALLOWED_SUBSTITUTIONS, new Object[]{xSElementDecl.fName});
        }
        if (!checkTypeDerivationOk(xSElementDecl.fType, xSElementDecl2.fType, (short) 25)) {
            throw new XMLSchemaException("rcase-NameAndTypeOK.7", new Object[]{xSElementDecl.fName, xSElementDecl.fType.getName(), xSElementDecl2.fType.getName()});
        }
    }

    /* renamed from: i */
    public static boolean m70212i(int i, int i2, int i3, int i4) {
        if (i < i3) {
            return false;
        }
        if (i4 != -1) {
            return i2 != -1 && i2 <= i4;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
    
        r1 = r1 + 1;
        r11 = r4;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m70213j(java.util.Vector r6, int r7, int r8, org.apache.xerces.impl.p117xs.SubstitutionGroupHandler r9, java.util.Vector r10, int r11, int r12, org.apache.xerces.impl.p117xs.SubstitutionGroupHandler r13) throws org.apache.xerces.impl.p117xs.XMLSchemaException {
        /*
            boolean r0 = m70212i(r7, r8, r11, r12)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L37
            org.apache.xerces.impl.xs.XMLSchemaException r6 = new org.apache.xerces.impl.xs.XMLSchemaException
            r9 = 4
            java.lang.Object[] r9 = new java.lang.Object[r9]
            java.lang.String r7 = java.lang.Integer.toString(r7)
            r9[r1] = r7
            java.lang.String r7 = "unbounded"
            r10 = -1
            if (r8 != r10) goto L1a
            r8 = r7
            goto L1e
        L1a:
            java.lang.String r8 = java.lang.Integer.toString(r8)
        L1e:
            r9[r2] = r8
            r8 = 2
            java.lang.String r11 = java.lang.Integer.toString(r11)
            r9[r8] = r11
            if (r12 != r10) goto L2a
            goto L2e
        L2a:
            java.lang.String r7 = java.lang.Integer.toString(r12)
        L2e:
            r8 = 3
            r9[r8] = r7
            java.lang.String r7 = "rcase-Recurse.1"
            r6.<init>(r7, r9)
            throw r6
        L37:
            int r7 = r6.size()
            int r8 = r10.size()
            r11 = r1
        L40:
            r12 = 0
            java.lang.String r0 = "rcase-Recurse.2"
            if (r1 < r7) goto L5d
        L45:
            if (r11 < r8) goto L48
            return
        L48:
            java.lang.Object r6 = r10.elementAt(r11)
            org.apache.xerces.impl.xs.XSParticleDecl r6 = (org.apache.xerces.impl.p117xs.XSParticleDecl) r6
            boolean r6 = r6.emptiable()
            if (r6 == 0) goto L57
            int r11 = r11 + 1
            goto L45
        L57:
            org.apache.xerces.impl.xs.XMLSchemaException r6 = new org.apache.xerces.impl.xs.XMLSchemaException
            r6.<init>(r0, r12)
            throw r6
        L5d:
            java.lang.Object r3 = r6.elementAt(r1)
            org.apache.xerces.impl.xs.XSParticleDecl r3 = (org.apache.xerces.impl.p117xs.XSParticleDecl) r3
            r4 = r11
        L64:
            if (r11 >= r8) goto L83
            java.lang.Object r5 = r10.elementAt(r11)
            org.apache.xerces.impl.xs.XSParticleDecl r5 = (org.apache.xerces.impl.p117xs.XSParticleDecl) r5
            int r4 = r4 + r2
            m70219p(r3, r9, r5, r13)     // Catch: org.apache.xerces.impl.p117xs.XMLSchemaException -> L74
            int r1 = r1 + 1
            r11 = r4
            goto L40
        L74:
            boolean r5 = r5.emptiable()
            if (r5 == 0) goto L7d
            int r11 = r11 + 1
            goto L64
        L7d:
            org.apache.xerces.impl.xs.XMLSchemaException r6 = new org.apache.xerces.impl.xs.XMLSchemaException
            r6.<init>(r0, r12)
            throw r6
        L83:
            org.apache.xerces.impl.xs.XMLSchemaException r6 = new org.apache.xerces.impl.xs.XMLSchemaException
            r6.<init>(r0, r12)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.XSConstraints.m70213j(java.util.Vector, int, int, org.apache.xerces.impl.xs.SubstitutionGroupHandler, java.util.Vector, int, int, org.apache.xerces.impl.xs.SubstitutionGroupHandler):void");
    }

    /* renamed from: k */
    public static void m70214k(Vector vector, int i, int i2, SubstitutionGroupHandler substitutionGroupHandler, Vector vector2, int i3, int i4, SubstitutionGroupHandler substitutionGroupHandler2) throws XMLSchemaException {
        if (!m70212i(i, i2, i3, i4)) {
            Object[] objArr = new Object[4];
            objArr[0] = Integer.toString(i);
            objArr[1] = i2 == -1 ? "unbounded" : Integer.toString(i2);
            objArr[2] = Integer.toString(i3);
            objArr[3] = i4 != -1 ? Integer.toString(i4) : "unbounded";
            throw new XMLSchemaException("rcase-RecurseLax.1", objArr);
        }
        int size = vector.size();
        int size2 = vector2.size();
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            XSParticleDecl xSParticleDecl = (XSParticleDecl) vector.elementAt(i6);
            int i7 = i5;
            while (i5 < size2) {
                i7++;
                try {
                    if (m70219p(xSParticleDecl, substitutionGroupHandler, (XSParticleDecl) vector2.elementAt(i5), substitutionGroupHandler2)) {
                        i7--;
                    }
                    i5 = i7;
                } catch (XMLSchemaException unused) {
                    i5++;
                }
            }
            throw new XMLSchemaException(XmlErrorCodes.PARTICLE_DERIVATION_RECURSE_LAX$MAP, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x007a, code lost:
    
        r12[r5] = true;
        r13 = r13 + 1;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m70215l(java.util.Vector r7, int r8, int r9, org.apache.xerces.impl.p117xs.SubstitutionGroupHandler r10, java.util.Vector r11, int r12, int r13, org.apache.xerces.impl.p117xs.SubstitutionGroupHandler r14) throws org.apache.xerces.impl.p117xs.XMLSchemaException {
        /*
            boolean r0 = m70212i(r8, r9, r12, r13)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L37
            org.apache.xerces.impl.xs.XMLSchemaException r7 = new org.apache.xerces.impl.xs.XMLSchemaException
            r10 = 4
            java.lang.Object[] r10 = new java.lang.Object[r10]
            java.lang.String r8 = java.lang.Integer.toString(r8)
            r10[r1] = r8
            java.lang.String r8 = "unbounded"
            r11 = -1
            if (r9 != r11) goto L1a
            r9 = r8
            goto L1e
        L1a:
            java.lang.String r9 = java.lang.Integer.toString(r9)
        L1e:
            r10[r2] = r9
            r9 = 2
            java.lang.String r12 = java.lang.Integer.toString(r12)
            r10[r9] = r12
            if (r13 != r11) goto L2a
            goto L2e
        L2a:
            java.lang.String r8 = java.lang.Integer.toString(r13)
        L2e:
            r9 = 3
            r10[r9] = r8
            java.lang.String r8 = "rcase-RecurseUnordered.1"
            r7.<init>(r8, r10)
            throw r7
        L37:
            int r8 = r7.size()
            int r9 = r11.size()
            boolean[] r12 = new boolean[r9]
            r13 = r1
        L42:
            r0 = 0
            java.lang.String r3 = "rcase-RecurseUnordered.2"
            if (r13 < r8) goto L64
        L47:
            if (r1 < r9) goto L4a
            return
        L4a:
            java.lang.Object r7 = r11.elementAt(r1)
            org.apache.xerces.impl.xs.XSParticleDecl r7 = (org.apache.xerces.impl.p117xs.XSParticleDecl) r7
            boolean r8 = r12[r1]
            if (r8 != 0) goto L61
            boolean r7 = r7.emptiable()
            if (r7 == 0) goto L5b
            goto L61
        L5b:
            org.apache.xerces.impl.xs.XMLSchemaException r7 = new org.apache.xerces.impl.xs.XMLSchemaException
            r7.<init>(r3, r0)
            throw r7
        L61:
            int r1 = r1 + 1
            goto L47
        L64:
            java.lang.Object r4 = r7.elementAt(r13)
            org.apache.xerces.impl.xs.XSParticleDecl r4 = (org.apache.xerces.impl.p117xs.XSParticleDecl) r4
            r5 = r1
        L6b:
            if (r5 >= r9) goto L88
            java.lang.Object r6 = r11.elementAt(r5)
            org.apache.xerces.impl.xs.XSParticleDecl r6 = (org.apache.xerces.impl.p117xs.XSParticleDecl) r6
            m70219p(r4, r10, r6, r14)     // Catch: org.apache.xerces.impl.p117xs.XMLSchemaException -> L85
            boolean r6 = r12[r5]     // Catch: org.apache.xerces.impl.p117xs.XMLSchemaException -> L85
            if (r6 != 0) goto L7f
            r12[r5] = r2     // Catch: org.apache.xerces.impl.p117xs.XMLSchemaException -> L85
            int r13 = r13 + 1
            goto L42
        L7f:
            org.apache.xerces.impl.xs.XMLSchemaException r6 = new org.apache.xerces.impl.xs.XMLSchemaException     // Catch: org.apache.xerces.impl.p117xs.XMLSchemaException -> L85
            r6.<init>(r3, r0)     // Catch: org.apache.xerces.impl.p117xs.XMLSchemaException -> L85
            throw r6     // Catch: org.apache.xerces.impl.p117xs.XMLSchemaException -> L85
        L85:
            int r5 = r5 + 1
            goto L6b
        L88:
            org.apache.xerces.impl.xs.XMLSchemaException r7 = new org.apache.xerces.impl.xs.XMLSchemaException
            r7.<init>(r3, r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.XSConstraints.m70215l(java.util.Vector, int, int, org.apache.xerces.impl.xs.SubstitutionGroupHandler, java.util.Vector, int, int, org.apache.xerces.impl.xs.SubstitutionGroupHandler):void");
    }

    /* renamed from: m */
    public static boolean m70216m(XSSimpleType xSSimpleType, XSSimpleType xSSimpleType2, short s) {
        if (xSSimpleType == xSSimpleType2) {
            return true;
        }
        if ((s & 2) == 0 && (xSSimpleType.getBaseType().getFinal() & 2) == 0) {
            XSSimpleType xSSimpleType3 = (XSSimpleType) xSSimpleType.getBaseType();
            if (xSSimpleType3 == xSSimpleType2) {
                return true;
            }
            XSSimpleType xSSimpleType4 = SchemaGrammar.fAnySimpleType;
            if (xSSimpleType3 != xSSimpleType4 && m70216m(xSSimpleType3, xSSimpleType2, s)) {
                return true;
            }
            if ((xSSimpleType.getVariety() == 2 || xSSimpleType.getVariety() == 3) && xSSimpleType2 == xSSimpleType4) {
                return true;
            }
            if (xSSimpleType2.getVariety() == 3) {
                XSObjectList memberTypes = xSSimpleType2.getMemberTypes();
                int length = memberTypes.getLength();
                for (int i = 0; i < length; i++) {
                    if (m70216m(xSSimpleType, (XSSimpleType) memberTypes.item(i), s)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: n */
    public static void m70217n(int i, XSParticleDecl xSParticleDecl, Vector vector) {
        int i2 = xSParticleDecl.fMinOccurs;
        int i3 = xSParticleDecl.fMaxOccurs;
        short s = xSParticleDecl.fType;
        if (s == 3) {
            s = ((XSModelGroupImpl) xSParticleDecl.fValue).fCompositor;
        }
        if (s == 1 || s == 2) {
            vector.addElement(xSParticleDecl);
            return;
        }
        if (i2 == 1 && i3 == 1) {
            if (i == s) {
                XSModelGroupImpl xSModelGroupImpl = (XSModelGroupImpl) xSParticleDecl.fValue;
                for (int i4 = 0; i4 < xSModelGroupImpl.fParticleCount; i4++) {
                    m70217n(s, xSModelGroupImpl.fParticles[i4], vector);
                }
                return;
            }
            if (xSParticleDecl.isEmpty()) {
                return;
            }
        }
        vector.addElement(xSParticleDecl);
    }

    /* renamed from: o */
    public static XSParticleDecl m70218o(XSParticleDecl xSParticleDecl) {
        XSTerm xSTerm;
        short s = xSParticleDecl.fType;
        return (s == 1 || s == 2 || xSParticleDecl.fMinOccurs != 1 || xSParticleDecl.fMaxOccurs != 1 || (xSTerm = xSParticleDecl.fValue) == null || ((XSModelGroupImpl) xSTerm).fParticleCount != 1) ? xSParticleDecl : m70218o(((XSModelGroupImpl) xSTerm).fParticles[0]);
    }

    public static boolean overlapUPA(Object obj, Object obj2, SubstitutionGroupHandler substitutionGroupHandler) {
        if (!(obj instanceof XSElementDecl)) {
            return obj2 instanceof XSElementDecl ? overlapUPA((XSElementDecl) obj2, (XSWildcardDecl) obj, substitutionGroupHandler) : overlapUPA((XSWildcardDecl) obj, (XSWildcardDecl) obj2);
        }
        XSElementDecl xSElementDecl = (XSElementDecl) obj;
        return obj2 instanceof XSElementDecl ? overlapUPA(xSElementDecl, (XSElementDecl) obj2, substitutionGroupHandler) : overlapUPA(xSElementDecl, (XSWildcardDecl) obj2, substitutionGroupHandler);
    }

    /* renamed from: p */
    public static boolean m70219p(XSParticleDecl xSParticleDecl, SubstitutionGroupHandler substitutionGroupHandler, XSParticleDecl xSParticleDecl2, SubstitutionGroupHandler substitutionGroupHandler2) throws XMLSchemaException {
        return m70220q(xSParticleDecl, substitutionGroupHandler, xSParticleDecl2, substitutionGroupHandler2, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x010b  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m70220q(org.apache.xerces.impl.p117xs.XSParticleDecl r26, org.apache.xerces.impl.p117xs.SubstitutionGroupHandler r27, org.apache.xerces.impl.p117xs.XSParticleDecl r28, org.apache.xerces.impl.p117xs.SubstitutionGroupHandler r29, boolean r30) throws org.apache.xerces.impl.p117xs.XMLSchemaException {
        /*
            Method dump skipped, instructions count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.XSConstraints.m70220q(org.apache.xerces.impl.xs.XSParticleDecl, org.apache.xerces.impl.xs.SubstitutionGroupHandler, org.apache.xerces.impl.xs.XSParticleDecl, org.apache.xerces.impl.xs.SubstitutionGroupHandler, boolean):boolean");
    }

    /* renamed from: r */
    public static Vector m70221r(XSParticleDecl xSParticleDecl) {
        short s = xSParticleDecl.fType;
        if (s == 1 || s == 2) {
            return null;
        }
        Vector vector = new Vector();
        XSModelGroupImpl xSModelGroupImpl = (XSModelGroupImpl) xSParticleDecl.fValue;
        for (int i = 0; i < xSModelGroupImpl.fParticleCount; i++) {
            m70217n(xSModelGroupImpl.fCompositor, xSModelGroupImpl.fParticles[i], vector);
        }
        return vector;
    }

    /* renamed from: s */
    public static void m70222s(XMLErrorReporter xMLErrorReporter, SimpleLocator simpleLocator, String str, Object[] objArr) {
        if (simpleLocator != null) {
            xMLErrorReporter.reportError((XMLLocator) simpleLocator, "http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 1);
        } else {
            xMLErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 1);
        }
    }

    public static boolean overlapUPA(XSElementDecl xSElementDecl, XSElementDecl xSElementDecl2, SubstitutionGroupHandler substitutionGroupHandler) {
        if (xSElementDecl.fName == xSElementDecl2.fName && xSElementDecl.fTargetNamespace == xSElementDecl2.fTargetNamespace) {
            return true;
        }
        XSElementDecl[] substitutionGroup = substitutionGroupHandler.getSubstitutionGroup(xSElementDecl);
        for (int length = substitutionGroup.length - 1; length >= 0; length--) {
            XSElementDecl xSElementDecl3 = substitutionGroup[length];
            if (xSElementDecl3.fName == xSElementDecl2.fName && xSElementDecl3.fTargetNamespace == xSElementDecl2.fTargetNamespace) {
                return true;
            }
        }
        XSElementDecl[] substitutionGroup2 = substitutionGroupHandler.getSubstitutionGroup(xSElementDecl2);
        for (int length2 = substitutionGroup2.length - 1; length2 >= 0; length2--) {
            XSElementDecl xSElementDecl4 = substitutionGroup2[length2];
            if (xSElementDecl4.fName == xSElementDecl.fName && xSElementDecl4.fTargetNamespace == xSElementDecl.fTargetNamespace) {
                return true;
            }
        }
        return false;
    }

    public static boolean overlapUPA(XSElementDecl xSElementDecl, XSWildcardDecl xSWildcardDecl, SubstitutionGroupHandler substitutionGroupHandler) {
        if (xSWildcardDecl.allowNamespace(xSElementDecl.fTargetNamespace)) {
            return true;
        }
        XSElementDecl[] substitutionGroup = substitutionGroupHandler.getSubstitutionGroup(xSElementDecl);
        for (int length = substitutionGroup.length - 1; length >= 0; length--) {
            if (xSWildcardDecl.allowNamespace(substitutionGroup[length].fTargetNamespace)) {
                return true;
            }
        }
        return false;
    }

    public static boolean overlapUPA(XSWildcardDecl xSWildcardDecl, XSWildcardDecl xSWildcardDecl2) {
        XSWildcardDecl performIntersectionWith = xSWildcardDecl.performIntersectionWith(xSWildcardDecl2, xSWildcardDecl.fProcessContents);
        return (performIntersectionWith != null && performIntersectionWith.fType == 3 && performIntersectionWith.fNamespaceList.length == 0) ? false : true;
    }
}
