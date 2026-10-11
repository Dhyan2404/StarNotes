package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.sunia.HTREnginev2.gon;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDiscretePr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupItems;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRangePr;

/* loaded from: classes15.dex */
public class CTFieldGroupImpl extends XmlComplexContentImpl implements CTFieldGroup {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "rangePr"), new QName(XSSFRelation.NS_SPREADSHEETML, "discretePr"), new QName(XSSFRelation.NS_SPREADSHEETML, "groupItems"), new QName("", "par"), new QName("", gon.f71271X)};
    private static final long serialVersionUID = 1;

    public CTFieldGroupImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public CTDiscretePr addNewDiscretePr() {
        CTDiscretePr cTDiscretePr;
        synchronized (monitor()) {
            check_orphaned();
            cTDiscretePr = (CTDiscretePr) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTDiscretePr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public CTGroupItems addNewGroupItems() {
        CTGroupItems cTGroupItems;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupItems = (CTGroupItems) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTGroupItems;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public CTRangePr addNewRangePr() {
        CTRangePr cTRangePr;
        synchronized (monitor()) {
            check_orphaned();
            cTRangePr = (CTRangePr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRangePr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public long getBase() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public CTDiscretePr getDiscretePr() {
        CTDiscretePr cTDiscretePr;
        synchronized (monitor()) {
            check_orphaned();
            cTDiscretePr = (CTDiscretePr) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTDiscretePr == null) {
                cTDiscretePr = null;
            }
        }
        return cTDiscretePr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public CTGroupItems getGroupItems() {
        CTGroupItems cTGroupItems;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupItems = (CTGroupItems) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTGroupItems == null) {
                cTGroupItems = null;
            }
        }
        return cTGroupItems;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public long getPar() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public CTRangePr getRangePr() {
        CTRangePr cTRangePr;
        synchronized (monitor()) {
            check_orphaned();
            cTRangePr = (CTRangePr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRangePr == null) {
                cTRangePr = null;
            }
        }
        return cTRangePr;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public boolean isSetBase() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public boolean isSetDiscretePr() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public boolean isSetGroupItems() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public boolean isSetPar() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public boolean isSetRangePr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public void setBase(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public void setDiscretePr(CTDiscretePr cTDiscretePr) {
        generatedSetterHelperImpl(cTDiscretePr, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public void setGroupItems(CTGroupItems cTGroupItems) {
        generatedSetterHelperImpl(cTGroupItems, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public void setPar(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public void setRangePr(CTRangePr cTRangePr) {
        generatedSetterHelperImpl(cTRangePr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public void unsetBase() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public void unsetDiscretePr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public void unsetGroupItems() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public void unsetPar() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public void unsetRangePr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public XmlUnsignedInt xgetBase() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public XmlUnsignedInt xgetPar() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public void xsetBase(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldGroup
    public void xsetPar(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }
}
