package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlNCName;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ListDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.RestrictionDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleDerivationSet;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.UnionDocument;
import org.apache.xmlbeans.impl.values.TypeStore;

/* loaded from: classes13.dex */
public class SimpleTypeImpl extends AnnotatedImpl implements SimpleType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "restriction"), new QName("http://www.w3.org/2001/XMLSchema", "list"), new QName("http://www.w3.org/2001/XMLSchema", "union"), new QName("", "final"), new QName("", "name")};
    private static final long serialVersionUID = 1;

    public SimpleTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public ListDocument.List addNewList() {
        ListDocument.List list;
        synchronized (monitor()) {
            check_orphaned();
            list = (ListDocument.List) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return list;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public RestrictionDocument.Restriction addNewRestriction() {
        RestrictionDocument.Restriction restriction;
        synchronized (monitor()) {
            check_orphaned();
            restriction = (RestrictionDocument.Restriction) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return restriction;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public UnionDocument.Union addNewUnion() {
        UnionDocument.Union union;
        synchronized (monitor()) {
            check_orphaned();
            union = (UnionDocument.Union) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return union;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public Object getFinal() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public ListDocument.List getList() {
        ListDocument.List list;
        synchronized (monitor()) {
            check_orphaned();
            list = (ListDocument.List) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (list == null) {
                list = null;
            }
        }
        return list;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public String getName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public RestrictionDocument.Restriction getRestriction() {
        RestrictionDocument.Restriction restriction;
        synchronized (monitor()) {
            check_orphaned();
            restriction = (RestrictionDocument.Restriction) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (restriction == null) {
                restriction = null;
            }
        }
        return restriction;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public UnionDocument.Union getUnion() {
        UnionDocument.Union union;
        synchronized (monitor()) {
            check_orphaned();
            union = (UnionDocument.Union) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (union == null) {
                union = null;
            }
        }
        return union;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public boolean isSetFinal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public boolean isSetList() {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public boolean isSetName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public boolean isSetRestriction() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public boolean isSetUnion() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public void setFinal(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public void setList(ListDocument.List list) {
        generatedSetterHelperImpl(list, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public void setName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public void setRestriction(RestrictionDocument.Restriction restriction) {
        generatedSetterHelperImpl(restriction, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public void setUnion(UnionDocument.Union union) {
        generatedSetterHelperImpl(union, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public void unsetFinal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public void unsetList() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public void unsetRestriction() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public void unsetUnion() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public SimpleDerivationSet xgetFinal() {
        SimpleDerivationSet simpleDerivationSet;
        synchronized (monitor()) {
            check_orphaned();
            simpleDerivationSet = (SimpleDerivationSet) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return simpleDerivationSet;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public XmlNCName xgetName() {
        XmlNCName xmlNCName;
        synchronized (monitor()) {
            check_orphaned();
            xmlNCName = (XmlNCName) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlNCName;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public void xsetFinal(SimpleDerivationSet simpleDerivationSet) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleDerivationSet simpleDerivationSet2 = (SimpleDerivationSet) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleDerivationSet2 == null) {
                simpleDerivationSet2 = (SimpleDerivationSet) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleDerivationSet2.set(simpleDerivationSet);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType
    public void xsetName(XmlNCName xmlNCName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlNCName xmlNCName2 = (XmlNCName) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlNCName2 == null) {
                xmlNCName2 = (XmlNCName) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlNCName2.set(xmlNCName);
        }
    }
}
