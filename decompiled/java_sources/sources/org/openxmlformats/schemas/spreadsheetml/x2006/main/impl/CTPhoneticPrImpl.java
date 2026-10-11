package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.ss.util.CellUtil;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STFontId;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STPhoneticAlignment;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STPhoneticType;

/* loaded from: classes15.dex */
public class CTPhoneticPrImpl extends XmlComplexContentImpl implements CTPhoneticPr {
    private static final QName[] PROPERTY_QNAME = {new QName("", "fontId"), new QName("", "type"), new QName("", CellUtil.ALIGNMENT)};
    private static final long serialVersionUID = 1;

    public CTPhoneticPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public STPhoneticAlignment.Enum getAlignment() {
        STPhoneticAlignment.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            r5 = simpleValue == null ? null : (STPhoneticAlignment.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public long getFontId() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public STPhoneticType.Enum getType() {
        STPhoneticType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            r5 = simpleValue == null ? null : (STPhoneticType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public boolean isSetAlignment() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public boolean isSetType() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public void setAlignment(STPhoneticAlignment.Enum r6) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public void setFontId(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public void setType(STPhoneticType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public void unsetAlignment() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public STPhoneticAlignment xgetAlignment() {
        STPhoneticAlignment sTPhoneticAlignment;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTPhoneticAlignment = (STPhoneticAlignment) typeStore.find_attribute_user(qNameArr[2]);
            if (sTPhoneticAlignment == null) {
                sTPhoneticAlignment = (STPhoneticAlignment) get_default_attribute_value(qNameArr[2]);
            }
        }
        return sTPhoneticAlignment;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public STFontId xgetFontId() {
        STFontId sTFontId;
        synchronized (monitor()) {
            check_orphaned();
            sTFontId = (STFontId) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTFontId;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public STPhoneticType xgetType() {
        STPhoneticType sTPhoneticType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTPhoneticType = (STPhoneticType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTPhoneticType == null) {
                sTPhoneticType = (STPhoneticType) get_default_attribute_value(qNameArr[1]);
            }
        }
        return sTPhoneticType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public void xsetAlignment(STPhoneticAlignment sTPhoneticAlignment) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPhoneticAlignment sTPhoneticAlignment2 = (STPhoneticAlignment) typeStore.find_attribute_user(qNameArr[2]);
            if (sTPhoneticAlignment2 == null) {
                sTPhoneticAlignment2 = (STPhoneticAlignment) get_store().add_attribute_user(qNameArr[2]);
            }
            sTPhoneticAlignment2.set(sTPhoneticAlignment);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public void xsetFontId(STFontId sTFontId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFontId sTFontId2 = (STFontId) typeStore.find_attribute_user(qNameArr[0]);
            if (sTFontId2 == null) {
                sTFontId2 = (STFontId) get_store().add_attribute_user(qNameArr[0]);
            }
            sTFontId2.set(sTFontId);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPhoneticPr
    public void xsetType(STPhoneticType sTPhoneticType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPhoneticType sTPhoneticType2 = (STPhoneticType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTPhoneticType2 == null) {
                sTPhoneticType2 = (STPhoneticType) get_store().add_attribute_user(qNameArr[1]);
            }
            sTPhoneticType2.set(sTPhoneticType);
        }
    }
}
