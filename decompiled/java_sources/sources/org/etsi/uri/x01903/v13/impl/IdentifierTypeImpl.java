package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaUriHolderEx;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.etsi.uri.x01903.v13.IdentifierType;
import org.etsi.uri.x01903.v13.QualifierType;

/* loaded from: classes13.dex */
public class IdentifierTypeImpl extends JavaUriHolderEx implements IdentifierType {
    private static final QName[] PROPERTY_QNAME = {new QName("", "Qualifier")};
    private static final long serialVersionUID = 1;

    public IdentifierTypeImpl(SchemaType schemaType) {
        super(schemaType, true);
    }

    @Override // org.etsi.uri.x01903.v13.IdentifierType
    public QualifierType.Enum getQualifier() {
        QualifierType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (QualifierType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.etsi.uri.x01903.v13.IdentifierType
    public boolean isSetQualifier() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.IdentifierType
    public void setQualifier(QualifierType.Enum r6) {
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

    @Override // org.etsi.uri.x01903.v13.IdentifierType
    public void unsetQualifier() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.IdentifierType
    public QualifierType xgetQualifier() {
        QualifierType qualifierType;
        synchronized (monitor()) {
            check_orphaned();
            qualifierType = (QualifierType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return qualifierType;
    }

    @Override // org.etsi.uri.x01903.v13.IdentifierType
    public void xsetQualifier(QualifierType qualifierType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            QualifierType qualifierType2 = (QualifierType) typeStore.find_attribute_user(qNameArr[0]);
            if (qualifierType2 == null) {
                qualifierType2 = (QualifierType) get_store().add_attribute_user(qNameArr[0]);
            }
            qualifierType2.set(qualifierType);
        }
    }

    public IdentifierTypeImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
