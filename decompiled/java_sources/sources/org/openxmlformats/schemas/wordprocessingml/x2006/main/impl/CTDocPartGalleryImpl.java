package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartGallery;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocPartGallery;

/* loaded from: classes16.dex */
public class CTDocPartGalleryImpl extends XmlComplexContentImpl implements CTDocPartGallery {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTDocPartGalleryImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartGallery
    public STDocPartGallery.Enum getVal() {
        STDocPartGallery.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STDocPartGallery.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartGallery
    public void setVal(STDocPartGallery.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartGallery
    public STDocPartGallery xgetVal() {
        STDocPartGallery sTDocPartGallery;
        synchronized (monitor()) {
            check_orphaned();
            sTDocPartGallery = (STDocPartGallery) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTDocPartGallery;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartGallery
    public void xsetVal(STDocPartGallery sTDocPartGallery) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDocPartGallery sTDocPartGallery2 = (STDocPartGallery) typeStore.find_attribute_user(qNameArr[0]);
            if (sTDocPartGallery2 == null) {
                sTDocPartGallery2 = (STDocPartGallery) get_store().add_attribute_user(qNameArr[0]);
            }
            sTDocPartGallery2.set(sTDocPartGallery);
        }
    }
}
