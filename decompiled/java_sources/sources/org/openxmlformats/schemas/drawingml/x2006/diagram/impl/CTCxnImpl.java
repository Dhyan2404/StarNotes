package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STCxnType;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STModelId;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTCxnImpl extends XmlComplexContentImpl implements CTCxn {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", "modelId"), new QName("", "type"), new QName("", "srcId"), new QName("", "destId"), new QName("", "srcOrd"), new QName("", "destOrd"), new QName("", "parTransId"), new QName("", "sibTransId"), new QName("", "presId")};
    private static final long serialVersionUID = 1;

    public CTCxnImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public Object getDestId() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public long getDestOrd() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public Object getModelId() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public Object getParTransId() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[7]);
            }
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public String getPresId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[9]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public Object getSibTransId() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[8]);
            }
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public Object getSrcId() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public long getSrcOrd() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public STCxnType.Enum getType() {
        STCxnType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            r5 = simpleValue == null ? null : (STCxnType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public boolean isSetParTransId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public boolean isSetPresId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public boolean isSetSibTransId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void setDestId(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void setDestOrd(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void setModelId(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void setParTransId(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void setPresId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void setSibTransId(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void setSrcId(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void setSrcOrd(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void setType(STCxnType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void unsetParTransId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void unsetPresId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void unsetSibTransId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public STModelId xgetDestId() {
        STModelId sTModelId;
        synchronized (monitor()) {
            check_orphaned();
            sTModelId = (STModelId) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return sTModelId;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public XmlUnsignedInt xgetDestOrd() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public STModelId xgetModelId() {
        STModelId sTModelId;
        synchronized (monitor()) {
            check_orphaned();
            sTModelId = (STModelId) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTModelId;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public STModelId xgetParTransId() {
        STModelId sTModelId;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTModelId = (STModelId) typeStore.find_attribute_user(qNameArr[7]);
            if (sTModelId == null) {
                sTModelId = (STModelId) get_default_attribute_value(qNameArr[7]);
            }
        }
        return sTModelId;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public XmlString xgetPresId() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlString = (XmlString) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlString == null) {
                xmlString = (XmlString) get_default_attribute_value(qNameArr[9]);
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public STModelId xgetSibTransId() {
        STModelId sTModelId;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTModelId = (STModelId) typeStore.find_attribute_user(qNameArr[8]);
            if (sTModelId == null) {
                sTModelId = (STModelId) get_default_attribute_value(qNameArr[8]);
            }
        }
        return sTModelId;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public STModelId xgetSrcId() {
        STModelId sTModelId;
        synchronized (monitor()) {
            check_orphaned();
            sTModelId = (STModelId) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTModelId;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public XmlUnsignedInt xgetSrcOrd() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public STCxnType xgetType() {
        STCxnType sTCxnType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTCxnType = (STCxnType) typeStore.find_attribute_user(qNameArr[2]);
            if (sTCxnType == null) {
                sTCxnType = (STCxnType) get_default_attribute_value(qNameArr[2]);
            }
        }
        return sTCxnType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void xsetDestId(STModelId sTModelId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STModelId sTModelId2 = (STModelId) typeStore.find_attribute_user(qNameArr[4]);
            if (sTModelId2 == null) {
                sTModelId2 = (STModelId) get_store().add_attribute_user(qNameArr[4]);
            }
            sTModelId2.set(sTModelId);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void xsetDestOrd(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void xsetModelId(STModelId sTModelId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STModelId sTModelId2 = (STModelId) typeStore.find_attribute_user(qNameArr[1]);
            if (sTModelId2 == null) {
                sTModelId2 = (STModelId) get_store().add_attribute_user(qNameArr[1]);
            }
            sTModelId2.set(sTModelId);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void xsetParTransId(STModelId sTModelId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STModelId sTModelId2 = (STModelId) typeStore.find_attribute_user(qNameArr[7]);
            if (sTModelId2 == null) {
                sTModelId2 = (STModelId) get_store().add_attribute_user(qNameArr[7]);
            }
            sTModelId2.set(sTModelId);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void xsetPresId(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void xsetSibTransId(STModelId sTModelId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STModelId sTModelId2 = (STModelId) typeStore.find_attribute_user(qNameArr[8]);
            if (sTModelId2 == null) {
                sTModelId2 = (STModelId) get_store().add_attribute_user(qNameArr[8]);
            }
            sTModelId2.set(sTModelId);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void xsetSrcId(STModelId sTModelId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STModelId sTModelId2 = (STModelId) typeStore.find_attribute_user(qNameArr[3]);
            if (sTModelId2 == null) {
                sTModelId2 = (STModelId) get_store().add_attribute_user(qNameArr[3]);
            }
            sTModelId2.set(sTModelId);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void xsetSrcOrd(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn
    public void xsetType(STCxnType sTCxnType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STCxnType sTCxnType2 = (STCxnType) typeStore.find_attribute_user(qNameArr[2]);
            if (sTCxnType2 == null) {
                sTCxnType2 = (STCxnType) get_store().add_attribute_user(qNameArr[2]);
            }
            sTCxnType2.set(sTCxnType);
        }
    }
}
