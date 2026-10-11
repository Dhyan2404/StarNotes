package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonBehaviorData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLSetBehavior;

/* loaded from: classes14.dex */
public class CTTLSetBehaviorImpl extends XmlComplexContentImpl implements CTTLSetBehavior {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cBhvr"), new QName(XSSFRelation.NS_PRESENTATIONML, "to")};
    private static final long serialVersionUID = 1;

    public CTTLSetBehaviorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLSetBehavior
    public CTTLCommonBehaviorData addNewCBhvr() {
        CTTLCommonBehaviorData cTTLCommonBehaviorData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonBehaviorData = (CTTLCommonBehaviorData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLCommonBehaviorData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLSetBehavior
    public CTTLAnimVariant addNewTo() {
        CTTLAnimVariant cTTLAnimVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariant = (CTTLAnimVariant) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLAnimVariant;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLSetBehavior
    public CTTLCommonBehaviorData getCBhvr() {
        CTTLCommonBehaviorData cTTLCommonBehaviorData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonBehaviorData = (CTTLCommonBehaviorData) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTLCommonBehaviorData == null) {
                cTTLCommonBehaviorData = null;
            }
        }
        return cTTLCommonBehaviorData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLSetBehavior
    public CTTLAnimVariant getTo() {
        CTTLAnimVariant cTTLAnimVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariant = (CTTLAnimVariant) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTLAnimVariant == null) {
                cTTLAnimVariant = null;
            }
        }
        return cTTLAnimVariant;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLSetBehavior
    public boolean isSetTo() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLSetBehavior
    public void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData) {
        generatedSetterHelperImpl(cTTLCommonBehaviorData, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLSetBehavior
    public void setTo(CTTLAnimVariant cTTLAnimVariant) {
        generatedSetterHelperImpl(cTTLAnimVariant, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLSetBehavior
    public void unsetTo() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
