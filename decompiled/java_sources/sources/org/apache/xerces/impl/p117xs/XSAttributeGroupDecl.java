package org.apache.xerces.impl.p117xs;

import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.XSAnnotation;
import org.apache.xerces.p118xs.XSAttributeGroupDefinition;
import org.apache.xerces.p118xs.XSAttributeUse;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSWildcard;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes13.dex */
public class XSAttributeGroupDecl implements XSAttributeGroupDefinition {

    /* renamed from: h */
    public static final int f112864h = 5;
    public XSObjectList fAnnotations;
    public String fName = null;
    public String fTargetNamespace = null;

    /* renamed from: e */
    public int f112865e = 0;

    /* renamed from: f */
    public XSAttributeUseImpl[] f112866f = new XSAttributeUseImpl[5];
    public XSWildcardDecl fAttributeWC = null;
    public String fIDAttrName = null;
    protected XSObjectListImpl fAttrUses = null;

    /* renamed from: g */
    public XSNamespaceItem f112867g = null;

    /* renamed from: a */
    public static final XSAttributeUseImpl[] m70197a(XSAttributeUseImpl[] xSAttributeUseImplArr, int i) {
        XSAttributeUseImpl[] xSAttributeUseImplArr2 = new XSAttributeUseImpl[i];
        System.arraycopy(xSAttributeUseImplArr, 0, xSAttributeUseImplArr2, 0, Math.min(xSAttributeUseImplArr.length, i));
        return xSAttributeUseImplArr2;
    }

    public String addAttributeUse(XSAttributeUseImpl xSAttributeUseImpl) {
        if (xSAttributeUseImpl.fUse != 2 && xSAttributeUseImpl.fAttrDecl.f112857g.isIDType()) {
            String str = this.fIDAttrName;
            if (str != null) {
                return str;
            }
            this.fIDAttrName = xSAttributeUseImpl.fAttrDecl.f112855e;
        }
        int i = this.f112865e;
        XSAttributeUseImpl[] xSAttributeUseImplArr = this.f112866f;
        if (i == xSAttributeUseImplArr.length) {
            this.f112866f = m70197a(xSAttributeUseImplArr, i * 2);
        }
        XSAttributeUseImpl[] xSAttributeUseImplArr2 = this.f112866f;
        int i2 = this.f112865e;
        this.f112865e = i2 + 1;
        xSAttributeUseImplArr2[i2] = xSAttributeUseImpl;
        return null;
    }

