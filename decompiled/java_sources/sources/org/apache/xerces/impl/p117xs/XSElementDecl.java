package org.apache.xerces.impl.p117xs;

import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p117xs.identity.IdentityConstraint;
import org.apache.xerces.impl.p117xs.util.XSNamedMapImpl;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.XSAnnotation;
import org.apache.xerces.p118xs.XSComplexTypeDefinition;
import org.apache.xerces.p118xs.XSElementDeclaration;
import org.apache.xerces.p118xs.XSNamedMap;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.p118xs.XSValue;
import org.apache.xerces.xni.QName;

/* loaded from: classes13.dex */
public class XSElementDecl implements XSElementDeclaration {
    public static final short SCOPE_ABSENT = 0;
    public static final short SCOPE_GLOBAL = 1;
    public static final short SCOPE_LOCAL = 2;

    /* renamed from: k */
    public static final int f112914k = 2;

    /* renamed from: l */
    public static final short f112915l = 3;

    /* renamed from: m */
    public static final short f112916m = 4;

    /* renamed from: n */
    public static final short f112917n = 8;
    public String fName = null;
    public String fTargetNamespace = null;
    public XSTypeDefinition fType = null;
    public QName fUnresolvedTypeName = null;

    /* renamed from: e */
    public short f112918e = 0;
    public short fScope = 0;

    /* renamed from: f */
    public XSComplexTypeDecl f112919f = null;
    public short fBlock = 0;
    public short fFinal = 0;
    public XSObjectList fAnnotations = null;
    public ValidatedInfo fDefault = null;
    public XSElementDecl fSubGroup = null;

    /* renamed from: g */
    public int f112920g = 0;

    /* renamed from: h */
    public IdentityConstraint[] f112921h = new IdentityConstraint[2];

    /* renamed from: i */
    public XSNamespaceItem f112922i = null;

    /* renamed from: j */
    public String f112923j = null;

    /* renamed from: a */
    public static final IdentityConstraint[] m70237a(IdentityConstraint[] identityConstraintArr, int i) {
        IdentityConstraint[] identityConstraintArr2 = new IdentityConstraint[i];
        System.arraycopy(identityConstraintArr, 0, identityConstraintArr2, 0, Math.min(identityConstraintArr.length, i));
        return identityConstraintArr2;
    }

    public void addIDConstraint(IdentityConstraint identityConstraint) {
        int i = this.f112920g;
        IdentityConstraint[] identityConstraintArr = this.f112921h;
        if (i == identityConstraintArr.length) {
            this.f112921h = m70237a(identityConstraintArr, i * 2);
        }
        IdentityConstraint[] identityConstraintArr2 = this.f112921h;
        int i2 = this.f112920g;
        this.f112920g = i2 + 1;
        identityConstraintArr2[i2] = identityConstraint;
    }

    /* renamed from: b */
    public void m70238b(XSNamespaceItem xSNamespaceItem) {
        this.f112922i = xSNamespaceItem;
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public boolean getAbstract() {
        return (this.f112918e & 8) != 0;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public Object getActualVC() {
        if (getConstraintType() == 0) {
            return null;
        }
        return this.fDefault.actualValue;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public short getActualVCType() {
        if (getConstraintType() == 0) {
            return (short) 45;
        }
        return this.fDefault.actualValueType;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public XSAnnotation getAnnotation() {
        XSObjectList xSObjectList = this.fAnnotations;
        if (xSObjectList != null) {
            return (XSAnnotation) xSObjectList.item(0);
        }
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public XSObjectList getAnnotations() {
        XSObjectList xSObjectList = this.fAnnotations;
        return xSObjectList != null ? xSObjectList : XSObjectListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public short getConstraintType() {
        return (short) (this.f112918e & 3);
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public String getConstraintValue() {
        if (getConstraintType() == 0) {
            return null;
        }
        return this.fDefault.stringValue();
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public short getDisallowedSubstitutions() {
        return this.fBlock;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public XSComplexTypeDefinition getEnclosingCTDefinition() {
        return this.f112919f;
    }

    public IdentityConstraint[] getIDConstraints() {
        int i = this.f112920g;
        if (i == 0) {
            return null;
        }
        IdentityConstraint[] identityConstraintArr = this.f112921h;
        if (i < identityConstraintArr.length) {
            this.f112921h = m70237a(identityConstraintArr, i);
        }
        return this.f112921h;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public XSNamedMap getIdentityConstraints() {
        return new XSNamedMapImpl(this.f112921h, this.f112920g);
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public ShortList getItemValueTypes() {
        if (getConstraintType() == 0) {
            return null;
        }
        return this.fDefault.itemValueTypes;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getName() {
        return this.fName;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getNamespace() {
        return this.fTargetNamespace;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return this.f112922i;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public boolean getNillable() {
        return (this.f112918e & 4) != 0;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public short getScope() {
        return this.fScope;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public XSElementDeclaration getSubstitutionGroupAffiliation() {
        return this.fSubGroup;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public short getSubstitutionGroupExclusions() {
        return this.fFinal;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return (short) 2;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public XSTypeDefinition getTypeDefinition() {
        return this.fType;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public XSValue getValueConstraintValue() {
        return this.fDefault;
    }

    public int hashCode() {
        int hashCode = this.fName.hashCode();
        String str = this.fTargetNamespace;
        return str != null ? (hashCode << 16) + str.hashCode() : hashCode;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public boolean isDisallowedSubstitution(short s) {
        return (this.fBlock & s) != 0;
    }

    @Override // org.apache.xerces.p118xs.XSElementDeclaration
    public boolean isSubstitutionGroupExclusion(short s) {
        return (this.fFinal & s) != 0;
    }

    public void reset() {
        this.fScope = (short) 0;
        this.fName = null;
        this.fTargetNamespace = null;
        this.fType = null;
        this.fUnresolvedTypeName = null;
        this.f112918e = (short) 0;
        this.fBlock = (short) 0;
        this.fFinal = (short) 0;
        this.fDefault = null;
        this.fAnnotations = null;
        this.fSubGroup = null;
        for (int i = 0; i < this.f112920g; i++) {
            this.f112921h[i] = null;
        }
        this.f112920g = 0;
    }

    public void setConstraintType(short s) {
        short s2 = this.f112918e;
        this.f112918e = (short) ((s & 3) | ((short) (s2 ^ (s2 & 3))));
    }

    public void setIsAbstract() {
        this.f112918e = (short) (this.f112918e | 8);
    }

    public void setIsGlobal() {
        this.fScope = (short) 1;
    }

    public void setIsLocal(XSComplexTypeDecl xSComplexTypeDecl) {
        this.fScope = (short) 2;
        this.f112919f = xSComplexTypeDecl;
    }

    public void setIsNillable() {
        this.f112918e = (short) (this.f112918e | 4);
    }

    public String toString() {
        String str;
        if (this.f112923j == null) {
            String str2 = this.fTargetNamespace;
            if (str2 != null) {
                int length = str2.length();
                String str3 = this.fName;
                StringBuffer stringBuffer = new StringBuffer(length + (str3 != null ? str3.length() : 4) + 3);
                stringBuffer.append('\"');
                stringBuffer.append(this.fTargetNamespace);
                stringBuffer.append('\"');
                stringBuffer.append(':');
                stringBuffer.append(this.fName);
                str = stringBuffer.toString();
            } else {
                str = this.fName;
            }
            this.f112923j = str;
        }
        return this.f112923j;
    }
}
