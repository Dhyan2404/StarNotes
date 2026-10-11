package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NamespaceList;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard;
import org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx;
import org.apache.xmlbeans.impl.values.TypeStore;

/* loaded from: classes13.dex */
public class WildcardImpl extends AnnotatedImpl implements Wildcard {
    private static final QName[] PROPERTY_QNAME = {new QName("", Constants.ATTRNAME_NAMESPACE), new QName("", "processContents")};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class ProcessContentsImpl extends JavaStringEnumerationHolderEx implements Wildcard.ProcessContents {
        private static final long serialVersionUID = 1;

        public ProcessContentsImpl(SchemaType schemaType) {
            super(schemaType, false);
        }

        public ProcessContentsImpl(SchemaType schemaType, boolean z) {
            super(schemaType, z);
        }
    }

    public WildcardImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard
    public Object getNamespace() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard
    public Wildcard.ProcessContents.Enum getProcessContents() {
        Wildcard.ProcessContents.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            r5 = simpleValue == null ? null : (Wildcard.ProcessContents.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard
    public boolean isSetNamespace() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard
    public boolean isSetProcessContents() {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard
    public void setNamespace(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard
    public void setProcessContents(Wildcard.ProcessContents.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard
    public void unsetNamespace() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard
    public void unsetProcessContents() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard
    public NamespaceList xgetNamespace() {
        NamespaceList namespaceList;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            namespaceList = (NamespaceList) typeStore.find_attribute_user(qNameArr[0]);
            if (namespaceList == null) {
                namespaceList = (NamespaceList) get_default_attribute_value(qNameArr[0]);
            }
        }
        return namespaceList;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard
    public Wildcard.ProcessContents xgetProcessContents() {
        Wildcard.ProcessContents processContents;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            processContents = (Wildcard.ProcessContents) typeStore.find_attribute_user(qNameArr[1]);
            if (processContents == null) {
                processContents = (Wildcard.ProcessContents) get_default_attribute_value(qNameArr[1]);
            }
        }
        return processContents;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard
    public void xsetNamespace(NamespaceList namespaceList) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            NamespaceList namespaceList2 = (NamespaceList) typeStore.find_attribute_user(qNameArr[0]);
            if (namespaceList2 == null) {
                namespaceList2 = (NamespaceList) get_store().add_attribute_user(qNameArr[0]);
            }
            namespaceList2.set(namespaceList);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard
    public void xsetProcessContents(Wildcard.ProcessContents processContents) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            Wildcard.ProcessContents processContents2 = (Wildcard.ProcessContents) typeStore.find_attribute_user(qNameArr[1]);
            if (processContents2 == null) {
                processContents2 = (Wildcard.ProcessContents) get_store().add_attribute_user(qNameArr[1]);
            }
            processContents2.set(processContents);
        }
    }
}
