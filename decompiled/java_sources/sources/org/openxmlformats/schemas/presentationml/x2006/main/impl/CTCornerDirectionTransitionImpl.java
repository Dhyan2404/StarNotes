package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCornerDirectionTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.STTransitionCornerDirectionType;

/* loaded from: classes14.dex */
public class CTCornerDirectionTransitionImpl extends XmlComplexContentImpl implements CTCornerDirectionTransition {
    private static final QName[] PROPERTY_QNAME = {new QName("", CouchFieldKey.KEY_DIR)};
    private static final long serialVersionUID = 1;

    public CTCornerDirectionTransitionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCornerDirectionTransition
    public STTransitionCornerDirectionType.Enum getDir() {
        STTransitionCornerDirectionType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STTransitionCornerDirectionType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCornerDirectionTransition
    public boolean isSetDir() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCornerDirectionTransition
    public void setDir(STTransitionCornerDirectionType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCornerDirectionTransition
    public void unsetDir() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCornerDirectionTransition
    public STTransitionCornerDirectionType xgetDir() {
        STTransitionCornerDirectionType sTTransitionCornerDirectionType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTTransitionCornerDirectionType = (STTransitionCornerDirectionType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTransitionCornerDirectionType == null) {
                sTTransitionCornerDirectionType = (STTransitionCornerDirectionType) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTTransitionCornerDirectionType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTCornerDirectionTransition
    public void xsetDir(STTransitionCornerDirectionType sTTransitionCornerDirectionType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTransitionCornerDirectionType sTTransitionCornerDirectionType2 = (STTransitionCornerDirectionType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTransitionCornerDirectionType2 == null) {
                sTTransitionCornerDirectionType2 = (STTransitionCornerDirectionType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTransitionCornerDirectionType2.set(sTTransitionCornerDirectionType);
        }
    }
}
