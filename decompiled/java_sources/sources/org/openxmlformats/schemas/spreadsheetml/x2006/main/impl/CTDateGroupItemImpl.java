package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.google.gson.internal.bind.TypeAdapters;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STDateTimeGrouping;

/* loaded from: classes15.dex */
public class CTDateGroupItemImpl extends XmlComplexContentImpl implements CTDateGroupItem {
    private static final QName[] PROPERTY_QNAME = {new QName("", TypeAdapters.C6590r.f36273a), new QName("", TypeAdapters.C6590r.f36274b), new QName("", "day"), new QName("", "hour"), new QName("", TypeAdapters.C6590r.f36277e), new QName("", TypeAdapters.C6590r.f36278f), new QName("", "dateTimeGrouping")};
    private static final long serialVersionUID = 1;

    public CTDateGroupItemImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public STDateTimeGrouping.Enum getDateTimeGrouping() {
        STDateTimeGrouping.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            r3 = simpleValue == null ? null : (STDateTimeGrouping.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public int getDay() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public int getHour() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public int getMinute() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public int getMonth() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public int getSecond() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public int getYear() {
        int i;
        synchronized (monitor()) {
            check_orphaned();
            i = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            if (simpleValue != null) {
                i = simpleValue.getIntValue();
            }
        }
        return i;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public boolean isSetDay() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public boolean isSetHour() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public boolean isSetMinute() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public boolean isSetMonth() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public boolean isSetSecond() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void setDateTimeGrouping(STDateTimeGrouping.Enum r6) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void setDay(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void setHour(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void setMinute(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void setMonth(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void setSecond(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void setYear(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void unsetDay() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void unsetHour() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void unsetMinute() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void unsetMonth() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void unsetSecond() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public STDateTimeGrouping xgetDateTimeGrouping() {
        STDateTimeGrouping sTDateTimeGrouping;
        synchronized (monitor()) {
            check_orphaned();
            sTDateTimeGrouping = (STDateTimeGrouping) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return sTDateTimeGrouping;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public XmlUnsignedShort xgetDay() {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedShort = (XmlUnsignedShort) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public XmlUnsignedShort xgetHour() {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedShort = (XmlUnsignedShort) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public XmlUnsignedShort xgetMinute() {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedShort = (XmlUnsignedShort) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public XmlUnsignedShort xgetMonth() {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedShort = (XmlUnsignedShort) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public XmlUnsignedShort xgetSecond() {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedShort = (XmlUnsignedShort) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public XmlUnsignedShort xgetYear() {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedShort = (XmlUnsignedShort) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void xsetDateTimeGrouping(STDateTimeGrouping sTDateTimeGrouping) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDateTimeGrouping sTDateTimeGrouping2 = (STDateTimeGrouping) typeStore.find_attribute_user(qNameArr[6]);
            if (sTDateTimeGrouping2 == null) {
                sTDateTimeGrouping2 = (STDateTimeGrouping) get_store().add_attribute_user(qNameArr[6]);
            }
            sTDateTimeGrouping2.set(sTDateTimeGrouping);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void xsetDay(XmlUnsignedShort xmlUnsignedShort) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedShort xmlUnsignedShort2 = (XmlUnsignedShort) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlUnsignedShort2 == null) {
                xmlUnsignedShort2 = (XmlUnsignedShort) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlUnsignedShort2.set(xmlUnsignedShort);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void xsetHour(XmlUnsignedShort xmlUnsignedShort) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedShort xmlUnsignedShort2 = (XmlUnsignedShort) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlUnsignedShort2 == null) {
                xmlUnsignedShort2 = (XmlUnsignedShort) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlUnsignedShort2.set(xmlUnsignedShort);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void xsetMinute(XmlUnsignedShort xmlUnsignedShort) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedShort xmlUnsignedShort2 = (XmlUnsignedShort) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlUnsignedShort2 == null) {
                xmlUnsignedShort2 = (XmlUnsignedShort) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlUnsignedShort2.set(xmlUnsignedShort);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void xsetMonth(XmlUnsignedShort xmlUnsignedShort) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedShort xmlUnsignedShort2 = (XmlUnsignedShort) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlUnsignedShort2 == null) {
                xmlUnsignedShort2 = (XmlUnsignedShort) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlUnsignedShort2.set(xmlUnsignedShort);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void xsetSecond(XmlUnsignedShort xmlUnsignedShort) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedShort xmlUnsignedShort2 = (XmlUnsignedShort) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlUnsignedShort2 == null) {
                xmlUnsignedShort2 = (XmlUnsignedShort) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlUnsignedShort2.set(xmlUnsignedShort);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem
    public void xsetYear(XmlUnsignedShort xmlUnsignedShort) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedShort xmlUnsignedShort2 = (XmlUnsignedShort) typeStore.find_attribute_user(qNameArr[0]);
            if (xmlUnsignedShort2 == null) {
                xmlUnsignedShort2 = (XmlUnsignedShort) get_store().add_attribute_user(qNameArr[0]);
            }
            xmlUnsignedShort2.set(xmlUnsignedShort);
        }
    }
}
