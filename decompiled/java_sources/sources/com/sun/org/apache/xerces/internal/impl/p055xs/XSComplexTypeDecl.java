package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.XSSimpleTypeDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.models.CMBuilder;
import com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XSObjectListImpl;
import com.sun.org.apache.xerces.internal.p056xs.XSAttributeUse;
import com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.p056xs.XSParticle;
import com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSWildcard;
import org.w3c.dom.TypeInfo;

/* loaded from: classes10.dex */
public class XSComplexTypeDecl implements XSComplexTypeDefinition, TypeInfo {
    private static final short CT_HAS_TYPE_ID = 2;
    private static final short CT_IS_ABSTRACT = 1;
    private static final short CT_IS_ANONYMOUS = 4;
    static final int DERIVATION_ANY = 0;
    static final int DERIVATION_EXTENSION = 2;
    static final int DERIVATION_LIST = 8;
    static final int DERIVATION_RESTRICTION = 1;
    static final int DERIVATION_UNION = 4;
    String fName = null;
    String fTargetNamespace = null;
    XSTypeDefinition fBaseType = null;
    short fDerivedBy = 2;
    short fFinal = 0;
    short fBlock = 0;
    short fMiscFlags = 0;
    XSAttributeGroupDecl fAttrGrp = null;
    short fContentType = 0;
    XSSimpleType fXSSimpleType = null;
    XSParticleDecl fParticle = null;
    XSCMValidator fCMValidator = null;
    XSObjectListImpl fAnnotations = null;

    private boolean isDerivedByAny(String str, String str2, int i, XSTypeDefinition xSTypeDefinition) {
        XSTypeDefinition xSTypeDefinition2 = null;
        while (xSTypeDefinition != null && xSTypeDefinition != xSTypeDefinition2) {
            if (str2.equals(xSTypeDefinition.getName())) {
                if (str == null && xSTypeDefinition.getNamespace() == null) {
                    return true;
                }
                if (str != null && str.equals(xSTypeDefinition.getNamespace())) {
                    return true;
                }
            }
            if (isDerivedByRestriction(str, str2, i, xSTypeDefinition) || !isDerivedByExtension(str, str2, i, xSTypeDefinition)) {
                return true;
            }
            xSTypeDefinition2 = xSTypeDefinition;
            xSTypeDefinition = xSTypeDefinition.getBaseType();
        }
        return false;
    }

    private boolean isDerivedByExtension(String str, String str2, int i, XSTypeDefinition xSTypeDefinition) {
        XSTypeDefinition xSTypeDefinition2 = null;
        boolean z = false;
        while (xSTypeDefinition != null && xSTypeDefinition != xSTypeDefinition2) {
            if (str != null) {
                String str3 = SchemaSymbols.URI_SCHEMAFORSCHEMA;
                if (str.equals(str3) && str2.equals("anySimpleType") && str3.equals(xSTypeDefinition.getNamespace()) && "anyType".equals(xSTypeDefinition.getName())) {
                    break;
                }
            }
            if (str2.equals(xSTypeDefinition.getName()) && ((str == null && xSTypeDefinition.getNamespace() == null) || (str != null && str.equals(xSTypeDefinition.getNamespace())))) {
                return z;
            }
            if (xSTypeDefinition instanceof XSSimpleTypeDecl) {
                if (str.equals(SchemaSymbols.URI_SCHEMAFORSCHEMA) && str2.equals("anyType")) {
                    str2 = "anySimpleType";
                }
                return ((i & 2) != 0 ? ((XSSimpleTypeDecl) xSTypeDefinition).isDOMDerivedFrom(str, str2, i & 1) : ((XSSimpleTypeDecl) xSTypeDefinition).isDOMDerivedFrom(str, str2, i)) & z;
            }
            if (((XSComplexTypeDecl) xSTypeDefinition).getDerivationMethod() == 1) {
                z |= true;
            }
            xSTypeDefinition2 = xSTypeDefinition;
            xSTypeDefinition = xSTypeDefinition.getBaseType();
        }
        return false;
    }

    private boolean isDerivedByRestriction(String str, String str2, int i, XSTypeDefinition xSTypeDefinition) {
        XSTypeDefinition xSTypeDefinition2 = null;
        while (xSTypeDefinition != null && xSTypeDefinition != xSTypeDefinition2) {
            if (str != null && str.equals(SchemaSymbols.URI_SCHEMAFORSCHEMA) && str2.equals("anySimpleType")) {
                return false;
            }
            if (str2.equals(xSTypeDefinition.getName()) && str != null && str.equals(xSTypeDefinition.getNamespace())) {
                return true;
            }
            if (xSTypeDefinition.getNamespace() == null && str == null) {
                return true;
            }
            if (xSTypeDefinition instanceof XSSimpleTypeDecl) {
                if (str.equals(SchemaSymbols.URI_SCHEMAFORSCHEMA) && str2.equals("anyType")) {
                    str2 = "anySimpleType";
                }
                return ((XSSimpleTypeDecl) xSTypeDefinition).isDOMDerivedFrom(str, str2, i);
            }
            if (((XSComplexTypeDecl) xSTypeDefinition).getDerivationMethod() != 2) {
                return false;
            }
            XSTypeDefinition xSTypeDefinition3 = xSTypeDefinition;
            xSTypeDefinition = xSTypeDefinition.getBaseType();
            xSTypeDefinition2 = xSTypeDefinition3;
        }
        return false;
    }

