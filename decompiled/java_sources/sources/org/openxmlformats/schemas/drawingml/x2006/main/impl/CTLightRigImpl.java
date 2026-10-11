package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSphereCoords;
import org.openxmlformats.schemas.drawingml.x2006.main.STLightRigDirection;
import org.openxmlformats.schemas.drawingml.x2006.main.STLightRigType;

/* loaded from: classes14.dex */
public class CTLightRigImpl extends XmlComplexContentImpl implements CTLightRig {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "rot"), new QName("", "rig"), new QName("", CouchFieldKey.KEY_DIR)};
    private static final long serialVersionUID = 1;

    public CTLightRigImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public CTSphereCoords addNewRot() {
        CTSphereCoords cTSphereCoords;
        synchronized (monitor()) {
            check_orphaned();
            cTSphereCoords = (CTSphereCoords) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSphereCoords;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public STLightRigDirection.Enum getDir() {
        STLightRigDirection.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            r3 = simpleValue == null ? null : (STLightRigDirection.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public STLightRigType.Enum getRig() {
        STLightRigType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STLightRigType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public CTSphereCoords getRot() {
        CTSphereCoords cTSphereCoords;
        synchronized (monitor()) {
            check_orphaned();
            cTSphereCoords = (CTSphereCoords) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSphereCoords == null) {
                cTSphereCoords = null;
            }
        }
        return cTSphereCoords;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public boolean isSetRot() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public void setDir(STLightRigDirection.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public void setRig(STLightRigType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public void setRot(CTSphereCoords cTSphereCoords) {
        generatedSetterHelperImpl(cTSphereCoords, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public void unsetRot() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public STLightRigDirection xgetDir() {
        STLightRigDirection sTLightRigDirection;
        synchronized (monitor()) {
            check_orphaned();
            sTLightRigDirection = (STLightRigDirection) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTLightRigDirection;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public STLightRigType xgetRig() {
        STLightRigType sTLightRigType;
        synchronized (monitor()) {
            check_orphaned();
            sTLightRigType = (STLightRigType) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTLightRigType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public void xsetDir(STLightRigDirection sTLightRigDirection) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLightRigDirection sTLightRigDirection2 = (STLightRigDirection) typeStore.find_attribute_user(qNameArr[2]);
            if (sTLightRigDirection2 == null) {
                sTLightRigDirection2 = (STLightRigDirection) get_store().add_attribute_user(qNameArr[2]);
            }
            sTLightRigDirection2.set(sTLightRigDirection);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig
    public void xsetRig(STLightRigType sTLightRigType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLightRigType sTLightRigType2 = (STLightRigType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTLightRigType2 == null) {
                sTLightRigType2 = (STLightRigType) get_store().add_attribute_user(qNameArr[1]);
            }
            sTLightRigType2.set(sTLightRigType);
        }
    }
}
