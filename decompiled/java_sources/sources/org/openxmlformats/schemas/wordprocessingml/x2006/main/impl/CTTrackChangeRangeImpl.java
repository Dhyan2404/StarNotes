package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrackChangeRange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDisplacedByCustomXml;

/* loaded from: classes16.dex */
public class CTTrackChangeRangeImpl extends CTTrackChangeImpl implements CTTrackChangeRange {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "displacedByCustomXml")};
    private static final long serialVersionUID = 1;

    public CTTrackChangeRangeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrackChangeRange
    public STDisplacedByCustomXml.Enum getDisplacedByCustomXml() {
        STDisplacedByCustomXml.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STDisplacedByCustomXml.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrackChangeRange
    public boolean isSetDisplacedByCustomXml() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrackChangeRange
    public void setDisplacedByCustomXml(STDisplacedByCustomXml.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrackChangeRange
    public void unsetDisplacedByCustomXml() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrackChangeRange
    public STDisplacedByCustomXml xgetDisplacedByCustomXml() {
        STDisplacedByCustomXml sTDisplacedByCustomXml;
        synchronized (monitor()) {
            check_orphaned();
            sTDisplacedByCustomXml = (STDisplacedByCustomXml) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTDisplacedByCustomXml;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrackChangeRange
    public void xsetDisplacedByCustomXml(STDisplacedByCustomXml sTDisplacedByCustomXml) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDisplacedByCustomXml sTDisplacedByCustomXml2 = (STDisplacedByCustomXml) typeStore.find_attribute_user(qNameArr[0]);
            if (sTDisplacedByCustomXml2 == null) {
                sTDisplacedByCustomXml2 = (STDisplacedByCustomXml) get_store().add_attribute_user(qNameArr[0]);
            }
            sTDisplacedByCustomXml2.set(sTDisplacedByCustomXml);
        }
    }
}
