package org.apache.xerces.impl.p117xs;

import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl;
import org.apache.xerces.impl.p117xs.models.CMBuilder;
import org.apache.xerces.impl.p117xs.models.XSCMValidator;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.XSAttributeUse;
import org.apache.xerces.p118xs.XSComplexTypeDefinition;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSParticle;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.p118xs.XSWildcard;
import org.w3c.dom.TypeInfo;

/* loaded from: classes13.dex */
public class XSComplexTypeDecl implements XSComplexTypeDefinition, TypeInfo {

    /* renamed from: J */
    public static final short f112868J = 4;

    /* renamed from: t */
    public static final int f112869t = 0;

    /* renamed from: u */
    public static final int f112870u = 1;

    /* renamed from: v */
    public static final int f112871v = 2;

    /* renamed from: w */
    public static final int f112872w = 4;

    /* renamed from: x */
    public static final int f112873x = 8;

    /* renamed from: y */
    public static final short f112874y = 1;

    /* renamed from: z */
    public static final short f112875z = 2;

    /* renamed from: e */
    public String f112876e = null;

    /* renamed from: f */
    public String f112877f = null;

    /* renamed from: g */
    public XSTypeDefinition f112878g = null;

    /* renamed from: h */
    public short f112879h = 2;

    /* renamed from: i */
    public short f112880i = 0;

    /* renamed from: j */
    public short f112881j = 0;

    /* renamed from: k */
    public short f112882k = 0;

    /* renamed from: l */
    public XSAttributeGroupDecl f112883l = null;

    /* renamed from: m */
    public short f112884m = 0;

    /* renamed from: n */
    public XSSimpleType f112885n = null;

    /* renamed from: o */
    public XSParticleDecl f112886o = null;

    /* renamed from: p */
    public XSCMValidator f112887p = null;

    /* renamed from: q */
    public XSCMValidator f112888q = null;

    /* renamed from: r */
    public XSObjectListImpl f112889r = null;

    /* renamed from: s */
    public XSNamespaceItem f112890s = null;

    /* renamed from: a */
    public void m70199a(StringBuffer stringBuffer) {
        String[] strArr = {"EMPTY", "SIMPLE", "ELEMENT", "MIXED"};
        String[] strArr2 = {"EMPTY", "EXTENSION", "RESTRICTION"};
        stringBuffer.append("Complex type name='");
        stringBuffer.append(this.f112877f);
        stringBuffer.append(',');
        stringBuffer.append(getTypeName());
        stringBuffer.append("', ");
        if (this.f112878g != null) {
            stringBuffer.append(" base type name='");
            stringBuffer.append(this.f112878g.getName());
            stringBuffer.append("', ");
        }
        stringBuffer.append(" content type='");
        stringBuffer.append(strArr[this.f112884m]);
        stringBuffer.append("', ");
        stringBuffer.append(" isAbstract='");
        stringBuffer.append(getAbstract());
        stringBuffer.append("', ");
        stringBuffer.append(" hasTypeId='");
        stringBuffer.append(containsTypeID());
        stringBuffer.append("', ");
        stringBuffer.append(" final='");
        stringBuffer.append((int) this.f112880i);
        stringBuffer.append("', ");
        stringBuffer.append(" block='");
        stringBuffer.append((int) this.f112881j);
        stringBuffer.append("', ");
        if (this.f112886o != null) {
            stringBuffer.append(" particle='");
            stringBuffer.append(this.f112886o.toString());
            stringBuffer.append("', ");
        }
        stringBuffer.append(" derivedBy='");
        stringBuffer.append(strArr2[this.f112879h]);
        stringBuffer.append("'. ");
    }

