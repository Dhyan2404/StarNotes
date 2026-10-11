package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.p119xb.xmlschema.SpaceAttribute;
import org.apache.xmlbeans.impl.values.JavaStringHolderEx;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTText;

/* loaded from: classes14.dex */
public class CTTextImpl extends JavaStringHolderEx implements CTText {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/XML/1998/namespace", "space")};
    private static final long serialVersionUID = 1;

    public CTTextImpl(SchemaType schemaType) {
        super(schemaType, true);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTText
    public SpaceAttribute.Space.Enum getSpace() {
        SpaceAttribute.Space.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (SpaceAttribute.Space.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTText
    public boolean isSetSpace() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTText
    public void setSpace(SpaceAttribute.Space.Enum r6) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTText
    public void unsetSpace() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTText
    public SpaceAttribute.Space xgetSpace() {
        SpaceAttribute.Space space;
        synchronized (monitor()) {
            check_orphaned();
            space = (SpaceAttribute.Space) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return space;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTText
    public void xsetSpace(SpaceAttribute.Space space) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SpaceAttribute.Space space2 = (SpaceAttribute.Space) typeStore.find_attribute_user(qNameArr[0]);
            if (space2 == null) {
                space2 = (SpaceAttribute.Space) get_store().add_attribute_user(qNameArr[0]);
            }
            space2.set(space);
        }
    }

    public CTTextImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
