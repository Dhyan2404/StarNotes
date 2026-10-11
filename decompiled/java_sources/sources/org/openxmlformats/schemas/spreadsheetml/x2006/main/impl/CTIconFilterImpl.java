package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconFilter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STIconSetType;

/* loaded from: classes15.dex */
public class CTIconFilterImpl extends XmlComplexContentImpl implements CTIconFilter {
    private static final QName[] PROPERTY_QNAME = {new QName("", "iconSet"), new QName("", "iconId")};
    private static final long serialVersionUID = 1;

    public CTIconFilterImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconFilter
    public long getIconId() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconFilter
    public STIconSetType.Enum getIconSet() {
        STIconSetType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STIconSetType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconFilter
    public boolean isSetIconId() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconFilter
    public void setIconId(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconFilter
    public void setIconSet(STIconSetType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconFilter
    public void unsetIconId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconFilter
    public XmlUnsignedInt xgetIconId() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconFilter
    public STIconSetType xgetIconSet() {
        STIconSetType sTIconSetType;
        synchronized (monitor()) {
            check_orphaned();
            sTIconSetType = (STIconSetType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTIconSetType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconFilter
    public void xsetIconId(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIconFilter
    public void xsetIconSet(STIconSetType sTIconSetType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STIconSetType sTIconSetType2 = (STIconSetType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTIconSetType2 == null) {
                sTIconSetType2 = (STIconSetType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTIconSetType2.set(sTIconSetType);
        }
    }
}
