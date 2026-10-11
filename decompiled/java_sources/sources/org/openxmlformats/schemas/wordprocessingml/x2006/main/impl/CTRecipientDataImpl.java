package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBase64Binary;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData;

/* loaded from: classes16.dex */
public class CTRecipientDataImpl extends XmlComplexContentImpl implements CTRecipientData {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, AppMeasurementSdk.ConditionalUserProperty.ACTIVE), new QName(XSSFRelation.NS_WORDPROCESSINGML, "column"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "uniqueTag")};
    private static final long serialVersionUID = 1;

    public CTRecipientDataImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData
    public CTOnOff addNewActive() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData
    public CTDecimalNumber addNewColumn() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData
    public CTBase64Binary addNewUniqueTag() {
        CTBase64Binary cTBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            cTBase64Binary = (CTBase64Binary) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBase64Binary;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData
    public CTOnOff getActive() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData
    public CTDecimalNumber getColumn() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTDecimalNumber == null) {
                cTDecimalNumber = null;
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData
    public CTBase64Binary getUniqueTag() {
        CTBase64Binary cTBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            cTBase64Binary = (CTBase64Binary) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTBase64Binary == null) {
                cTBase64Binary = null;
            }
        }
        return cTBase64Binary;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData
    public boolean isSetActive() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData
    public void setActive(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData
    public void setColumn(CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData
    public void setUniqueTag(CTBase64Binary cTBase64Binary) {
        generatedSetterHelperImpl(cTBase64Binary, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData
    public void unsetActive() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
