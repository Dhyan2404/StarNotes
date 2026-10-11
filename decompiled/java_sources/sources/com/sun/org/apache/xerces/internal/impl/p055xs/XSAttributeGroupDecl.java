package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.ValidatedInfo;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XSObjectListImpl;
import com.sun.org.apache.xerces.internal.p056xs.XSAnnotation;
import com.sun.org.apache.xerces.internal.p056xs.XSAttributeGroupDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSAttributeUse;
import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.p056xs.XSWildcard;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes10.dex */
public class XSAttributeGroupDecl implements XSAttributeGroupDefinition {
    private static final int INITIAL_SIZE = 5;
    public XSAnnotationImpl fAnnotation;
    public String fName = null;
    public String fTargetNamespace = null;
    int fAttrUseNum = 0;
    XSAttributeUseImpl[] fAttributeUses = new XSAttributeUseImpl[5];
    public XSWildcardDecl fAttributeWC = null;
    public String fIDAttrName = null;
    protected XSObjectListImpl fAttrUses = null;

    public static final XSAttributeUseImpl[] resize(XSAttributeUseImpl[] xSAttributeUseImplArr, int i) {
        XSAttributeUseImpl[] xSAttributeUseImplArr2 = new XSAttributeUseImpl[i];
        System.arraycopy(xSAttributeUseImplArr, 0, xSAttributeUseImplArr2, 0, Math.min(xSAttributeUseImplArr.length, i));
        return xSAttributeUseImplArr2;
    }

