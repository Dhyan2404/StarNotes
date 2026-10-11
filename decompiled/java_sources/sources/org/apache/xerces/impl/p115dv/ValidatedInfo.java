package org.apache.xerces.impl.p115dv;

import org.apache.xerces.impl.p117xs.util.ShortListImpl;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
import org.apache.xerces.p118xs.XSValue;

/* loaded from: classes13.dex */
public class ValidatedInfo implements XSValue {
    public XSSimpleType actualType;
    public Object actualValue;
    public short actualValueType;
    public ShortList itemValueTypes;
    public XSSimpleType memberType;
    public XSSimpleType[] memberTypes;
    public String normalizedValue;

    /* renamed from: a */
    public static short m69929a(short s) {
        if (s <= 20) {
            return s;
        }
        if (s <= 29) {
            return (short) 2;
        }
        if (s <= 42) {
            return (short) 4;
        }
        return s;
    }

    public static boolean isComparable(ValidatedInfo validatedInfo, ValidatedInfo validatedInfo2) {
        short m69929a = m69929a(validatedInfo.actualValueType);
        short m69929a2 = m69929a(validatedInfo2.actualValueType);
        if (m69929a != m69929a2) {
            return (m69929a == 1 && m69929a2 == 2) || (m69929a == 2 && m69929a2 == 1);
        }
        if (m69929a == 44 || m69929a == 43) {
            ShortList shortList = validatedInfo.itemValueTypes;
            ShortList shortList2 = validatedInfo2.itemValueTypes;
            int length = shortList != null ? shortList.getLength() : 0;
            if (length != (shortList2 != null ? shortList2.getLength() : 0)) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                short m69929a3 = m69929a(shortList.item(i));
                short m69929a4 = m69929a(shortList2.item(i));
                if (m69929a3 != m69929a4 && ((m69929a3 != 1 || m69929a4 != 2) && (m69929a3 != 2 || m69929a4 != 1))) {
                    return false;
                }
            }
        }
        return true;
    }

    public void copyFrom(XSValue xSValue) {
        ShortList listValueTypes;
        if (xSValue == null) {
            reset();
            return;
        }
        if (xSValue instanceof ValidatedInfo) {
            ValidatedInfo validatedInfo = (ValidatedInfo) xSValue;
            this.normalizedValue = validatedInfo.normalizedValue;
            this.actualValue = validatedInfo.actualValue;
            this.actualValueType = validatedInfo.actualValueType;
            this.actualType = validatedInfo.actualType;
            this.memberType = validatedInfo.memberType;
            this.memberTypes = validatedInfo.memberTypes;
            listValueTypes = validatedInfo.itemValueTypes;
        } else {
            this.normalizedValue = xSValue.getNormalizedValue();
            this.actualValue = xSValue.getActualValue();
            this.actualValueType = xSValue.getActualValueType();
            this.actualType = (XSSimpleType) xSValue.getTypeDefinition();
            XSSimpleType xSSimpleType = (XSSimpleType) xSValue.getMemberTypeDefinition();
            this.memberType = xSSimpleType;
            if (xSSimpleType == null) {
                xSSimpleType = this.actualType;
            }
            if (xSSimpleType == null || xSSimpleType.getBuiltInKind() != 43) {
                this.memberTypes = null;
            } else {
                XSObjectList memberTypeDefinitions = xSValue.getMemberTypeDefinitions();
                this.memberTypes = new XSSimpleType[memberTypeDefinitions.getLength()];
                for (int i = 0; i < memberTypeDefinitions.getLength(); i++) {
                    this.memberTypes[i] = (XSSimpleType) memberTypeDefinitions.get(i);
                }
            }
            listValueTypes = xSValue.getListValueTypes();
        }
        this.itemValueTypes = listValueTypes;
    }

    @Override // org.apache.xerces.p118xs.XSValue
    public Object getActualValue() {
        return this.actualValue;
    }

    @Override // org.apache.xerces.p118xs.XSValue
    public short getActualValueType() {
        return this.actualValueType;
    }

    @Override // org.apache.xerces.p118xs.XSValue
    public ShortList getListValueTypes() {
        ShortList shortList = this.itemValueTypes;
        return shortList == null ? ShortListImpl.EMPTY_LIST : shortList;
    }

    @Override // org.apache.xerces.p118xs.XSValue
    public XSSimpleTypeDefinition getMemberTypeDefinition() {
        return this.memberType;
    }

    @Override // org.apache.xerces.p118xs.XSValue
    public XSObjectList getMemberTypeDefinitions() {
        if (this.memberTypes == null) {
            return XSObjectListImpl.EMPTY_LIST;
        }
        XSSimpleType[] xSSimpleTypeArr = this.memberTypes;
        return new XSObjectListImpl(xSSimpleTypeArr, xSSimpleTypeArr.length);
    }

    @Override // org.apache.xerces.p118xs.XSValue
    public String getNormalizedValue() {
        return this.normalizedValue;
    }

    @Override // org.apache.xerces.p118xs.XSValue
    public XSSimpleTypeDefinition getTypeDefinition() {
        return this.actualType;
    }

    public void reset() {
        this.normalizedValue = null;
        this.actualValue = null;
        this.actualValueType = (short) 45;
        this.actualType = null;
        this.memberType = null;
        this.memberTypes = null;
        this.itemValueTypes = null;
    }

    public String stringValue() {
        Object obj = this.actualValue;
        return obj == null ? this.normalizedValue : obj.toString();
    }
}
