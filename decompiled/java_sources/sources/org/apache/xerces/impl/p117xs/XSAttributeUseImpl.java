package org.apache.xerces.impl.p117xs;

import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.XSAttributeDeclaration;
import org.apache.xerces.p118xs.XSAttributeUse;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSValue;

/* loaded from: classes13.dex */
public class XSAttributeUseImpl implements XSAttributeUse {
    public XSAttributeDecl fAttrDecl = null;
    public short fUse = 0;
    public short fConstraintType = 0;
    public ValidatedInfo fDefault = null;
    public XSObjectList fAnnotations = null;

    @Override // org.apache.xerces.p118xs.XSAttributeUse
    public Object getActualVC() {
        if (getConstraintType() == 0) {
            return null;
        }
        return this.fDefault.actualValue;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeUse
    public short getActualVCType() {
        if (getConstraintType() == 0) {
            return (short) 45;
        }
        return this.fDefault.actualValueType;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeUse
    public XSObjectList getAnnotations() {
        XSObjectList xSObjectList = this.fAnnotations;
        return xSObjectList != null ? xSObjectList : XSObjectListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeUse
    public XSAttributeDeclaration getAttrDeclaration() {
        return this.fAttrDecl;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeUse
    public short getConstraintType() {
        return this.fConstraintType;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeUse
    public String getConstraintValue() {
        if (getConstraintType() == 0) {
            return null;
        }
        return this.fDefault.stringValue();
    }

    @Override // org.apache.xerces.p118xs.XSAttributeUse
    public ShortList getItemValueTypes() {
        if (getConstraintType() == 0) {
            return null;
        }
        return this.fDefault.itemValueTypes;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getName() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getNamespace() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeUse
    public boolean getRequired() {
        return this.fUse == 1;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return (short) 4;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeUse
    public XSValue getValueConstraintValue() {
        return this.fDefault;
    }

    public void reset() {
        this.fDefault = null;
        this.fAttrDecl = null;
        this.fUse = (short) 0;
        this.fConstraintType = (short) 0;
        this.fAnnotations = null;
    }
}
