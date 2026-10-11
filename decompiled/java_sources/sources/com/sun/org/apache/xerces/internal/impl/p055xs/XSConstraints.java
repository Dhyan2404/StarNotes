package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidatedInfo;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p055xs.models.CMBuilder;
import com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.SimpleLocator;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.p056xs.XSTerm;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.util.SymbolHash;
import java.util.Vector;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes10.dex */
public class XSConstraints {
    static final int OCCURRENCE_UNKNOWN = -2;
    static final XSSimpleType STRING_TYPE = (XSSimpleType) SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl("string");

    public static Object ElementDefaultValidImmediate(XSTypeDefinition xSTypeDefinition, String str, ValidationContext validationContext, ValidatedInfo validatedInfo) {
        XSSimpleType xSSimpleType;
        if (xSTypeDefinition.getTypeCategory() == 16) {
            xSSimpleType = (XSSimpleType) xSTypeDefinition;
        } else {
            XSComplexTypeDecl xSComplexTypeDecl = (XSComplexTypeDecl) xSTypeDefinition;
            short s = xSComplexTypeDecl.fContentType;
            if (s == 1) {
                xSSimpleType = xSComplexTypeDecl.fXSSimpleType;
            } else {
                if (s != 3 || !((XSParticleDecl) xSComplexTypeDecl.getParticle()).emptiable()) {
                    return null;
                }
                xSSimpleType = null;
            }
        }
        if (xSSimpleType == null) {
            xSSimpleType = STRING_TYPE;
        }
        try {
            return validatedInfo != null ? xSSimpleType.validate(validatedInfo.stringValue(), validationContext, validatedInfo) : xSSimpleType.validate(str, validationContext, validatedInfo);
        } catch (InvalidDatatypeValueException unused) {
            return null;
        }
    }

    private static void addElementToParticleVector(Vector vector, XSElementDecl xSElementDecl) {
        XSParticleDecl xSParticleDecl = new XSParticleDecl();
        xSParticleDecl.fValue = xSElementDecl;
        xSParticleDecl.fType = (short) 1;
        vector.addElement(xSParticleDecl);
    }

    private static boolean checkComplexDerivation(XSComplexTypeDecl xSComplexTypeDecl, XSTypeDefinition xSTypeDefinition, short s) {
        XSSimpleType xSSimpleType;
        if (xSComplexTypeDecl == xSTypeDefinition) {
            return true;
        }
        if ((xSComplexTypeDecl.fDerivedBy & s) != 0) {
            return false;
        }
        XSTypeDefinition xSTypeDefinition2 = xSComplexTypeDecl.fBaseType;
        if (xSTypeDefinition2 == xSTypeDefinition) {
            return true;
        }
        XSComplexTypeDecl xSComplexTypeDecl2 = SchemaGrammar.fAnyType;
        if (xSTypeDefinition2 != xSComplexTypeDecl2 && xSTypeDefinition2 != (xSSimpleType = SchemaGrammar.fAnySimpleType)) {
            if (xSTypeDefinition2.getTypeCategory() == 15) {
                return checkComplexDerivation((XSComplexTypeDecl) xSTypeDefinition2, xSTypeDefinition, s);
            }
            if (xSTypeDefinition2.getTypeCategory() == 16) {
                if (xSTypeDefinition.getTypeCategory() == 15) {
                    if (xSTypeDefinition != xSComplexTypeDecl2) {
                        return false;
                    }
                    xSTypeDefinition = xSSimpleType;
                }
                return checkSimpleDerivation((XSSimpleType) xSTypeDefinition2, (XSSimpleType) xSTypeDefinition, s);
            }
        }
        return false;
    }

    public static boolean checkComplexDerivationOk(XSComplexTypeDecl xSComplexTypeDecl, XSTypeDefinition xSTypeDefinition, short s) {
        return xSComplexTypeDecl == SchemaGrammar.fAnyType ? xSComplexTypeDecl == xSTypeDefinition : checkComplexDerivation(xSComplexTypeDecl, xSTypeDefinition, s);
    }