    public void appendTypeInfo(StringBuffer stringBuffer) {
        String[] strArr = {"EMPTY", "SIMPLE", "ELEMENT", "MIXED"};
        String[] strArr2 = {"EMPTY", "EXTENSION", "RESTRICTION"};
        stringBuffer.append("Complex type name='" + this.fTargetNamespace + "," + getTypeName() + "', ");
        if (this.fBaseType != null) {
            stringBuffer.append(" base type name='" + this.fBaseType.getName() + "', ");
        }
        stringBuffer.append(" content type='" + strArr[this.fContentType] + "', ");
        stringBuffer.append(" isAbstract='" + getAbstract() + "', ");
        stringBuffer.append(" hasTypeId='" + containsTypeID() + "', ");
        stringBuffer.append(" final='" + ((int) this.fFinal) + "', ");
        stringBuffer.append(" block='" + ((int) this.fBlock) + "', ");
        if (this.fParticle != null) {
            stringBuffer.append(" particle='" + this.fParticle.toString() + "', ");
        }
        stringBuffer.append(" derivedBy='" + strArr2[this.fDerivedBy] + "'. ");
    }

    public boolean containsTypeID() {
        return (this.fMiscFlags & 2) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, com.sun.org.apache.xerces.internal.xs.XSObject] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.sun.org.apache.xerces.internal.xs.XSTypeDefinition] */
    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public boolean derivedFrom(String str, String str2, short s) {
        if (str2 == null) {
            return false;
        }
        if (str != null && str.equals(SchemaSymbols.URI_SCHEMAFORSCHEMA) && str2.equals("anyType")) {
            return true;
        }
        while (true) {
            if ((!str2.equals(this.getName()) || ((str != null || this.getNamespace() != null) && (str == null || !str.equals(this.getNamespace())))) && this != SchemaGrammar.fAnySimpleType && this != SchemaGrammar.fAnyType) {
                this = this.getBaseType();
            }
        }
        return (this == SchemaGrammar.fAnySimpleType || this == SchemaGrammar.fAnyType) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001c, code lost:
    
        return true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.sun.org.apache.xerces.internal.xs.XSTypeDefinition] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean derivedFromType(com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition r3, short r4) {
        /*
            r2 = this;
            r4 = 0
            if (r3 != 0) goto L4
            return r4
        L4:
            com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl r0 = com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar.fAnyType
            r1 = 1
            if (r3 != r0) goto La
            return r1
        La:
            if (r2 == r3) goto L19
            com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType r0 = com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar.fAnySimpleType
            if (r2 == r0) goto L19
            com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl r0 = com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar.fAnyType
            if (r2 == r0) goto L19
            com.sun.org.apache.xerces.internal.xs.XSTypeDefinition r2 = r2.getBaseType()
            goto La
        L19:
            if (r2 != r3) goto L1c
            r4 = r1
        L1c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl.derivedFromType(com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, short):boolean");
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
    public boolean getAbstract() {
        return (this.fMiscFlags & 1) != 0;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
    public XSObjectList getAnnotations() {
        return this.fAnnotations;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public boolean getAnonymous() {
        return (this.fMiscFlags & 4) != 0;
    }

    public XSAttributeGroupDecl getAttrGrp() {
        return this.fAttrGrp;
    }

    public XSAttributeUse getAttributeUse(String str, String str2) {
        return this.fAttrGrp.getAttributeUse(str, str2);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
    public XSObjectList getAttributeUses() {
        return this.fAttrGrp.getAttributeUses();
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
    public XSWildcard getAttributeWildcard() {
        return this.fAttrGrp.getAttributeWildcard();
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public XSTypeDefinition getBaseType() {
        return this.fBaseType;
    }

    public synchronized XSCMValidator getContentModel(CMBuilder cMBuilder) {
        if (this.fCMValidator == null) {
            this.fCMValidator = cMBuilder.getContentModel(this);
        }
        return this.fCMValidator;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
    public short getContentType() {
        return this.fContentType;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
    public short getDerivationMethod() {
        return this.fDerivedBy;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public short getFinal() {
        return this.fFinal;
    }

    public short getFinalSet() {
        return this.fFinal;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getName() {
        if (getAnonymous()) {
            return null;
        }
        return this.fName;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getNamespace() {
        return this.fTargetNamespace;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
    public XSParticle getParticle() {
        return this.fParticle;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
    public short getProhibitedSubstitutions() {
        return this.fBlock;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
    public XSSimpleTypeDefinition getSimpleType() {
        return this.fXSSimpleType;
    }

    public String getTargetNamespace() {
        return this.fTargetNamespace;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public short getType() {
        return (short) 3;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public short getTypeCategory() {
        return (short) 15;
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeName() {
        return this.fName;
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeNamespace() {
        return getNamespace();
    }

    public boolean isDOMDerivedFrom(String str, String str2, int i) {
        if (str2 == null) {
            return false;
        }
        if (str != null && str.equals(SchemaSymbols.URI_SCHEMAFORSCHEMA) && str2.equals("anyType") && i == 1 && i == 2) {
            return true;
        }
        int i2 = i & 1;
        if (i2 != 0 && isDerivedByRestriction(str, str2, i, this)) {
            return true;
        }
        int i3 = i & 2;
        if (i3 != 0 && isDerivedByExtension(str, str2, i, this)) {
            return true;
        }
        int i4 = i & 8;
        if ((i4 != 0 || (i & 4) != 0) && i2 == 0 && i3 == 0) {
            String str3 = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            if (str.equals(str3) && str2.equals("anyType")) {
                str2 = "anySimpleType";
            }
            if (!this.fName.equals("anyType") || !this.fTargetNamespace.equals(str3)) {
                XSTypeDefinition xSTypeDefinition = this.fBaseType;
                if (xSTypeDefinition != null && (xSTypeDefinition instanceof XSSimpleTypeDecl)) {
                    return ((XSSimpleTypeDecl) xSTypeDefinition).isDOMDerivedFrom(str, str2, i);
                }
                if (xSTypeDefinition != null && (xSTypeDefinition instanceof XSComplexTypeDecl)) {
                    return ((XSComplexTypeDecl) xSTypeDefinition).isDOMDerivedFrom(str, str2, i);
                }
            }
        }
        if (i3 == 0 && i2 == 0 && i4 == 0 && (i & 4) == 0) {
            return isDerivedByAny(str, str2, i, this);
        }
        return false;
    }

    @Override // org.w3c.dom.TypeInfo
    public boolean isDerivedFrom(String str, String str2, int i) {
        return isDOMDerivedFrom(str, str2, i);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public boolean isFinal(short s) {
        return (this.fFinal & s) != 0;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
    public boolean isProhibitedSubstitution(short s) {
        return (this.fBlock & s) != 0;
    }

    public void reset() {
        this.fName = null;
        this.fTargetNamespace = null;
        this.fBaseType = null;
        this.fDerivedBy = (short) 2;
        this.fFinal = (short) 0;
        this.fBlock = (short) 0;
        this.fMiscFlags = (short) 0;
        this.fAttrGrp.reset();
        this.fContentType = (short) 0;
        this.fXSSimpleType = null;
        this.fParticle = null;
        this.fCMValidator = null;
        XSObjectListImpl xSObjectListImpl = this.fAnnotations;
        if (xSObjectListImpl != null) {
            xSObjectListImpl.clear();
        }
        this.fAnnotations = null;
    }

    public void setContainsTypeID() {
        this.fMiscFlags = (short) (this.fMiscFlags | 2);
    }

    public void setIsAbstractType() {
        this.fMiscFlags = (short) (this.fMiscFlags | 1);
    }

    public void setIsAnonymous() {
        this.fMiscFlags = (short) (this.fMiscFlags | 4);
    }

    public void setName(String str) {
        this.fName = str;
    }

    public void setValues(String str, String str2, XSTypeDefinition xSTypeDefinition, short s, short s2, short s3, short s4, boolean z, XSAttributeGroupDecl xSAttributeGroupDecl, XSSimpleType xSSimpleType, XSParticleDecl xSParticleDecl, XSObjectListImpl xSObjectListImpl) {
        this.fTargetNamespace = str2;
        this.fBaseType = xSTypeDefinition;
        this.fDerivedBy = s;
        this.fFinal = s2;
        this.fBlock = s3;
        this.fContentType = s4;
        if (z) {
            this.fMiscFlags = (short) (this.fMiscFlags | 1);
        }
        this.fAttrGrp = xSAttributeGroupDecl;
        this.fXSSimpleType = xSSimpleType;
        this.fParticle = xSParticleDecl;
        this.fAnnotations = xSObjectListImpl;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        appendTypeInfo(stringBuffer);
        return stringBuffer.toString();
    }
}
