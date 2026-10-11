package com.microsoft.schemas.office.word.impl;

import com.microsoft.schemas.office.word.CTWrap;
import com.microsoft.schemas.office.word.STHorizontalAnchor;
import com.microsoft.schemas.office.word.STVerticalAnchor;
import com.microsoft.schemas.office.word.STWrapSide;
import com.microsoft.schemas.office.word.STWrapType;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTWrapImpl extends XmlComplexContentImpl implements CTWrap {
    private static final QName[] PROPERTY_QNAME = {new QName("", "type"), new QName("", "side"), new QName("", "anchorx"), new QName("", "anchory")};
    private static final long serialVersionUID = 1;

    public CTWrapImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public STHorizontalAnchor.Enum getAnchorx() {
        STHorizontalAnchor.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            r3 = simpleValue == null ? null : (STHorizontalAnchor.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public STVerticalAnchor.Enum getAnchory() {
        STVerticalAnchor.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            r3 = simpleValue == null ? null : (STVerticalAnchor.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public STWrapSide.Enum getSide() {
        STWrapSide.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STWrapSide.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public STWrapType.Enum getType() {
        STWrapType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STWrapType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public boolean isSetAnchorx() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public boolean isSetAnchory() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public boolean isSetSide() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public void setAnchorx(STHorizontalAnchor.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public void setAnchory(STVerticalAnchor.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public void setSide(STWrapSide.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public void setType(STWrapType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public void unsetAnchorx() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public void unsetAnchory() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public void unsetSide() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public STHorizontalAnchor xgetAnchorx() {
        STHorizontalAnchor sTHorizontalAnchor;
        synchronized (monitor()) {
            check_orphaned();
            sTHorizontalAnchor = (STHorizontalAnchor) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTHorizontalAnchor;
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public STVerticalAnchor xgetAnchory() {
        STVerticalAnchor sTVerticalAnchor;
        synchronized (monitor()) {
            check_orphaned();
            sTVerticalAnchor = (STVerticalAnchor) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTVerticalAnchor;
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public STWrapSide xgetSide() {
        STWrapSide sTWrapSide;
        synchronized (monitor()) {
            check_orphaned();
            sTWrapSide = (STWrapSide) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTWrapSide;
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public STWrapType xgetType() {
        STWrapType sTWrapType;
        synchronized (monitor()) {
            check_orphaned();
            sTWrapType = (STWrapType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTWrapType;
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public void xsetAnchorx(STHorizontalAnchor sTHorizontalAnchor) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STHorizontalAnchor sTHorizontalAnchor2 = (STHorizontalAnchor) typeStore.find_attribute_user(qNameArr[2]);
            if (sTHorizontalAnchor2 == null) {
                sTHorizontalAnchor2 = (STHorizontalAnchor) get_store().add_attribute_user(qNameArr[2]);
            }
            sTHorizontalAnchor2.set(sTHorizontalAnchor);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public void xsetAnchory(STVerticalAnchor sTVerticalAnchor) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STVerticalAnchor sTVerticalAnchor2 = (STVerticalAnchor) typeStore.find_attribute_user(qNameArr[3]);
            if (sTVerticalAnchor2 == null) {
                sTVerticalAnchor2 = (STVerticalAnchor) get_store().add_attribute_user(qNameArr[3]);
            }
            sTVerticalAnchor2.set(sTVerticalAnchor);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public void xsetSide(STWrapSide sTWrapSide) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWrapSide sTWrapSide2 = (STWrapSide) typeStore.find_attribute_user(qNameArr[1]);
            if (sTWrapSide2 == null) {
                sTWrapSide2 = (STWrapSide) get_store().add_attribute_user(qNameArr[1]);
            }
            sTWrapSide2.set(sTWrapSide);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTWrap
    public void xsetType(STWrapType sTWrapType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWrapType sTWrapType2 = (STWrapType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTWrapType2 == null) {
                sTWrapType2 = (STWrapType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTWrapType2.set(sTWrapType);
        }
    }
}
