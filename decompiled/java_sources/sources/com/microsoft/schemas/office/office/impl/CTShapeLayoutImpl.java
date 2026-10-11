package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTIdMap;
import com.microsoft.schemas.office.office.CTRegroupTable;
import com.microsoft.schemas.office.office.CTRules;
import com.microsoft.schemas.office.office.CTShapeLayout;
import com.microsoft.schemas.vml.STExt;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTShapeLayoutImpl extends XmlComplexContentImpl implements CTShapeLayout {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "idmap"), new QName("urn:schemas-microsoft-com:office:office", "regrouptable"), new QName("urn:schemas-microsoft-com:office:office", "rules"), new QName("urn:schemas-microsoft-com:vml", "ext")};
    private static final long serialVersionUID = 1;

    public CTShapeLayoutImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public CTIdMap addNewIdmap() {
        CTIdMap cTIdMap;
        synchronized (monitor()) {
            check_orphaned();
            cTIdMap = (CTIdMap) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTIdMap;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public CTRegroupTable addNewRegrouptable() {
        CTRegroupTable cTRegroupTable;
        synchronized (monitor()) {
            check_orphaned();
            cTRegroupTable = (CTRegroupTable) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTRegroupTable;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public CTRules addNewRules() {
        CTRules cTRules;
        synchronized (monitor()) {
            check_orphaned();
            cTRules = (CTRules) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTRules;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public STExt.Enum getExt() {
        STExt.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            r3 = simpleValue == null ? null : (STExt.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public CTIdMap getIdmap() {
        CTIdMap cTIdMap;
        synchronized (monitor()) {
            check_orphaned();
            cTIdMap = (CTIdMap) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTIdMap == null) {
                cTIdMap = null;
            }
        }
        return cTIdMap;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public CTRegroupTable getRegrouptable() {
        CTRegroupTable cTRegroupTable;
        synchronized (monitor()) {
            check_orphaned();
            cTRegroupTable = (CTRegroupTable) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTRegroupTable == null) {
                cTRegroupTable = null;
            }
        }
        return cTRegroupTable;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public CTRules getRules() {
        CTRules cTRules;
        synchronized (monitor()) {
            check_orphaned();
            cTRules = (CTRules) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTRules == null) {
                cTRules = null;
            }
        }
        return cTRules;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public boolean isSetExt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public boolean isSetIdmap() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public boolean isSetRegrouptable() {
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

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public boolean isSetRules() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public void setExt(STExt.Enum r6) {
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

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public void setIdmap(CTIdMap cTIdMap) {
        generatedSetterHelperImpl(cTIdMap, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public void setRegrouptable(CTRegroupTable cTRegroupTable) {
        generatedSetterHelperImpl(cTRegroupTable, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public void setRules(CTRules cTRules) {
        generatedSetterHelperImpl(cTRules, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public void unsetExt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public void unsetIdmap() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public void unsetRegrouptable() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public void unsetRules() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public STExt xgetExt() {
        STExt sTExt;
        synchronized (monitor()) {
            check_orphaned();
            sTExt = (STExt) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTExt;
    }

    @Override // com.microsoft.schemas.office.office.CTShapeLayout
    public void xsetExt(STExt sTExt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STExt sTExt2 = (STExt) typeStore.find_attribute_user(qNameArr[3]);
            if (sTExt2 == null) {
                sTExt2 = (STExt) get_store().add_attribute_user(qNameArr[3]);
            }
            sTExt2.set(sTExt);
        }
    }
}
