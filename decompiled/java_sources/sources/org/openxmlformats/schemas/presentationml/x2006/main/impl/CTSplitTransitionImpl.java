package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.STDirection;
import org.openxmlformats.schemas.presentationml.x2006.main.STTransitionInOutDirectionType;

/* loaded from: classes14.dex */
public class CTSplitTransitionImpl extends XmlComplexContentImpl implements CTSplitTransition {
    private static final QName[] PROPERTY_QNAME = {new QName("", "orient"), new QName("", CouchFieldKey.KEY_DIR)};
    private static final long serialVersionUID = 1;

    public CTSplitTransitionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition
    public STTransitionInOutDirectionType.Enum getDir() {
        STTransitionInOutDirectionType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            r5 = simpleValue == null ? null : (STTransitionInOutDirectionType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition
    public STDirection.Enum getOrient() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition
    public boolean isSetDir() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition
    public boolean isSetOrient() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition
    public void setDir(STTransitionInOutDirectionType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition
    public void setOrient(STDirection.Enum r6) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition
    public void unsetDir() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition
    public void unsetOrient() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition
    public STTransitionInOutDirectionType xgetDir() {
        STTransitionInOutDirectionType sTTransitionInOutDirectionType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTTransitionInOutDirectionType = (STTransitionInOutDirectionType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTTransitionInOutDirectionType == null) {
                sTTransitionInOutDirectionType = (STTransitionInOutDirectionType) get_default_attribute_value(qNameArr[1]);
            }
        }
        return sTTransitionInOutDirectionType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition
    public STDirection xgetOrient() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition
    public void xsetDir(STTransitionInOutDirectionType sTTransitionInOutDirectionType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTransitionInOutDirectionType sTTransitionInOutDirectionType2 = (STTransitionInOutDirectionType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTTransitionInOutDirectionType2 == null) {
                sTTransitionInOutDirectionType2 = (STTransitionInOutDirectionType) get_store().add_attribute_user(qNameArr[1]);
            }
            sTTransitionInOutDirectionType2.set(sTTransitionInOutDirectionType);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition
    public void xsetOrient(STDirection sTDirection) {
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
