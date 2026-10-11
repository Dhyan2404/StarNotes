package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTInOutTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.STTransitionInOutDirectionType;

/* loaded from: classes14.dex */
public class CTInOutTransitionImpl extends XmlComplexContentImpl implements CTInOutTransition {
    private static final QName[] PROPERTY_QNAME = {new QName("", CouchFieldKey.KEY_DIR)};
    private static final long serialVersionUID = 1;

    public CTInOutTransitionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTInOutTransition
    public STTransitionInOutDirectionType.Enum getDir() {
        STTransitionInOutDirectionType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STTransitionInOutDirectionType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTInOutTransition
    public boolean isSetDir() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTInOutTransition
    public void setDir(STTransitionInOutDirectionType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTInOutTransition
    public void unsetDir() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTInOutTransition
    public STTransitionInOutDirectionType xgetDir() {
        STTransitionInOutDirectionType sTTransitionInOutDirectionType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTTransitionInOutDirectionType = (STTransitionInOutDirectionType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTransitionInOutDirectionType == null) {
                sTTransitionInOutDirectionType = (STTransitionInOutDirectionType) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTTransitionInOutDirectionType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTInOutTransition
    public void xsetDir(STTransitionInOutDirectionType sTTransitionInOutDirectionType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTransitionInOutDirectionType sTTransitionInOutDirectionType2 = (STTransitionInOutDirectionType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTransitionInOutDirectionType2 == null) {
                sTTransitionInOutDirectionType2 = (STTransitionInOutDirectionType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTransitionInOutDirectionType2.set(sTTransitionInOutDirectionType);
        }
    }
}
