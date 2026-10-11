package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STWmlColorSchemeIndex;

/* loaded from: classes16.dex */
public class CTColorSchemeMappingImpl extends XmlComplexContentImpl implements CTColorSchemeMapping {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "bg1"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "t1"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "bg2"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "t2"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "accent1"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "accent2"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "accent3"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "accent4"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "accent5"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "accent6"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "hyperlink"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "followedHyperlink")};
    private static final long serialVersionUID = 1;

    public CTColorSchemeMappingImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex.Enum getAccent1() {
        STWmlColorSchemeIndex.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            r3 = simpleValue == null ? null : (STWmlColorSchemeIndex.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex.Enum getAccent2() {
        STWmlColorSchemeIndex.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            r3 = simpleValue == null ? null : (STWmlColorSchemeIndex.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex.Enum getAccent3() {
        STWmlColorSchemeIndex.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            r3 = simpleValue == null ? null : (STWmlColorSchemeIndex.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex.Enum getAccent4() {
        STWmlColorSchemeIndex.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            r3 = simpleValue == null ? null : (STWmlColorSchemeIndex.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex.Enum getAccent5() {
        STWmlColorSchemeIndex.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            r3 = simpleValue == null ? null : (STWmlColorSchemeIndex.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex.Enum getAccent6() {
        STWmlColorSchemeIndex.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[9]);
            r3 = simpleValue == null ? null : (STWmlColorSchemeIndex.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex.Enum getBg1() {
        STWmlColorSchemeIndex.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STWmlColorSchemeIndex.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex.Enum getBg2() {
        STWmlColorSchemeIndex.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            r3 = simpleValue == null ? null : (STWmlColorSchemeIndex.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex.Enum getFollowedHyperlink() {
        STWmlColorSchemeIndex.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[11]);
            r3 = simpleValue == null ? null : (STWmlColorSchemeIndex.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex.Enum getHyperlink() {
        STWmlColorSchemeIndex.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[10]);
            r3 = simpleValue == null ? null : (STWmlColorSchemeIndex.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex.Enum getT1() {
        STWmlColorSchemeIndex.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STWmlColorSchemeIndex.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex.Enum getT2() {
        STWmlColorSchemeIndex.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            r3 = simpleValue == null ? null : (STWmlColorSchemeIndex.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public boolean isSetAccent1() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public boolean isSetAccent2() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public boolean isSetAccent3() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public boolean isSetAccent4() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public boolean isSetAccent5() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public boolean isSetAccent6() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public boolean isSetBg1() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public boolean isSetBg2() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public boolean isSetFollowedHyperlink() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[11]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public boolean isSetHyperlink() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public boolean isSetT1() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public boolean isSetT2() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void setAccent1(STWmlColorSchemeIndex.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void setAccent2(STWmlColorSchemeIndex.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void setAccent3(STWmlColorSchemeIndex.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void setAccent4(STWmlColorSchemeIndex.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void setAccent5(STWmlColorSchemeIndex.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void setAccent6(STWmlColorSchemeIndex.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void setBg1(STWmlColorSchemeIndex.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void setBg2(STWmlColorSchemeIndex.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void setFollowedHyperlink(STWmlColorSchemeIndex.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[11]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void setHyperlink(STWmlColorSchemeIndex.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void setT1(STWmlColorSchemeIndex.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void setT2(STWmlColorSchemeIndex.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void unsetAccent1() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void unsetAccent2() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void unsetAccent3() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void unsetAccent4() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void unsetAccent5() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void unsetAccent6() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void unsetBg1() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void unsetBg2() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void unsetFollowedHyperlink() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[11]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void unsetHyperlink() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void unsetT1() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void unsetT2() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex xgetAccent1() {
        STWmlColorSchemeIndex sTWmlColorSchemeIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTWmlColorSchemeIndex = (STWmlColorSchemeIndex) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return sTWmlColorSchemeIndex;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex xgetAccent2() {
        STWmlColorSchemeIndex sTWmlColorSchemeIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTWmlColorSchemeIndex = (STWmlColorSchemeIndex) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTWmlColorSchemeIndex;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex xgetAccent3() {
        STWmlColorSchemeIndex sTWmlColorSchemeIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTWmlColorSchemeIndex = (STWmlColorSchemeIndex) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return sTWmlColorSchemeIndex;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex xgetAccent4() {
        STWmlColorSchemeIndex sTWmlColorSchemeIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTWmlColorSchemeIndex = (STWmlColorSchemeIndex) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return sTWmlColorSchemeIndex;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex xgetAccent5() {
        STWmlColorSchemeIndex sTWmlColorSchemeIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTWmlColorSchemeIndex = (STWmlColorSchemeIndex) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return sTWmlColorSchemeIndex;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex xgetAccent6() {
        STWmlColorSchemeIndex sTWmlColorSchemeIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTWmlColorSchemeIndex = (STWmlColorSchemeIndex) get_store().find_attribute_user(PROPERTY_QNAME[9]);
        }
        return sTWmlColorSchemeIndex;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex xgetBg1() {
        STWmlColorSchemeIndex sTWmlColorSchemeIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTWmlColorSchemeIndex = (STWmlColorSchemeIndex) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTWmlColorSchemeIndex;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex xgetBg2() {
        STWmlColorSchemeIndex sTWmlColorSchemeIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTWmlColorSchemeIndex = (STWmlColorSchemeIndex) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTWmlColorSchemeIndex;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex xgetFollowedHyperlink() {
        STWmlColorSchemeIndex sTWmlColorSchemeIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTWmlColorSchemeIndex = (STWmlColorSchemeIndex) get_store().find_attribute_user(PROPERTY_QNAME[11]);
        }
        return sTWmlColorSchemeIndex;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex xgetHyperlink() {
        STWmlColorSchemeIndex sTWmlColorSchemeIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTWmlColorSchemeIndex = (STWmlColorSchemeIndex) get_store().find_attribute_user(PROPERTY_QNAME[10]);
        }
        return sTWmlColorSchemeIndex;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex xgetT1() {
        STWmlColorSchemeIndex sTWmlColorSchemeIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTWmlColorSchemeIndex = (STWmlColorSchemeIndex) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTWmlColorSchemeIndex;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public STWmlColorSchemeIndex xgetT2() {
        STWmlColorSchemeIndex sTWmlColorSchemeIndex;
        synchronized (monitor()) {
            check_orphaned();
            sTWmlColorSchemeIndex = (STWmlColorSchemeIndex) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTWmlColorSchemeIndex;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void xsetAccent1(STWmlColorSchemeIndex sTWmlColorSchemeIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWmlColorSchemeIndex sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) typeStore.find_attribute_user(qNameArr[4]);
            if (sTWmlColorSchemeIndex2 == null) {
                sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) get_store().add_attribute_user(qNameArr[4]);
            }
            sTWmlColorSchemeIndex2.set(sTWmlColorSchemeIndex);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void xsetAccent2(STWmlColorSchemeIndex sTWmlColorSchemeIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWmlColorSchemeIndex sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) typeStore.find_attribute_user(qNameArr[5]);
            if (sTWmlColorSchemeIndex2 == null) {
                sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) get_store().add_attribute_user(qNameArr[5]);
            }
            sTWmlColorSchemeIndex2.set(sTWmlColorSchemeIndex);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void xsetAccent3(STWmlColorSchemeIndex sTWmlColorSchemeIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWmlColorSchemeIndex sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) typeStore.find_attribute_user(qNameArr[6]);
            if (sTWmlColorSchemeIndex2 == null) {
                sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) get_store().add_attribute_user(qNameArr[6]);
            }
            sTWmlColorSchemeIndex2.set(sTWmlColorSchemeIndex);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void xsetAccent4(STWmlColorSchemeIndex sTWmlColorSchemeIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWmlColorSchemeIndex sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) typeStore.find_attribute_user(qNameArr[7]);
            if (sTWmlColorSchemeIndex2 == null) {
                sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) get_store().add_attribute_user(qNameArr[7]);
            }
            sTWmlColorSchemeIndex2.set(sTWmlColorSchemeIndex);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void xsetAccent5(STWmlColorSchemeIndex sTWmlColorSchemeIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWmlColorSchemeIndex sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) typeStore.find_attribute_user(qNameArr[8]);
            if (sTWmlColorSchemeIndex2 == null) {
                sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) get_store().add_attribute_user(qNameArr[8]);
            }
            sTWmlColorSchemeIndex2.set(sTWmlColorSchemeIndex);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void xsetAccent6(STWmlColorSchemeIndex sTWmlColorSchemeIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWmlColorSchemeIndex sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) typeStore.find_attribute_user(qNameArr[9]);
            if (sTWmlColorSchemeIndex2 == null) {
                sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) get_store().add_attribute_user(qNameArr[9]);
            }
            sTWmlColorSchemeIndex2.set(sTWmlColorSchemeIndex);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void xsetBg1(STWmlColorSchemeIndex sTWmlColorSchemeIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWmlColorSchemeIndex sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) typeStore.find_attribute_user(qNameArr[0]);
            if (sTWmlColorSchemeIndex2 == null) {
                sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) get_store().add_attribute_user(qNameArr[0]);
            }
            sTWmlColorSchemeIndex2.set(sTWmlColorSchemeIndex);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void xsetBg2(STWmlColorSchemeIndex sTWmlColorSchemeIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWmlColorSchemeIndex sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) typeStore.find_attribute_user(qNameArr[2]);
            if (sTWmlColorSchemeIndex2 == null) {
                sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) get_store().add_attribute_user(qNameArr[2]);
            }
            sTWmlColorSchemeIndex2.set(sTWmlColorSchemeIndex);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void xsetFollowedHyperlink(STWmlColorSchemeIndex sTWmlColorSchemeIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWmlColorSchemeIndex sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) typeStore.find_attribute_user(qNameArr[11]);
            if (sTWmlColorSchemeIndex2 == null) {
                sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) get_store().add_attribute_user(qNameArr[11]);
            }
            sTWmlColorSchemeIndex2.set(sTWmlColorSchemeIndex);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void xsetHyperlink(STWmlColorSchemeIndex sTWmlColorSchemeIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWmlColorSchemeIndex sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) typeStore.find_attribute_user(qNameArr[10]);
            if (sTWmlColorSchemeIndex2 == null) {
                sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) get_store().add_attribute_user(qNameArr[10]);
            }
            sTWmlColorSchemeIndex2.set(sTWmlColorSchemeIndex);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void xsetT1(STWmlColorSchemeIndex sTWmlColorSchemeIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWmlColorSchemeIndex sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) typeStore.find_attribute_user(qNameArr[1]);
            if (sTWmlColorSchemeIndex2 == null) {
                sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) get_store().add_attribute_user(qNameArr[1]);
            }
            sTWmlColorSchemeIndex2.set(sTWmlColorSchemeIndex);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColorSchemeMapping
    public void xsetT2(STWmlColorSchemeIndex sTWmlColorSchemeIndex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STWmlColorSchemeIndex sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) typeStore.find_attribute_user(qNameArr[3]);
            if (sTWmlColorSchemeIndex2 == null) {
                sTWmlColorSchemeIndex2 = (STWmlColorSchemeIndex) get_store().add_attribute_user(qNameArr[3]);
            }
            sTWmlColorSchemeIndex2.set(sTWmlColorSchemeIndex);
        }
    }
}
