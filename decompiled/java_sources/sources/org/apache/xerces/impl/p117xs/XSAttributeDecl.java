package org.apache.xerces.impl.p117xs;

import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.XSAnnotation;
import org.apache.xerces.p118xs.XSAttributeDeclaration;
import org.apache.xerces.p118xs.XSComplexTypeDefinition;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
import org.apache.xerces.p118xs.XSValue;
import org.apache.xerces.xni.QName;

/* loaded from: classes13.dex */
public class XSAttributeDecl implements XSAttributeDeclaration {
    public static final short SCOPE_ABSENT = 0;
    public static final short SCOPE_GLOBAL = 1;
    public static final short SCOPE_LOCAL = 2;

    /* renamed from: e */
    public String f112855e = null;

    /* renamed from: f */
    public String f112856f = null;

    /* renamed from: g */
    public XSSimpleType f112857g = null;
    public QName fUnresolvedTypeName = null;

    /* renamed from: h */
    public short f112858h = 0;

    /* renamed from: i */
    public short f112859i = 0;

    /* renamed from: j */
    public XSComplexTypeDecl f112860j = null;

    /* renamed from: k */
    public XSObjectList f112861k = null;

    /* renamed from: l */
    public ValidatedInfo f112862l = null;

    /* renamed from: m */
    public XSNamespaceItem f112863m = null;

    /* renamed from: a */
    public void m70196a(XSNamespaceItem xSNamespaceItem) {
        this.f112863m = xSNamespaceItem;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeDeclaration
    public Object getActualVC() {
        if (getConstraintType() == 0) {
            return null;
        }
        return this.f112862l.actualValue;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeDeclaration
    public short getActualVCType() {
        if (getConstraintType() == 0) {
            return (short) 45;
        }
        return this.f112862l.actualValueType;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeDeclaration
    public XSAnnotation getAnnotation() {
        XSObjectList xSObjectList = this.f112861k;
        if (xSObjectList != null) {
            return (XSAnnotation) xSObjectList.item(0);
        }
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeDeclaration
    public XSObjectList getAnnotations() {
        XSObjectList xSObjectList = this.f112861k;
        return xSObjectList != null ? xSObjectList : XSObjectListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeDeclaration
    public short getConstraintType() {
        return this.f112858h;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeDeclaration
    public String getConstraintValue() {
        if (getConstraintType() == 0) {
            return null;
        }
        return this.f112862l.stringValue();
    }

    @Override // org.apache.xerces.p118xs.XSAttributeDeclaration
    public XSComplexTypeDefinition getEnclosingCTDefinition() {
        return this.f112860j;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeDeclaration
    public ShortList getItemValueTypes() {
        if (getConstraintType() == 0) {
            return null;
        }
        return this.f112862l.itemValueTypes;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getName() {
        return this.f112855e;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getNamespace() {
        return this.f112856f;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return this.f112863m;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeDeclaration
    public short getScope() {
        return this.f112859i;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return (short) 1;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeDeclaration
    public XSSimpleTypeDefinition getTypeDefinition() {
        return this.f112857g;
    }

    public ValidatedInfo getValInfo() {
        return this.f112862l;
    }

    @Override // org.apache.xerces.p118xs.XSAttributeDeclaration
    public XSValue getValueConstraintValue() {
        return this.f112862l;
    }

    public void reset() {
        this.f112855e = null;
        this.f112856f = null;
        this.f112857g = null;
        this.fUnresolvedTypeName = null;
        this.f112858h = (short) 0;
        this.f112859i = (short) 0;
        this.f112862l = null;
        this.f112861k = null;
    }

    public void setValues(String str, String str2, XSSimpleType xSSimpleType, short s, short s2, ValidatedInfo validatedInfo, XSComplexTypeDecl xSComplexTypeDecl, XSObjectList xSObjectList) {
        this.f112855e = str;
        this.f112856f = str2;
        this.f112857g = xSSimpleType;
        this.f112858h = s;
        this.f112859i = s2;
        this.f112862l = validatedInfo;
        this.f112860j = xSComplexTypeDecl;
        this.f112861k = xSObjectList;
    }
}
