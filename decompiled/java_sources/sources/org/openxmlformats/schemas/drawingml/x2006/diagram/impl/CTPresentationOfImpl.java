package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import java.util.List;
import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STAxisTypes;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STBooleans;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STElementTypes;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STInts;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STUnsignedInts;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTPresentationOfImpl extends XmlComplexContentImpl implements CTPresentationOf {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", "axis"), new QName("", "ptType"), new QName("", "hideLastTrans"), new QName("", "st"), new QName("", "cnt"), new QName("", "step")};
    private static final long serialVersionUID = 1;

    public CTPresentationOfImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public List getAxis() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public List getCnt() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[5]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public List getHideLastTrans() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[3]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public List getPtType() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public List getSt() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[4]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public List getStep() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[6]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public boolean isSetAxis() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public boolean isSetCnt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public boolean isSetHideLastTrans() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public boolean isSetPtType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public boolean isSetSt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public boolean isSetStep() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void setAxis(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void setCnt(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void setHideLastTrans(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void setPtType(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void setSt(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void setStep(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void unsetAxis() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void unsetCnt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void unsetHideLastTrans() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void unsetPtType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void unsetSt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void unsetStep() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public STAxisTypes xgetAxis() {
        STAxisTypes sTAxisTypes;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTAxisTypes = (STAxisTypes) typeStore.find_attribute_user(qNameArr[1]);
            if (sTAxisTypes == null) {
                sTAxisTypes = (STAxisTypes) get_default_attribute_value(qNameArr[1]);
            }
        }
        return sTAxisTypes;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public STUnsignedInts xgetCnt() {
        STUnsignedInts sTUnsignedInts;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTUnsignedInts = (STUnsignedInts) typeStore.find_attribute_user(qNameArr[5]);
            if (sTUnsignedInts == null) {
                sTUnsignedInts = (STUnsignedInts) get_default_attribute_value(qNameArr[5]);
            }
        }
        return sTUnsignedInts;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public STBooleans xgetHideLastTrans() {
        STBooleans sTBooleans;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTBooleans = (STBooleans) typeStore.find_attribute_user(qNameArr[3]);
            if (sTBooleans == null) {
                sTBooleans = (STBooleans) get_default_attribute_value(qNameArr[3]);
            }
        }
        return sTBooleans;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public STElementTypes xgetPtType() {
        STElementTypes sTElementTypes;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTElementTypes = (STElementTypes) typeStore.find_attribute_user(qNameArr[2]);
            if (sTElementTypes == null) {
                sTElementTypes = (STElementTypes) get_default_attribute_value(qNameArr[2]);
            }
        }
        return sTElementTypes;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public STInts xgetSt() {
        STInts sTInts;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTInts = (STInts) typeStore.find_attribute_user(qNameArr[4]);
            if (sTInts == null) {
                sTInts = (STInts) get_default_attribute_value(qNameArr[4]);
            }
        }
        return sTInts;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public STInts xgetStep() {
        STInts sTInts;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTInts = (STInts) typeStore.find_attribute_user(qNameArr[6]);
            if (sTInts == null) {
                sTInts = (STInts) get_default_attribute_value(qNameArr[6]);
            }
        }
        return sTInts;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void xsetAxis(STAxisTypes sTAxisTypes) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAxisTypes sTAxisTypes2 = (STAxisTypes) typeStore.find_attribute_user(qNameArr[1]);
            if (sTAxisTypes2 == null) {
                sTAxisTypes2 = (STAxisTypes) get_store().add_attribute_user(qNameArr[1]);
            }
            sTAxisTypes2.set(sTAxisTypes);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void xsetCnt(STUnsignedInts sTUnsignedInts) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STUnsignedInts sTUnsignedInts2 = (STUnsignedInts) typeStore.find_attribute_user(qNameArr[5]);
            if (sTUnsignedInts2 == null) {
                sTUnsignedInts2 = (STUnsignedInts) get_store().add_attribute_user(qNameArr[5]);
            }
            sTUnsignedInts2.set(sTUnsignedInts);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void xsetHideLastTrans(STBooleans sTBooleans) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBooleans sTBooleans2 = (STBooleans) typeStore.find_attribute_user(qNameArr[3]);
            if (sTBooleans2 == null) {
                sTBooleans2 = (STBooleans) get_store().add_attribute_user(qNameArr[3]);
            }
            sTBooleans2.set(sTBooleans);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void xsetPtType(STElementTypes sTElementTypes) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STElementTypes sTElementTypes2 = (STElementTypes) typeStore.find_attribute_user(qNameArr[2]);
            if (sTElementTypes2 == null) {
                sTElementTypes2 = (STElementTypes) get_store().add_attribute_user(qNameArr[2]);
            }
            sTElementTypes2.set(sTElementTypes);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void xsetSt(STInts sTInts) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STInts sTInts2 = (STInts) typeStore.find_attribute_user(qNameArr[4]);
            if (sTInts2 == null) {
                sTInts2 = (STInts) get_store().add_attribute_user(qNameArr[4]);
            }
            sTInts2.set(sTInts);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf
    public void xsetStep(STInts sTInts) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STInts sTInts2 = (STInts) typeStore.find_attribute_user(qNameArr[6]);
            if (sTInts2 == null) {
                sTInts2 = (STInts) get_store().add_attribute_user(qNameArr[6]);
            }
            sTInts2.set(sTInts);
        }
    }
}
