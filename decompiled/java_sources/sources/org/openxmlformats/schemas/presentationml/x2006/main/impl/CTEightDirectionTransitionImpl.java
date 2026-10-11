package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTEightDirectionTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.STTransitionEightDirectionType;

/* loaded from: classes14.dex */
public class CTEightDirectionTransitionImpl extends XmlComplexContentImpl implements CTEightDirectionTransition {
    private static final QName[] PROPERTY_QNAME = {new QName("", CouchFieldKey.KEY_DIR)};
    private static final long serialVersionUID = 1;

    public CTEightDirectionTransitionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEightDirectionTransition
    public String getDir() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEightDirectionTransition
    public boolean isSetDir() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEightDirectionTransition
    public void setDir(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEightDirectionTransition
    public void unsetDir() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEightDirectionTransition
    public STTransitionEightDirectionType xgetDir() {
        STTransitionEightDirectionType sTTransitionEightDirectionType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTTransitionEightDirectionType = (STTransitionEightDirectionType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTransitionEightDirectionType == null) {
                sTTransitionEightDirectionType = (STTransitionEightDirectionType) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTTransitionEightDirectionType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEightDirectionTransition
    public void xsetDir(STTransitionEightDirectionType sTTransitionEightDirectionType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTransitionEightDirectionType sTTransitionEightDirectionType2 = (STTransitionEightDirectionType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTransitionEightDirectionType2 == null) {
                sTTransitionEightDirectionType2 = (STTransitionEightDirectionType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTransitionEightDirectionType2.set(sTTransitionEightDirectionType);
        }
    }
}
