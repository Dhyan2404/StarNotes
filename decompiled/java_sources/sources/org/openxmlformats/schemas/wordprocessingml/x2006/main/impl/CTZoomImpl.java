package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTZoom;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDecimalNumberOrPercent;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STZoom;

/* loaded from: classes16.dex */
public class CTZoomImpl extends XmlComplexContentImpl implements CTZoom {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val"), new QName(XSSFRelation.NS_WORDPROCESSINGML, Constants.ATTRNAME_PERCENT)};
    private static final long serialVersionUID = 1;

    public CTZoomImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTZoom
    public Object getPercent() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTZoom
    public STZoom.Enum getVal() {
        STZoom.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STZoom.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTZoom
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTZoom
    public void setPercent(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTZoom
    public void setVal(STZoom.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTZoom
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTZoom
    public STDecimalNumberOrPercent xgetPercent() {
        STDecimalNumberOrPercent sTDecimalNumberOrPercent;
        synchronized (monitor()) {
            check_orphaned();
            sTDecimalNumberOrPercent = (STDecimalNumberOrPercent) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTDecimalNumberOrPercent;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTZoom
    public STZoom xgetVal() {
        STZoom sTZoom;
        synchronized (monitor()) {
            check_orphaned();
            sTZoom = (STZoom) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTZoom;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTZoom
    public void xsetPercent(STDecimalNumberOrPercent sTDecimalNumberOrPercent) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDecimalNumberOrPercent sTDecimalNumberOrPercent2 = (STDecimalNumberOrPercent) typeStore.find_attribute_user(qNameArr[1]);
            if (sTDecimalNumberOrPercent2 == null) {
                sTDecimalNumberOrPercent2 = (STDecimalNumberOrPercent) get_store().add_attribute_user(qNameArr[1]);
            }
            sTDecimalNumberOrPercent2.set(sTDecimalNumberOrPercent);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTZoom
    public void xsetVal(STZoom sTZoom) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STZoom sTZoom2 = (STZoom) typeStore.find_attribute_user(qNameArr[0]);
            if (sTZoom2 == null) {
                sTZoom2 = (STZoom) get_store().add_attribute_user(qNameArr[0]);
            }
            sTZoom2.set(sTZoom);
        }
    }
}