    public static void checkElementDeclsConsistent(XSComplexTypeDecl xSComplexTypeDecl, XSParticleDecl xSParticleDecl, SymbolHash symbolHash, SubstitutionGroupHandler substitutionGroupHandler) throws XMLSchemaException {
        short s = xSParticleDecl.fType;
        if (s == 2) {
            return;
        }
        int i = 0;
        if (s != 1) {
            XSModelGroupImpl xSModelGroupImpl = (XSModelGroupImpl) xSParticleDecl.fValue;
            while (i < xSModelGroupImpl.fParticleCount) {
                checkElementDeclsConsistent(xSComplexTypeDecl, xSModelGroupImpl.fParticles[i], symbolHash, substitutionGroupHandler);
                i++;
            }
            return;
        }
        XSElementDecl xSElementDecl = (XSElementDecl) xSParticleDecl.fValue;
        findElemInTable(xSComplexTypeDecl, xSElementDecl, symbolHash);
        if (xSElementDecl.fScope == 1) {
            XSElementDecl[] substitutionGroup = substitutionGroupHandler.getSubstitutionGroup(xSElementDecl);
            while (i < substitutionGroup.length) {
                findElemInTable(xSComplexTypeDecl, substitutionGroup[i], symbolHash);
                i++;
            }
        }
    }

