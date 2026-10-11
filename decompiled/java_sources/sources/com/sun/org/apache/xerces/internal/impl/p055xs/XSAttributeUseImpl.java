package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.ValidatedInfo;
import com.sun.org.apache.xerces.internal.p056xs.ShortList;
import com.sun.org.apache.xerces.internal.p056xs.XSAttributeDeclaration;
import com.sun.org.apache.xerces.internal.p056xs.XSAttributeUse;
import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem;

/* loaded from: classes10.dex */
public class XSAttributeUseImpl implements XSAttributeUse {
    public XSAttributeDecl fAttrDecl = null;
    public short fUse = 0;
    public short fConstraintType = 0;
    public ValidatedInfo fDefault = null;

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSAttributeUse
    public Object getActualVC() {
        if (getConstraintType() == 0) {
            return null;
        }
        return this.fDefault.actualValue;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSAttributeUse
    public short getActualVCType() {
        if (getConstraintType() == 0) {
            return (short) 45;
        }
        return this.fDefault.actualValueType;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSAttributeUse
    public XSAttributeDeclaration getAttrDeclaration() {
        return this.fAttrDecl;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSAttributeUse
    public short getConstraintType() {
        return this.fConstraintType;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSAttributeUse
    public String getConstraintValue() {
        ValidatedInfo validatedInfo;
        Object obj;
        if (getConstraintType() == 0 || (validatedInfo = this.fDefault) == null || (obj = validatedInfo.actualValue) == null) {
            return null;
        }
        return obj.toString();
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSAttributeUse
    public ShortList getItemValueTypes() {
        if (getConstraintType() == 0) {
            return null;
        }
        return this.fDefault.itemValueTypes;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getName() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getNamespace() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSAttributeUse
    public boolean getRequired() {
        return this.fUse == 1;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public short getType() {
        return (short) 4;
    }

    public void reset() {
        this.fDefault = null;
        this.fAttrDecl = null;
        this.fUse = (short) 0;
        this.fConstraintType = (short) 0;
    }
}
