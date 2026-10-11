package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTOleObjectEmbed;
import org.openxmlformats.schemas.presentationml.x2006.main.STOleObjectFollowColorScheme;

/* loaded from: classes14.dex */
public class CTOleObjectEmbedImpl extends XmlComplexContentImpl implements CTOleObjectEmbed {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "extLst"), new QName("", "followColorScheme")};
    private static final long serialVersionUID = 1;

    public CTOleObjectEmbedImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOleObjectEmbed
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOleObjectEmbed
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOleObjectEmbed
    public STOleObjectFollowColorScheme.Enum getFollowColorScheme() {
        STOleObjectFollowColorScheme.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            r5 = simpleValue == null ? null : (STOleObjectFollowColorScheme.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOleObjectEmbed
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOleObjectEmbed
    public boolean isSetFollowColorScheme() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOleObjectEmbed
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOleObjectEmbed
    public void setFollowColorScheme(STOleObjectFollowColorScheme.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOleObjectEmbed
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOleObjectEmbed
    public void unsetFollowColorScheme() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOleObjectEmbed
    public STOleObjectFollowColorScheme xgetFollowColorScheme() {
        STOleObjectFollowColorScheme sTOleObjectFollowColorScheme;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTOleObjectFollowColorScheme = (STOleObjectFollowColorScheme) typeStore.find_attribute_user(qNameArr[1]);
            if (sTOleObjectFollowColorScheme == null) {
                sTOleObjectFollowColorScheme = (STOleObjectFollowColorScheme) get_default_attribute_value(qNameArr[1]);
            }
        }
        return sTOleObjectFollowColorScheme;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOleObjectEmbed
    public void xsetFollowColorScheme(STOleObjectFollowColorScheme sTOleObjectFollowColorScheme) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STOleObjectFollowColorScheme sTOleObjectFollowColorScheme2 = (STOleObjectFollowColorScheme) typeStore.find_attribute_user(qNameArr[1]);
            if (sTOleObjectFollowColorScheme2 == null) {
                sTOleObjectFollowColorScheme2 = (STOleObjectFollowColorScheme) get_store().add_attribute_user(qNameArr[1]);
            }
            sTOleObjectFollowColorScheme2.set(sTOleObjectFollowColorScheme);
        }
    }
}