    public String addAttributeUse(XSAttributeUseImpl xSAttributeUseImpl) {
        int i = this.fAttrUseNum;
        XSAttributeUseImpl[] xSAttributeUseImplArr = this.fAttributeUses;
        if (i == xSAttributeUseImplArr.length) {
            this.fAttributeUses = resize(xSAttributeUseImplArr, i * 2);
        }
        XSAttributeUseImpl[] xSAttributeUseImplArr2 = this.fAttributeUses;
        int i2 = this.fAttrUseNum;
        this.fAttrUseNum = i2 + 1;
        xSAttributeUseImplArr2[i2] = xSAttributeUseImpl;
        if (xSAttributeUseImpl.fUse != 2 && xSAttributeUseImpl.fAttrDecl.fType.isIDType()) {
            String str = this.fIDAttrName;
            if (str != null) {
                return str;
            }
            this.fIDAttrName = xSAttributeUseImpl.fAttrDecl.fName;
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSAttributeGroupDefinition
    public XSAnnotation getAnnotation() {
        return this.fAnnotation;
    }

    public XSAttributeUse getAttributeUse(String str, String str2) {
        for (int i = 0; i < this.fAttrUseNum; i++) {
            XSAttributeUseImpl xSAttributeUseImpl = this.fAttributeUses[i];
            XSAttributeDecl xSAttributeDecl = xSAttributeUseImpl.fAttrDecl;
            if (xSAttributeDecl.fTargetNamespace == str && xSAttributeDecl.fName == str2) {
                return xSAttributeUseImpl;
            }
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSAttributeGroupDefinition
    public XSObjectList getAttributeUses() {
        if (this.fAttrUses == null) {
            this.fAttrUses = new XSObjectListImpl(this.fAttributeUses, this.fAttrUseNum);
        }
        return this.fAttrUses;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSAttributeGroupDefinition
    public XSWildcard getAttributeWildcard() {
        return this.fAttributeWC;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getName() {
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

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public short getType() {
        return (short) 5;
    }

    public void removeProhibitedAttrs() {
        int i;
        int i2 = this.fAttrUseNum;
        if (i2 == 0) {
            return;
        }
        XSAttributeUseImpl[] xSAttributeUseImplArr = new XSAttributeUseImpl[i2];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = this.fAttrUseNum;
            if (i3 >= i5) {
                break;
            }
            XSAttributeUseImpl xSAttributeUseImpl = this.fAttributeUses[i3];
            if (xSAttributeUseImpl.fUse == 2) {
                i4++;
                xSAttributeUseImplArr[i5 - i4] = xSAttributeUseImpl;
            }
            i3++;
        }
        if (i4 > 0) {
            int i6 = 0;
            for (int i7 = 0; i7 < this.fAttrUseNum; i7++) {
                if (this.fAttributeUses[i7].fUse != 2) {
                    while (true) {
                        if (i > i4) {
                            xSAttributeUseImplArr[i6] = this.fAttributeUses[i7];
                            i6++;
                            break;
                        } else {
                            XSAttributeDecl xSAttributeDecl = this.fAttributeUses[i7].fAttrDecl;
                            String str = xSAttributeDecl.fName;
                            int i8 = this.fAttrUseNum;
                            i = (str == xSAttributeUseImplArr[i8 - i4].fAttrDecl.fName && xSAttributeDecl.fTargetNamespace == xSAttributeUseImplArr[i8 - i4].fAttrDecl.fTargetNamespace) ? 1 : i + 1;
                        }
                    }
                }
            }
            this.fAttributeUses = xSAttributeUseImplArr;
            this.fAttrUseNum = i6;
        }
    }

    public void reset() {
        this.fName = null;
        this.fTargetNamespace = null;
        for (int i = 0; i < this.fAttrUseNum; i++) {
            this.fAttributeUses[i] = null;
        }
        this.fAttrUseNum = 0;
        this.fAttributeWC = null;
        this.fAnnotation = null;
        this.fIDAttrName = null;
    }

    public Object[] validRestrictionOf(String str, XSAttributeGroupDecl xSAttributeGroupDecl) {
        for (int i = 0; i < this.fAttrUseNum; i++) {
            XSAttributeUseImpl xSAttributeUseImpl = this.fAttributeUses[i];
            XSAttributeDecl xSAttributeDecl = xSAttributeUseImpl.fAttrDecl;
            XSAttributeUseImpl xSAttributeUseImpl2 = (XSAttributeUseImpl) xSAttributeGroupDecl.getAttributeUse(xSAttributeDecl.fTargetNamespace, xSAttributeDecl.fName);
            if (xSAttributeUseImpl2 == null) {
                XSWildcardDecl xSWildcardDecl = xSAttributeGroupDecl.fAttributeWC;
                if (xSWildcardDecl == null) {
                    return new Object[]{str, xSAttributeDecl.fName, "derivation-ok-restriction.2.2.a"};
                }
                if (!xSWildcardDecl.allowNamespace(xSAttributeDecl.fTargetNamespace)) {
                    Object[] objArr = new Object[4];
                    objArr[0] = str;
                    objArr[1] = xSAttributeDecl.fName;
                    String str2 = xSAttributeDecl.fTargetNamespace;
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
                    objArr2[1] = xSAttributeDecl.fName;
                    objArr2[2] = xSAttributeUseImpl.fUse == 0 ? "optional" : "prohibited";
                    objArr2[3] = XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$ATTR_REQUIRED;
                    return objArr2;
                }
                if (xSAttributeUseImpl.fUse == 2) {
                    continue;
                } else {
                    XSAttributeDecl xSAttributeDecl2 = xSAttributeUseImpl2.fAttrDecl;
                    XSSimpleType xSSimpleType = xSAttributeDecl.fType;
                    XSSimpleType xSSimpleType2 = xSAttributeDecl2.fType;
                    if (!XSConstraints.checkSimpleDerivationOk(xSSimpleType, xSSimpleType2, xSSimpleType2.getFinal())) {
                        return new Object[]{str, xSAttributeDecl.fName, xSAttributeDecl.fType.getName(), xSAttributeDecl2.fType.getName(), "derivation-ok-restriction.2.1.2"};
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
                            return new Object[]{str, xSAttributeDecl.fName, "derivation-ok-restriction.2.1.3.a"};
                        }
                        ValidatedInfo validatedInfo = xSAttributeUseImpl2.fDefault;
                        if (validatedInfo == null) {
                            validatedInfo = xSAttributeDecl2.fDefault;
                        }
                        ValidatedInfo validatedInfo2 = xSAttributeUseImpl.fDefault;
                        if (validatedInfo2 == null) {
                            validatedInfo2 = xSAttributeDecl.fDefault;
                        }
                        if (!validatedInfo.actualValue.equals(validatedInfo2.actualValue)) {
                            return new Object[]{str, xSAttributeDecl.fName, validatedInfo2.stringValue(), validatedInfo.stringValue(), "derivation-ok-restriction.2.1.3.b"};
                        }
                    }
                }
            }
        }
        for (int i2 = 0; i2 < xSAttributeGroupDecl.fAttrUseNum; i2++) {
            XSAttributeUseImpl xSAttributeUseImpl3 = xSAttributeGroupDecl.fAttributeUses[i2];
            if (xSAttributeUseImpl3.fUse == 1) {
                XSAttributeDecl xSAttributeDecl3 = xSAttributeUseImpl3.fAttrDecl;
                if (getAttributeUse(xSAttributeDecl3.fTargetNamespace, xSAttributeDecl3.fName) == null) {
                    return new Object[]{str, xSAttributeUseImpl3.fAttrDecl.fName, "derivation-ok-restriction.3"};
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
