package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTOrientationTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.STDirection;

/* loaded from: classes14.dex */
public class CTOrientationTransitionImpl extends XmlComplexContentImpl implements CTOrientationTransition {
    private static final QName[] PROPERTY_QNAME = {new QName("", CouchFieldKey.KEY_DIR)};
    private static final long serialVersionUID = 1;

    public CTOrientationTransitionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOrientationTransition
    public STDirection.Enum getDir() {
        STDirection.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STDirection.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOrientationTransition
    public boolean isSetDir() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOrientationTransition
    public void setDir(STDirection.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOrientationTransition
    public void unsetDir() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOrientationTransition
    public STDirection xgetDir() {
        STDirection sTDirection;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTDirection = (STDirection) typeStore.find_attribute_user(qNameArr[0]);
            if (sTDirection == null) {
                sTDirection = (STDirection) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTDirection;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTOrientationTransition
    public void xsetDir(STDirection sTDirection) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDirection sTDirection2 = (STDirection) typeStore.find_attribute_user(qNameArr[0]);
            if (sTDirection2 == null) {
                sTDirection2 = (STDirection) get_store().add_attribute_user(qNameArr[0]);
            }
            sTDirection2.set(sTDirection);
        }
    }
}