    private static void checkIDConstraintRestriction(XSElementDecl xSElementDecl, XSElementDecl xSElementDecl2) throws XMLSchemaException {
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0054, code lost:
    
        r8 = r8 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void checkMapAndSum(java.util.Vector r3, int r4, int r5, com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler r6, java.util.Vector r7, int r8, int r9, com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler r10) throws com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException {
        /*
            boolean r0 = checkOccurrenceRange(r4, r5, r8, r9)
            r1 = 0
            if (r0 != 0) goto L37
            com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException r3 = new com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException
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
            if (r8 >= r4) goto L63
            java.lang.Object r9 = r3.elementAt(r8)
            com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl r9 = (com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl) r9
            r0 = r1
        L49:
            if (r0 >= r5) goto L5a
            java.lang.Object r2 = r7.elementAt(r0)
            com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl r2 = (com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl) r2
            particleValidRestriction(r9, r6, r2, r10)     // Catch: com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException -> L57
            int r8 = r8 + 1
            goto L40
        L57:
            int r0 = r0 + 1
            goto L49
        L5a:
            com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException r3 = new com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException
            java.lang.String r4 = "rcase-MapAndSum.1"
            r5 = 0
            r3.<init>(r4, r5)
            throw r3
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.XSConstraints.checkMapAndSum(java.util.Vector, int, int, com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler, java.util.Vector, int, int, com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler):void");
    }

    private static void checkNSCompat(XSElementDecl xSElementDecl, int i, int i2, XSWildcardDecl xSWildcardDecl, int i3, int i4, boolean z) throws XMLSchemaException {
        if (!z || checkOccurrenceRange(i, i2, i3, i4)) {
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

    private static void checkNSRecurseCheckCardinality(Vector vector, int i, int i2, SubstitutionGroupHandler substitutionGroupHandler, XSParticleDecl xSParticleDecl, int i3, int i4, boolean z) throws XMLSchemaException {
        if (z && !checkOccurrenceRange(i, i2, i3, i4)) {
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
                particleValidRestriction((XSParticleDecl) vector.elementAt(i5), substitutionGroupHandler, xSParticleDecl, null, false);
            } catch (XMLSchemaException unused) {
                throw new XMLSchemaException("rcase-NSRecurseCheckCardinality.1", null);
            }
        }
    }

    private static void checkNSSubset(XSWildcardDecl xSWildcardDecl, int i, int i2, XSWildcardDecl xSWildcardDecl2, int i3, int i4) throws XMLSchemaException {
        if (checkOccurrenceRange(i, i2, i3, i4)) {
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

    private static void checkNameAndTypeOK(XSElementDecl xSElementDecl, int i, int i2, XSElementDecl xSElementDecl2, int i3, int i4) throws XMLSchemaException {
        if (xSElementDecl.fName != xSElementDecl2.fName || xSElementDecl.fTargetNamespace != xSElementDecl2.fTargetNamespace) {
            throw new XMLSchemaException(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$NAME, new Object[]{xSElementDecl.fName, xSElementDecl.fTargetNamespace, xSElementDecl2.fName, xSElementDecl2.fTargetNamespace});
        }
        if (!xSElementDecl2.getNillable() && xSElementDecl.getNillable()) {
            throw new XMLSchemaException(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$NILLABLE, new Object[]{xSElementDecl.fName});
        }
        if (!checkOccurrenceRange(i, i2, i3, i4)) {
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
            boolean z = xSElementDecl.fType.getTypeCategory() == 16 || ((XSComplexTypeDecl) xSElementDecl.fType).fContentType == 1;
            if ((!z && !xSElementDecl2.fDefault.normalizedValue.equals(xSElementDecl.fDefault.normalizedValue)) || (z && !xSElementDecl2.fDefault.actualValue.equals(xSElementDecl.fDefault.actualValue))) {
                throw new XMLSchemaException("rcase-NameAndTypeOK.4.b", new Object[]{xSElementDecl.fName, xSElementDecl.fDefault.stringValue(), xSElementDecl2.fDefault.stringValue()});
            }
        }
        checkIDConstraintRestriction(xSElementDecl, xSElementDecl2);
        short s = xSElementDecl.fBlock;
        short s2 = xSElementDecl2.fBlock;
        if ((s & s2) != s2 || (s == 0 && s2 != 0)) {
            throw new XMLSchemaException(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$DISALLOWED_SUBSTITUTIONS, new Object[]{xSElementDecl.fName});
        }
        if (!checkTypeDerivationOk(xSElementDecl.fType, xSElementDecl2.fType, (short) 25)) {
            throw new XMLSchemaException("rcase-NameAndTypeOK.7", new Object[]{xSElementDecl.fName, xSElementDecl.fType.getName(), xSElementDecl2.fType.getName()});
        }
    }

    private static boolean checkOccurrenceRange(int i, int i2, int i3, int i4) {
        if (i < i3) {
            return false;
        }
        if (i4 != -1) {
            return i2 != -1 && i2 <= i4;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0058, code lost:
    
        r1 = r1 + 1;
        r11 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void checkRecurse(java.util.Vector r6, int r7, int r8, com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler r9, java.util.Vector r10, int r11, int r12, com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler r13) throws com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException {
        /*
            boolean r0 = checkOccurrenceRange(r7, r8, r11, r12)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L37
            com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException r6 = new com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException
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
            if (r1 >= r7) goto L71
            java.lang.Object r3 = r6.elementAt(r1)
            com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl r3 = (com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl) r3
            r4 = r11
        L4c:
            if (r11 >= r8) goto L6b
            java.lang.Object r5 = r10.elementAt(r11)
            com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl r5 = (com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl) r5
            int r4 = r4 + r2
            particleValidRestriction(r3, r9, r5, r13)     // Catch: com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException -> L5c
            int r1 = r1 + 1
            r11 = r4
            goto L40
        L5c:
            boolean r5 = r5.emptiable()
            if (r5 == 0) goto L65
            int r11 = r11 + 1
            goto L4c
        L65:
            com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException r6 = new com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException
            r6.<init>(r0, r12)
            throw r6
        L6b:
            com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException r6 = new com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException
            r6.<init>(r0, r12)
            throw r6
        L71:
            if (r11 >= r8) goto L88
            java.lang.Object r6 = r10.elementAt(r11)
            com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl r6 = (com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl) r6
            boolean r6 = r6.emptiable()
            if (r6 == 0) goto L82
            int r11 = r11 + 1
            goto L71
        L82:
            com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException r6 = new com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException
            r6.<init>(r0, r12)
            throw r6
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.XSConstraints.checkRecurse(java.util.Vector, int, int, com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler, java.util.Vector, int, int, com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0055, code lost:
    
        r1 = r1 + 1;
        r9 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void checkRecurseLax(java.util.Vector r4, int r5, int r6, com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler r7, java.util.Vector r8, int r9, int r10, com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler r11) throws com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException {
        /*
            boolean r0 = checkOccurrenceRange(r5, r6, r9, r10)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L37
            com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException r4 = new com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException
            r7 = 4
            java.lang.Object[] r7 = new java.lang.Object[r7]
            java.lang.String r5 = java.lang.Integer.toString(r5)
            r7[r1] = r5
            java.lang.String r5 = "unbounded"
            r8 = -1
            if (r6 != r8) goto L1a
            r6 = r5
            goto L1e
        L1a:
            java.lang.String r6 = java.lang.Integer.toString(r6)
        L1e:
            r7[r2] = r6
            r6 = 2
            java.lang.String r9 = java.lang.Integer.toString(r9)
            r7[r6] = r9
            if (r10 != r8) goto L2a
            goto L2e
        L2a:
            java.lang.String r5 = java.lang.Integer.toString(r10)
        L2e:
            r6 = 3
            r7[r6] = r5
            java.lang.String r5 = "rcase-RecurseLax.1"
            r4.<init>(r5, r7)
            throw r4
        L37:
            int r5 = r4.size()
            int r6 = r8.size()
            r9 = r1
        L40:
            if (r1 >= r5) goto L65
            java.lang.Object r10 = r4.elementAt(r1)
            com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl r10 = (com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl) r10
            r0 = r9
        L49:
            if (r9 >= r6) goto L5c
            java.lang.Object r3 = r8.elementAt(r9)
            com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl r3 = (com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl) r3
            int r0 = r0 + r2
            particleValidRestriction(r10, r7, r3, r11)     // Catch: com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException -> L59
            int r1 = r1 + 1
            r9 = r0
            goto L40
        L59:
            int r9 = r9 + 1
            goto L49
        L5c:
            com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException r4 = new com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException
            java.lang.String r5 = "rcase-RecurseLax.2"
            r6 = 0
            r4.<init>(r5, r6)
            throw r4
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.XSConstraints.checkRecurseLax(java.util.Vector, int, int, com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler, java.util.Vector, int, int, com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005d, code lost:
    
        r12[r5] = true;
        r13 = r13 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void checkRecurseUnordered(java.util.Vector r7, int r8, int r9, com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler r10, java.util.Vector r11, int r12, int r13, com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler r14) throws com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException {
        /*
            boolean r0 = checkOccurrenceRange(r8, r9, r12, r13)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L37
            com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException r7 = new com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException
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
            if (r13 >= r8) goto L71
            java.lang.Object r4 = r7.elementAt(r13)
            com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl r4 = (com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl) r4
            r5 = r1
        L4e:
            if (r5 >= r9) goto L6b
            java.lang.Object r6 = r11.elementAt(r5)
            com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl r6 = (com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl) r6
            particleValidRestriction(r4, r10, r6, r14)     // Catch: com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException -> L68
            boolean r6 = r12[r5]     // Catch: com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException -> L68
            if (r6 != 0) goto L62
            r12[r5] = r2     // Catch: com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException -> L68
            int r13 = r13 + 1
            goto L42
        L62:
            com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException r6 = new com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException     // Catch: com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException -> L68
            r6.<init>(r3, r0)     // Catch: com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException -> L68
            throw r6     // Catch: com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException -> L68
        L68:
            int r5 = r5 + 1
            goto L4e
        L6b:
            com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException r7 = new com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException
            r7.<init>(r3, r0)
            throw r7
        L71:
            if (r1 >= r9) goto L8d
            java.lang.Object r7 = r11.elementAt(r1)
            com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl r7 = (com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl) r7
            boolean r8 = r12[r1]
            if (r8 != 0) goto L8a
            boolean r7 = r7.emptiable()
            if (r7 == 0) goto L84
            goto L8a
        L84:
            com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException r7 = new com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaException
            r7.<init>(r3, r0)
            throw r7
        L8a:
            int r1 = r1 + 1
            goto L71
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.XSConstraints.checkRecurseUnordered(java.util.Vector, int, int, com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler, java.util.Vector, int, int, com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler):void");
    }

    private static boolean checkSimpleDerivation(XSSimpleType xSSimpleType, XSSimpleType xSSimpleType2, short s) {
        if (xSSimpleType == xSSimpleType2) {
            return true;
        }
        if ((s & 2) == 0 && (xSSimpleType.getBaseType().getFinal() & 2) == 0) {
            XSSimpleType xSSimpleType3 = (XSSimpleType) xSSimpleType.getBaseType();
            if (xSSimpleType3 == xSSimpleType2) {
                return true;
            }
            XSSimpleType xSSimpleType4 = SchemaGrammar.fAnySimpleType;
            if (xSSimpleType3 != xSSimpleType4 && checkSimpleDerivation(xSSimpleType3, xSSimpleType2, s)) {
                return true;
            }
            if ((xSSimpleType.getVariety() == 2 || xSSimpleType.getVariety() == 3) && xSSimpleType2 == xSSimpleType4) {
                return true;
            }
            if (xSSimpleType2.getVariety() == 3) {
                XSObjectList memberTypes = xSSimpleType2.getMemberTypes();
                int length = memberTypes.getLength();
                for (int i = 0; i < length; i++) {
                    if (checkSimpleDerivation(xSSimpleType, (XSSimpleType) memberTypes.item(i), s)) {
                        return true;
                    }
                }
            }
        }
        return false;
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
        return checkSimpleDerivation(xSSimpleType, (XSSimpleType) xSTypeDefinition, s);
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
            return checkComplexDerivation((XSComplexTypeDecl) xSTypeDefinition, xSTypeDefinition2, s);
        }
        if (xSTypeDefinition2.getTypeCategory() == 15) {
            if (xSTypeDefinition2 != xSComplexTypeDecl) {
                return false;
            }
            xSTypeDefinition2 = xSSimpleType;
        }
        return checkSimpleDerivation((XSSimpleType) xSTypeDefinition, (XSSimpleType) xSTypeDefinition2, s);
    }

    public static void findElemInTable(XSComplexTypeDecl xSComplexTypeDecl, XSElementDecl xSElementDecl, SymbolHash symbolHash) throws XMLSchemaException {
        String str = xSElementDecl.fName + "," + xSElementDecl.fTargetNamespace;
        XSElementDecl xSElementDecl2 = (XSElementDecl) symbolHash.get(str);
        if (xSElementDecl2 == null) {
            symbolHash.put(str, xSElementDecl);
        } else if (xSElementDecl != xSElementDecl2 && xSElementDecl.fType != xSElementDecl2.fType) {
            throw new XMLSchemaException(XmlErrorCodes.ELEM_CONSISTANT, new Object[]{xSComplexTypeDecl.fName, xSElementDecl.fName});
        }
    }

    public static void fullSchemaChecking(XSGrammarBucket xSGrammarBucket, SubstitutionGroupHandler substitutionGroupHandler, CMBuilder cMBuilder, XMLErrorReporter xMLErrorReporter) {
        boolean checkUniqueParticleAttribution;
        SchemaGrammar[] grammars = xSGrammarBucket.getGrammars();
        for (int length = grammars.length - 1; length >= 0; length--) {
            substitutionGroupHandler.addSubstitutionGroup(grammars[length].getSubstitutionGroups());
        }
        XSParticleDecl xSParticleDecl = new XSParticleDecl();
        XSParticleDecl xSParticleDecl2 = new XSParticleDecl();
        xSParticleDecl.fType = (short) 3;
        xSParticleDecl2.fType = (short) 3;
        for (int length2 = grammars.length - 1; length2 >= 0; length2--) {
            XSGroupDecl[] redefinedGroupDecls = grammars[length2].getRedefinedGroupDecls();
            SimpleLocator[] rGLocators = grammars[length2].getRGLocators();
            int i = 0;
            while (i < redefinedGroupDecls.length) {
                int i2 = i + 1;
                XSGroupDecl xSGroupDecl = redefinedGroupDecls[i];
                XSModelGroupImpl xSModelGroupImpl = xSGroupDecl.fModelGroup;
                int i3 = i2 + 1;
                XSModelGroupImpl xSModelGroupImpl2 = redefinedGroupDecls[i2].fModelGroup;
                if (xSModelGroupImpl2 != null) {
                    xSParticleDecl.fValue = xSModelGroupImpl;
                    xSParticleDecl2.fValue = xSModelGroupImpl2;
                    try {
                        particleValidRestriction(xSParticleDecl, substitutionGroupHandler, xSParticleDecl2, substitutionGroupHandler);
                    } catch (XMLSchemaException e) {
                        String key = e.getKey();
                        int i4 = (i3 / 2) - 1;
                        reportSchemaError(xMLErrorReporter, rGLocators[i4], key, e.getArgs());
                        reportSchemaError(xMLErrorReporter, rGLocators[i4], "src-redefine.6.2.2", new Object[]{xSGroupDecl.fName, key});
                    }
                } else if (xSModelGroupImpl != null) {
                    reportSchemaError(xMLErrorReporter, rGLocators[(i3 / 2) - 1], "src-redefine.6.2.2", new Object[]{xSGroupDecl.fName, XmlErrorCodes.PARTICLE_DERIVATION_RECURSE$MAP});
                }
                i = i3;
            }
        }
        SymbolHash symbolHash = new SymbolHash();
        for (int length3 = grammars.length - 1; length3 >= 0; length3--) {
            SchemaGrammar schemaGrammar = grammars[length3];
            boolean z = schemaGrammar.fFullChecked;
            XSComplexTypeDecl[] uncheckedComplexTypeDecls = schemaGrammar.getUncheckedComplexTypeDecls();
            SimpleLocator[] uncheckedCTLocators = grammars[length3].getUncheckedCTLocators();
            int i5 = 0;
            for (int i6 = 0; i6 < uncheckedComplexTypeDecls.length; i6++) {
                if (!z && uncheckedComplexTypeDecls[i6].fParticle != null) {
                    symbolHash.clear();
                    try {
                        XSComplexTypeDecl xSComplexTypeDecl = uncheckedComplexTypeDecls[i6];
                        checkElementDeclsConsistent(xSComplexTypeDecl, xSComplexTypeDecl.fParticle, symbolHash, substitutionGroupHandler);
                    } catch (XMLSchemaException e2) {
                        reportSchemaError(xMLErrorReporter, uncheckedCTLocators[i6], e2.getKey(), e2.getArgs());
                    }
                }
                XSComplexTypeDecl xSComplexTypeDecl2 = uncheckedComplexTypeDecls[i6];
                XSTypeDefinition xSTypeDefinition = xSComplexTypeDecl2.fBaseType;
                if (xSTypeDefinition != null && xSTypeDefinition != SchemaGrammar.fAnyType && xSComplexTypeDecl2.fDerivedBy == 2 && (xSTypeDefinition instanceof XSComplexTypeDecl)) {
                    XSParticleDecl xSParticleDecl3 = xSComplexTypeDecl2.fParticle;
                    XSParticleDecl xSParticleDecl4 = ((XSComplexTypeDecl) xSTypeDefinition).fParticle;
                    if (xSParticleDecl3 == null) {
                        if (xSParticleDecl4 != null && !xSParticleDecl4.emptiable()) {
                            SimpleLocator simpleLocator = uncheckedCTLocators[i6];
                            XSComplexTypeDecl xSComplexTypeDecl3 = uncheckedComplexTypeDecls[i6];
                            reportSchemaError(xMLErrorReporter, simpleLocator, "derivation-ok-restriction.5.3.2", new Object[]{xSComplexTypeDecl3.fName, xSComplexTypeDecl3.fBaseType.getName()});
                        }
                    } else if (xSParticleDecl4 != null) {
                        try {
                            particleValidRestriction(xSParticleDecl3, substitutionGroupHandler, ((XSComplexTypeDecl) xSTypeDefinition).fParticle, substitutionGroupHandler);
                        } catch (XMLSchemaException e3) {
                            reportSchemaError(xMLErrorReporter, uncheckedCTLocators[i6], e3.getKey(), e3.getArgs());
                            reportSchemaError(xMLErrorReporter, uncheckedCTLocators[i6], "derivation-ok-restriction.5.4.2", new Object[]{uncheckedComplexTypeDecls[i6].fName});
                        }
                    } else {
                        reportSchemaError(xMLErrorReporter, uncheckedCTLocators[i6], "derivation-ok-restriction.5.4.2", new Object[]{xSComplexTypeDecl2.fName});
                    }
                }
                XSCMValidator contentModel = uncheckedComplexTypeDecls[i6].getContentModel(cMBuilder);
                if (contentModel != null) {
                    try {
                        checkUniqueParticleAttribution = contentModel.checkUniqueParticleAttribution(substitutionGroupHandler);
                    } catch (XMLSchemaException e4) {
                        reportSchemaError(xMLErrorReporter, uncheckedCTLocators[i6], e4.getKey(), e4.getArgs());
                    }
                    if (!z && checkUniqueParticleAttribution) {
                        uncheckedComplexTypeDecls[i5] = uncheckedComplexTypeDecls[i6];
                        i5++;
                    }
                }
                checkUniqueParticleAttribution = false;
                if (!z) {
                    uncheckedComplexTypeDecls[i5] = uncheckedComplexTypeDecls[i6];
                    i5++;
                }
            }
            if (!z) {
                grammars[length3].setUncheckedTypeNum(i5);
                grammars[length3].fFullChecked = true;
            }
        }
    }

    private static void gatherChildren(int i, XSParticleDecl xSParticleDecl, Vector vector) {
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
        if (i2 != 1 || i3 != 1) {
            vector.addElement(xSParticleDecl);
            return;
        }
        if (i != s) {
            if (xSParticleDecl.isEmpty()) {
                return;
            }
            vector.addElement(xSParticleDecl);
        } else {
            XSModelGroupImpl xSModelGroupImpl = (XSModelGroupImpl) xSParticleDecl.fValue;
            for (int i4 = 0; i4 < xSModelGroupImpl.fParticleCount; i4++) {
                gatherChildren(s, xSModelGroupImpl.fParticles[i4], vector);
            }
        }
    }

    private static XSParticleDecl getNonUnaryGroup(XSParticleDecl xSParticleDecl) {
        XSTerm xSTerm;
        short s = xSParticleDecl.fType;
        return (s == 1 || s == 2 || xSParticleDecl.fMinOccurs != 1 || xSParticleDecl.fMaxOccurs != 1 || (xSTerm = xSParticleDecl.fValue) == null || ((XSModelGroupImpl) xSTerm).fParticleCount != 1) ? xSParticleDecl : getNonUnaryGroup(((XSModelGroupImpl) xSTerm).fParticles[0]);
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

    private static void particleValidRestriction(XSParticleDecl xSParticleDecl, SubstitutionGroupHandler substitutionGroupHandler, XSParticleDecl xSParticleDecl2, SubstitutionGroupHandler substitutionGroupHandler2) throws XMLSchemaException {
        particleValidRestriction(xSParticleDecl, substitutionGroupHandler, xSParticleDecl2, substitutionGroupHandler2, true);
    }

    private static Vector removePointlessChildren(XSParticleDecl xSParticleDecl) {
        short s = xSParticleDecl.fType;
        if (s == 1 || s == 2) {
            return null;
        }
        Vector vector = new Vector();
        XSModelGroupImpl xSModelGroupImpl = (XSModelGroupImpl) xSParticleDecl.fValue;
        for (int i = 0; i < xSModelGroupImpl.fParticleCount; i++) {
            gatherChildren(xSModelGroupImpl.fCompositor, xSModelGroupImpl.fParticles[i], vector);
        }
        return vector;
    }

    public static void reportSchemaError(XMLErrorReporter xMLErrorReporter, SimpleLocator simpleLocator, String str, Object[] objArr) {
        if (simpleLocator != null) {
            xMLErrorReporter.reportError(simpleLocator, "http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 1);
        } else {
            xMLErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void particleValidRestriction(com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl r26, com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler r27, com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl r28, com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler r29, boolean r30) throws com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException {
        /*
            Method dump skipped, instructions count: 740
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.XSConstraints.particleValidRestriction(com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl, com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler, com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl, com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler, boolean):void");
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

    public static boolean overlapUPA(Object obj, Object obj2, SubstitutionGroupHandler substitutionGroupHandler) {
        if (obj instanceof XSElementDecl) {
            if (obj2 instanceof XSElementDecl) {
                return overlapUPA((XSElementDecl) obj, (XSElementDecl) obj2, substitutionGroupHandler);
            }
            return overlapUPA((XSElementDecl) obj, (XSWildcardDecl) obj2, substitutionGroupHandler);
        }
        if (obj2 instanceof XSElementDecl) {
            return overlapUPA((XSElementDecl) obj2, (XSWildcardDecl) obj, substitutionGroupHandler);
        }
        return overlapUPA((XSWildcardDecl) obj, (XSWildcardDecl) obj2);
    }
}
