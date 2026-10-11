package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTColorMenu;
import com.microsoft.schemas.vml.STExt;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STColorType;

/* loaded from: classes7.dex */
public class CTColorMenuImpl extends XmlComplexContentImpl implements CTColorMenu {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "ext"), new QName("", "strokecolor"), new QName("", "fillcolor"), new QName("", "shadowcolor"), new QName("", "extrusioncolor")};
    private static final long serialVersionUID = 1;

    public CTColorMenuImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public STExt.Enum getExt() {
        STExt.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STExt.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public String getExtrusioncolor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public String getFillcolor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public String getShadowcolor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public String getStrokecolor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public boolean isSetExt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public boolean isSetExtrusioncolor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public boolean isSetFillcolor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public boolean isSetShadowcolor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public boolean isSetStrokecolor() {
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

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void setExt(STExt.Enum r6) {
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

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void setExtrusioncolor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void setFillcolor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void setShadowcolor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void setStrokecolor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void unsetExt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void unsetExtrusioncolor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void unsetFillcolor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void unsetShadowcolor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void unsetStrokecolor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public STExt xgetExt() {
        STExt sTExt;
        synchronized (monitor()) {
            check_orphaned();
            sTExt = (STExt) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTExt;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public STColorType xgetExtrusioncolor() {
        STColorType sTColorType;
        synchronized (monitor()) {
            check_orphaned();
            sTColorType = (STColorType) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return sTColorType;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public STColorType xgetFillcolor() {
        STColorType sTColorType;
        synchronized (monitor()) {
            check_orphaned();
            sTColorType = (STColorType) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTColorType;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public STColorType xgetShadowcolor() {
        STColorType sTColorType;
        synchronized (monitor()) {
            check_orphaned();
            sTColorType = (STColorType) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTColorType;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public STColorType xgetStrokecolor() {
        STColorType sTColorType;
        synchronized (monitor()) {
            check_orphaned();
            sTColorType = (STColorType) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTColorType;
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void xsetExt(STExt sTExt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STExt sTExt2 = (STExt) typeStore.find_attribute_user(qNameArr[0]);
            if (sTExt2 == null) {
                sTExt2 = (STExt) get_store().add_attribute_user(qNameArr[0]);
            }
            sTExt2.set(sTExt);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void xsetExtrusioncolor(STColorType sTColorType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STColorType sTColorType2 = (STColorType) typeStore.find_attribute_user(qNameArr[4]);
            if (sTColorType2 == null) {
                sTColorType2 = (STColorType) get_store().add_attribute_user(qNameArr[4]);
            }
            sTColorType2.set(sTColorType);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void xsetFillcolor(STColorType sTColorType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STColorType sTColorType2 = (STColorType) typeStore.find_attribute_user(qNameArr[2]);
            if (sTColorType2 == null) {
                sTColorType2 = (STColorType) get_store().add_attribute_user(qNameArr[2]);
            }
            sTColorType2.set(sTColorType);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void xsetShadowcolor(STColorType sTColorType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STColorType sTColorType2 = (STColorType) typeStore.find_attribute_user(qNameArr[3]);
            if (sTColorType2 == null) {
                sTColorType2 = (STColorType) get_store().add_attribute_user(qNameArr[3]);
            }
            sTColorType2.set(sTColorType);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTColorMenu
    public void xsetStrokecolor(STColorType sTColorType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STColorType sTColorType2 = (STColorType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTColorType2 == null) {
                sTColorType2 = (STColorType) get_store().add_attribute_user(qNameArr[1]);
            }
            sTColorType2.set(sTColorType);
        }
    }
}
