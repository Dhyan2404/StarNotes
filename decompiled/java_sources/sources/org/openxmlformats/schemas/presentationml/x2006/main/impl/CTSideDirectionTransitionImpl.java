package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSideDirectionTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.STTransitionSideDirectionType;

/* loaded from: classes14.dex */
public class CTSideDirectionTransitionImpl extends XmlComplexContentImpl implements CTSideDirectionTransition {
    private static final QName[] PROPERTY_QNAME = {new QName("", CouchFieldKey.KEY_DIR)};
    private static final long serialVersionUID = 1;

    public CTSideDirectionTransitionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSideDirectionTransition
    public STTransitionSideDirectionType.Enum getDir() {
        STTransitionSideDirectionType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STTransitionSideDirectionType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSideDirectionTransition
    public boolean isSetDir() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSideDirectionTransition
    public void setDir(STTransitionSideDirectionType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSideDirectionTransition
    public void unsetDir() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSideDirectionTransition
    public STTransitionSideDirectionType xgetDir() {
        STTransitionSideDirectionType sTTransitionSideDirectionType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTTransitionSideDirectionType = (STTransitionSideDirectionType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTransitionSideDirectionType == null) {
                sTTransitionSideDirectionType = (STTransitionSideDirectionType) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTTransitionSideDirectionType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSideDirectionTransition
    public void xsetDir(STTransitionSideDirectionType sTTransitionSideDirectionType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTransitionSideDirectionType sTTransitionSideDirectionType2 = (STTransitionSideDirectionType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTransitionSideDirectionType2 == null) {
                sTTransitionSideDirectionType2 = (STTransitionSideDirectionType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTransitionSideDirectionType2.set(sTTransitionSideDirectionType);
        }
    }
}
