package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STAnnotationVMerge;

/* loaded from: classes16.dex */
public class CTCellMergeTrackChangeImpl extends CTTrackChangeImpl implements CTCellMergeTrackChange {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "vMerge"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "vMergeOrig")};
    private static final long serialVersionUID = 1;

    public CTCellMergeTrackChangeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange
    public STAnnotationVMerge.Enum getVMerge() {
        STAnnotationVMerge.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STAnnotationVMerge.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange
    public STAnnotationVMerge.Enum getVMergeOrig() {
        STAnnotationVMerge.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STAnnotationVMerge.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange
    public boolean isSetVMerge() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange
    public boolean isSetVMergeOrig() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange
    public void setVMerge(STAnnotationVMerge.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange
    public void setVMergeOrig(STAnnotationVMerge.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange
    public void unsetVMerge() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange
    public void unsetVMergeOrig() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange
    public STAnnotationVMerge xgetVMerge() {
        STAnnotationVMerge sTAnnotationVMerge;
        synchronized (monitor()) {
            check_orphaned();
            sTAnnotationVMerge = (STAnnotationVMerge) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTAnnotationVMerge;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange
    public STAnnotationVMerge xgetVMergeOrig() {
        STAnnotationVMerge sTAnnotationVMerge;
        synchronized (monitor()) {
            check_orphaned();
            sTAnnotationVMerge = (STAnnotationVMerge) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTAnnotationVMerge;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange
    public void xsetVMerge(STAnnotationVMerge sTAnnotationVMerge) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAnnotationVMerge sTAnnotationVMerge2 = (STAnnotationVMerge) typeStore.find_attribute_user(qNameArr[0]);
            if (sTAnnotationVMerge2 == null) {
                sTAnnotationVMerge2 = (STAnnotationVMerge) get_store().add_attribute_user(qNameArr[0]);
            }
            sTAnnotationVMerge2.set(sTAnnotationVMerge);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCellMergeTrackChange
    public void xsetVMergeOrig(STAnnotationVMerge sTAnnotationVMerge) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAnnotationVMerge sTAnnotationVMerge2 = (STAnnotationVMerge) typeStore.find_attribute_user(qNameArr[1]);
            if (sTAnnotationVMerge2 == null) {
                sTAnnotationVMerge2 = (STAnnotationVMerge) get_store().add_attribute_user(qNameArr[1]);
            }
            sTAnnotationVMerge2.set(sTAnnotationVMerge);
        }
    }
}