    /* renamed from: b */
    public final boolean m70200b(String str, String str2, int i, XSTypeDefinition xSTypeDefinition) {
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
            if (m70202d(str, str2, i, xSTypeDefinition) || !m70201c(str, str2, i, xSTypeDefinition)) {
                return true;
            }
            xSTypeDefinition2 = xSTypeDefinition;
            xSTypeDefinition = xSTypeDefinition.getBaseType();
        }
        return false;
    }

    /* renamed from: c */
    public final boolean m70201c(String str, String str2, int i, XSTypeDefinition xSTypeDefinition) {
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
                XSSimpleTypeDecl xSSimpleTypeDecl = (XSSimpleTypeDecl) xSTypeDefinition;
                return ((i & 2) != 0 ? xSSimpleTypeDecl.isDOMDerivedFrom(str, str2, i & 1) : xSSimpleTypeDecl.isDOMDerivedFrom(str, str2, i)) & z;
            }
            if (((XSComplexTypeDecl) xSTypeDefinition).getDerivationMethod() == 1) {
                z |= true;
            }
            xSTypeDefinition2 = xSTypeDefinition;
            xSTypeDefinition = xSTypeDefinition.getBaseType();
        }
        return false;
    }

    public boolean containsTypeID() {
        return (this.f112882k & 2) != 0;
    }

    /* renamed from: d */
    public final boolean m70202d(String str, String str2, int i, XSTypeDefinition xSTypeDefinition) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.apache.xerces.impl.xs.XSComplexTypeDecl] */
    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.xerces.xs.XSTypeDefinition, org.apache.xerces.xs.XSObject] */
    /* JADX WARN: Type inference failed for: r2v2, types: [org.apache.xerces.xs.XSTypeDefinition] */
    @Override // org.apache.xerces.p118xs.XSTypeDefinition
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

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001d, code lost:
    
        return true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.xerces.xs.XSTypeDefinition] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean derivedFromType(org.apache.xerces.p118xs.XSTypeDefinition r3, short r4) {
        /*
            r2 = this;
            r4 = 0
            if (r3 != 0) goto L4
            return r4
        L4:
            org.apache.xerces.impl.xs.XSComplexTypeDecl r0 = org.apache.xerces.impl.p117xs.SchemaGrammar.fAnyType
            r1 = 1
            if (r3 != r0) goto La
            return r1
        La:
            if (r2 == r3) goto L1a
            org.apache.xerces.impl.dv.XSSimpleType r0 = org.apache.xerces.impl.p117xs.SchemaGrammar.fAnySimpleType
            if (r2 == r0) goto L1a
            org.apache.xerces.impl.xs.XSComplexTypeDecl r0 = org.apache.xerces.impl.p117xs.SchemaGrammar.fAnyType
            if (r2 != r0) goto L15
            goto L1a
        L15:
            org.apache.xerces.xs.XSTypeDefinition r2 = r2.getBaseType()
            goto La
        L1a:
            if (r2 != r3) goto L1d
            r4 = r1
        L1d:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.XSComplexTypeDecl.derivedFromType(org.apache.xerces.xs.XSTypeDefinition, short):boolean");
    }

    /* renamed from: e */
    public void m70203e(XSNamespaceItem xSNamespaceItem) {
        this.f112890s = xSNamespaceItem;
    }

    @Override // org.apache.xerces.p118xs.XSComplexTypeDefinition
    public boolean getAbstract() {
        return (this.f112882k & 1) != 0;
    }

    @Override // org.apache.xerces.p118xs.XSComplexTypeDefinition
    public XSObjectList getAnnotations() {
        XSObjectListImpl xSObjectListImpl = this.f112889r;
        return xSObjectListImpl != null ? xSObjectListImpl : XSObjectListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public boolean getAnonymous() {
        return (this.f112882k & 4) != 0;
    }

    public XSAttributeGroupDecl getAttrGrp() {
        return this.f112883l;
    }

    public XSAttributeUse getAttributeUse(String str, String str2) {
        return this.f112883l.getAttributeUse(str, str2);
    }

    @Override // org.apache.xerces.p118xs.XSComplexTypeDefinition
    public XSObjectList getAttributeUses() {
        return this.f112883l.getAttributeUses();
    }

    @Override // org.apache.xerces.p118xs.XSComplexTypeDefinition
    public XSWildcard getAttributeWildcard() {
        return this.f112883l.getAttributeWildcard();
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public XSTypeDefinition getBaseType() {
        return this.f112878g;
    }

    public XSCMValidator getContentModel(CMBuilder cMBuilder) {
        return getContentModel(cMBuilder, false);
    }

    @Override // org.apache.xerces.p118xs.XSComplexTypeDefinition
    public short getContentType() {
        return this.f112884m;
    }

    @Override // org.apache.xerces.p118xs.XSComplexTypeDefinition
    public short getDerivationMethod() {
        return this.f112879h;
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public short getFinal() {
        return this.f112880i;
    }

    public short getFinalSet() {
        return this.f112880i;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getName() {
        if (getAnonymous()) {
            return null;
        }
        return this.f112876e;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getNamespace() {
        return this.f112877f;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return this.f112890s;
    }

    @Override // org.apache.xerces.p118xs.XSComplexTypeDefinition
    public XSParticle getParticle() {
        return this.f112886o;
    }

    @Override // org.apache.xerces.p118xs.XSComplexTypeDefinition
    public short getProhibitedSubstitutions() {
        return this.f112881j;
    }

    @Override // org.apache.xerces.p118xs.XSComplexTypeDefinition
    public XSSimpleTypeDefinition getSimpleType() {
        return this.f112885n;
    }

    public String getTargetNamespace() {
        return this.f112877f;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return (short) 3;
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public short getTypeCategory() {
        return (short) 15;
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeName() {
        return this.f112876e;
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
        if (i2 != 0 && m70202d(str, str2, i, this)) {
            return true;
        }
        int i3 = i & 2;
        if (i3 != 0 && m70201c(str, str2, i, this)) {
            return true;
        }
        int i4 = i & 8;
        if ((i4 != 0 || (i & 4) != 0) && i2 == 0 && i3 == 0) {
            String str3 = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            if (str.equals(str3) && str2.equals("anyType")) {
                str2 = "anySimpleType";
            }
            if (!this.f112876e.equals("anyType") || !this.f112877f.equals(str3)) {
                XSTypeDefinition xSTypeDefinition = this.f112878g;
                if (xSTypeDefinition != null && (xSTypeDefinition instanceof XSSimpleTypeDecl)) {
                    return ((XSSimpleTypeDecl) xSTypeDefinition).isDOMDerivedFrom(str, str2, i);
                }
                if (xSTypeDefinition != null && (xSTypeDefinition instanceof XSComplexTypeDecl)) {
                    return ((XSComplexTypeDecl) xSTypeDefinition).isDOMDerivedFrom(str, str2, i);
                }
            }
        }
        if (i3 == 0 && i2 == 0 && i4 == 0 && (i & 4) == 0) {
            return m70200b(str, str2, i, this);
        }
        return false;
    }

    @Override // org.w3c.dom.TypeInfo
    public boolean isDerivedFrom(String str, String str2, int i) {
        return isDOMDerivedFrom(str, str2, i);
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public boolean isFinal(short s) {
        return (this.f112880i & s) != 0;
    }

    @Override // org.apache.xerces.p118xs.XSComplexTypeDefinition
    public boolean isProhibitedSubstitution(short s) {
        return (this.f112881j & s) != 0;
    }

    public void reset() {
        this.f112876e = null;
        this.f112877f = null;
        this.f112878g = null;
        this.f112879h = (short) 2;
        this.f112880i = (short) 0;
        this.f112881j = (short) 0;
        this.f112882k = (short) 0;
        this.f112883l.reset();
        this.f112884m = (short) 0;
        this.f112885n = null;
        this.f112886o = null;
        this.f112887p = null;
        this.f112888q = null;
        XSObjectListImpl xSObjectListImpl = this.f112889r;
        if (xSObjectListImpl != null) {
            xSObjectListImpl.clearXSObjectList();
        }
        this.f112889r = null;
    }

    public void setContainsTypeID() {
        this.f112882k = (short) (this.f112882k | 2);
    }

    public void setIsAbstractType() {
        this.f112882k = (short) (this.f112882k | 1);
    }

    public void setIsAnonymous() {
        this.f112882k = (short) (this.f112882k | 4);
    }

    public void setName(String str) {
        this.f112876e = str;
    }

    public void setValues(String str, String str2, XSTypeDefinition xSTypeDefinition, short s, short s2, short s3, short s4, boolean z, XSAttributeGroupDecl xSAttributeGroupDecl, XSSimpleType xSSimpleType, XSParticleDecl xSParticleDecl, XSObjectListImpl xSObjectListImpl) {
        this.f112877f = str2;
        this.f112878g = xSTypeDefinition;
        this.f112879h = s;
        this.f112880i = s2;
        this.f112881j = s3;
        this.f112884m = s4;
        if (z) {
            this.f112882k = (short) (this.f112882k | 1);
        }
        this.f112883l = xSAttributeGroupDecl;
        this.f112885n = xSSimpleType;
        this.f112886o = xSParticleDecl;
        this.f112889r = xSObjectListImpl;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        m70199a(stringBuffer);
        return stringBuffer.toString();
    }

    public synchronized XSCMValidator getContentModel(CMBuilder cMBuilder, boolean z) {
        if (this.f112887p == null) {
            if (z) {
                if (this.f112888q == null) {
                    XSCMValidator contentModel = cMBuilder.getContentModel(this, true);
                    this.f112888q = contentModel;
                    if (contentModel != null && !contentModel.isCompactedForUPA()) {
                        this.f112887p = this.f112888q;
                    }
                }
                return this.f112888q;
            }
            this.f112887p = cMBuilder.getContentModel(this, false);
        }
        return this.f112887p;
    }
}