    /* renamed from: b */
    public void m70198b(XSNamespaceItem xSNamespaceItem) {
        this.f112867g = xSNamespaceItem;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeGroupDefinition
    public XSAnnotation getAnnotation() {
        XSObjectList xSObjectList = this.fAnnotations;
        if (xSObjectList != null) {
            return (XSAnnotation) xSObjectList.item(0);
        }
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeGroupDefinition
    public XSObjectList getAnnotations() {
        XSObjectList xSObjectList = this.fAnnotations;
        return xSObjectList != null ? xSObjectList : XSObjectListImpl.EMPTY_LIST;
    }

    public XSAttributeUse getAttributeUse(String str, String str2) {
        for (int i = 0; i < this.f112865e; i++) {
            XSAttributeUseImpl xSAttributeUseImpl = this.f112866f[i];
            XSAttributeDecl xSAttributeDecl = xSAttributeUseImpl.fAttrDecl;
            if (xSAttributeDecl.f112856f == str && xSAttributeDecl.f112855e == str2) {
                return xSAttributeUseImpl;
            }
        }
        return null;
    }

    public XSAttributeUse getAttributeUseNoProhibited(String str, String str2) {
        for (int i = 0; i < this.f112865e; i++) {
            XSAttributeUseImpl xSAttributeUseImpl = this.f112866f[i];
            XSAttributeDecl xSAttributeDecl = xSAttributeUseImpl.fAttrDecl;
            if (xSAttributeDecl.f112856f == str && xSAttributeDecl.f112855e == str2 && xSAttributeUseImpl.fUse != 2) {
                return xSAttributeUseImpl;
            }
        }
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeGroupDefinition
    public XSObjectList getAttributeUses() {
        if (this.fAttrUses == null) {
            this.fAttrUses = this.f112865e > 0 ? new XSObjectListImpl(this.f112866f, this.f112865e) : XSObjectListImpl.EMPTY_LIST;
        }
        return this.fAttrUses;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeGroupDefinition
    public XSWildcard getAttributeWildcard() {
        return this.fAttributeWC;
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
        return this.f112867g;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return (short) 5;
    }

    public void removeProhibitedAttrs() {
        int i = this.f112865e;
        if (i == 0) {
            return;
        }
        XSAttributeUseImpl[] xSAttributeUseImplArr = new XSAttributeUseImpl[i];
        int i2 = 0;
        for (int i3 = 0; i3 < this.f112865e; i3++) {
            XSAttributeUseImpl xSAttributeUseImpl = this.f112866f[i3];
            if (xSAttributeUseImpl.fUse != 2) {
                xSAttributeUseImplArr[i2] = xSAttributeUseImpl;
                i2++;
            }
        }
        this.f112866f = xSAttributeUseImplArr;
        this.f112865e = i2;
    }

    public void replaceAttributeUse(XSAttributeUse xSAttributeUse, XSAttributeUseImpl xSAttributeUseImpl) {
        for (int i = 0; i < this.f112865e; i++) {
            XSAttributeUseImpl[] xSAttributeUseImplArr = this.f112866f;
            if (xSAttributeUseImplArr[i] == xSAttributeUse) {
                xSAttributeUseImplArr[i] = xSAttributeUseImpl;
            }
        }
    }

    public void reset() {
        this.fName = null;
        this.fTargetNamespace = null;
        for (int i = 0; i < this.f112865e; i++) {
            this.f112866f[i] = null;
        }
        this.f112865e = 0;
        this.fAttributeWC = null;
        this.fAnnotations = null;
        this.fIDAttrName = null;
    }

    public Object[] validRestrictionOf(String str, XSAttributeGroupDecl xSAttributeGroupDecl) {
        for (int i = 0; i < this.f112865e; i++) {
            XSAttributeUseImpl xSAttributeUseImpl = this.f112866f[i];
            XSAttributeDecl xSAttributeDecl = xSAttributeUseImpl.fAttrDecl;
            XSAttributeUseImpl xSAttributeUseImpl2 = (XSAttributeUseImpl) xSAttributeGroupDecl.getAttributeUse(xSAttributeDecl.f112856f, xSAttributeDecl.f112855e);
            if (xSAttributeUseImpl2 == null) {
                XSWildcardDecl xSWildcardDecl = xSAttributeGroupDecl.fAttributeWC;
                if (xSWildcardDecl == null) {
                    return new Object[]{str, xSAttributeDecl.f112855e, "derivation-ok-restriction.2.2.a"};
                }
                if (!xSWildcardDecl.allowNamespace(xSAttributeDecl.f112856f)) {
                    Object[] objArr = new Object[4];
                    objArr[0] = str;
                    objArr[1] = xSAttributeDecl.f112855e;
                    String str2 = xSAttributeDecl.f112856f;
                    if (str2 == null) {
                        str2 = "";
                    }
                    objArr[2] = str2;
                    objArr[3] = "derivation-ok-restriction.2.2.b";
                    return objArr;
                }
            } else {
                if (xSAttributeUseImpl2.getRequired() && !xSAttributeUseImpl.getRequired()) {
                    Object[] objArr2 = new Object[4];
                    objArr2[0] = str;
                    objArr2[1] = xSAttributeDecl.f112855e;
                    objArr2[2] = xSAttributeUseImpl.fUse == 0 ? "optional" : "prohibited";
                    objArr2[3] = XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$ATTR_REQUIRED;
                    return objArr2;
                }
                if (xSAttributeUseImpl.fUse == 2) {
                    continue;
                } else {
                    XSAttributeDecl xSAttributeDecl2 = xSAttributeUseImpl2.fAttrDecl;
                    XSSimpleType xSSimpleType = xSAttributeDecl.f112857g;
                    XSSimpleType xSSimpleType2 = xSAttributeDecl2.f112857g;
                    if (!XSConstraints.checkSimpleDerivationOk(xSSimpleType, xSSimpleType2, xSSimpleType2.getFinal())) {
                        return new Object[]{str, xSAttributeDecl.f112855e, xSAttributeDecl.f112857g.getName(), xSAttributeDecl2.f112857g.getName(), "derivation-ok-restriction.2.1.2"};
                    }
                    short s = xSAttributeUseImpl2.fConstraintType;
                    if (s == 0) {
                        s = xSAttributeDecl2.getConstraintType();
                    }
                    short s2 = xSAttributeUseImpl.fConstraintType;
                    if (s2 == 0) {
                        s2 = xSAttributeDecl.getConstraintType();
                    }
                    if (s != 2) {
                        continue;
                    } else {
                        if (s2 != 2) {
                            return new Object[]{str, xSAttributeDecl.f112855e, "derivation-ok-restriction.2.1.3.a"};
                        }
                        ValidatedInfo validatedInfo = xSAttributeUseImpl2.fDefault;
                        if (validatedInfo == null) {
                            validatedInfo = xSAttributeDecl2.f112862l;
                        }
                        ValidatedInfo validatedInfo2 = xSAttributeUseImpl.fDefault;
                        if (validatedInfo2 == null) {
                            validatedInfo2 = xSAttributeDecl.f112862l;
                        }
                        if (!validatedInfo.actualValue.equals(validatedInfo2.actualValue)) {
                            return new Object[]{str, xSAttributeDecl.f112855e, validatedInfo2.stringValue(), validatedInfo.stringValue(), "derivation-ok-restriction.2.1.3.b"};
                        }
                    }
                }
            }
        }
        for (int i2 = 0; i2 < xSAttributeGroupDecl.f112865e; i2++) {
            XSAttributeUseImpl xSAttributeUseImpl3 = xSAttributeGroupDecl.f112866f[i2];
            if (xSAttributeUseImpl3.fUse == 1) {
                XSAttributeDecl xSAttributeDecl3 = xSAttributeUseImpl3.fAttrDecl;
                if (getAttributeUse(xSAttributeDecl3.f112856f, xSAttributeDecl3.f112855e) == null) {
                    return new Object[]{str, xSAttributeUseImpl3.fAttrDecl.f112855e, "derivation-ok-restriction.3"};
                }
            }
        }
        XSWildcardDecl xSWildcardDecl2 = this.fAttributeWC;
        if (xSWildcardDecl2 == null) {
            return null;
        }
        XSWildcardDecl xSWildcardDecl3 = xSAttributeGroupDecl.fAttributeWC;
        if (xSWildcardDecl3 == null) {
            return new Object[]{str, XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$BASE_HAS_ATTR_WILDCARD};
        }
        if (!xSWildcardDecl2.isSubsetOf(xSWildcardDecl3)) {
            return new Object[]{str, XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$ATTR_WILDCARD_SUBSET};
        }
        if (this.fAttributeWC.weakerProcessContents(xSAttributeGroupDecl.fAttributeWC)) {
            return new Object[]{str, this.fAttributeWC.getProcessContentsAsString(), xSAttributeGroupDecl.fAttributeWC.getProcessContentsAsString(), "derivation-ok-restriction.4.3"};
        }
        return null;
    }
}
