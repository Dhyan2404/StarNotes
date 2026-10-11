package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.MovieAttribute;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class MovieAttributeImpl extends XmlComplexContentImpl implements MovieAttribute {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "movie")};
    private static final long serialVersionUID = 1;

    public MovieAttributeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.MovieAttribute
    public float getMovie() {
        float floatValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            floatValue = simpleValue == null ? 0.0f : simpleValue.getFloatValue();
        }
        return floatValue;
    }

    @Override // com.microsoft.schemas.office.office.MovieAttribute
    public boolean isSetMovie() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.MovieAttribute
    public void setMovie(float f) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setFloatValue(f);
        }
    }

    @Override // com.microsoft.schemas.office.office.MovieAttribute
    public void unsetMovie() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.office.MovieAttribute
    public XmlFloat xgetMovie() {
        XmlFloat xmlFloat;
        synchronized (monitor()) {
            check_orphaned();
            xmlFloat = (XmlFloat) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return xmlFloat;
    }

    @Override // com.microsoft.schemas.office.office.MovieAttribute
    public void xsetMovie(XmlFloat xmlFloat) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlFloat xmlFloat2 = (XmlFloat) typeStore.find_attribute_user(qNameArr[0]);
            if (xmlFloat2 == null) {
                xmlFloat2 = (XmlFloat) get_store().add_attribute_user(qNameArr[0]);
            }
            xmlFloat2.set(xmlFloat);
        }
    }
}
