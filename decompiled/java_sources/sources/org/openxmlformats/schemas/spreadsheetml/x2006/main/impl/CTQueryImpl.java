package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQuery;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTuples;

/* loaded from: classes15.dex */
public class CTQueryImpl extends XmlComplexContentImpl implements CTQuery {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "tpls"), new QName("", "mdx")};
    private static final long serialVersionUID = 1;

    public CTQueryImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQuery
    public CTTuples addNewTpls() {
        CTTuples cTTuples;
        synchronized (monitor()) {
            check_orphaned();
            cTTuples = (CTTuples) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTuples;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQuery
    public String getMdx() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQuery
    public CTTuples getTpls() {
        CTTuples cTTuples;
        synchronized (monitor()) {
            check_orphaned();
            cTTuples = (CTTuples) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTuples == null) {
                cTTuples = null;
            }
        }
        return cTTuples;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQuery
    public boolean isSetTpls() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQuery
    public void setMdx(String str) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQuery
    public void setTpls(CTTuples cTTuples) {
        generatedSetterHelperImpl(cTTuples, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQuery
    public void unsetTpls() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQuery
    public STXstring xgetMdx() {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTXstring;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQuery
    public void xsetMdx(STXstring sTXstring) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STXstring sTXstring2 = (STXstring) typeStore.find_attribute_user(qNameArr[1]);
            if (sTXstring2 == null) {
                sTXstring2 = (STXstring) get_store().add_attribute_user(qNameArr[1]);
            }
            sTXstring2.set(sTXstring);
        }
    }
}
