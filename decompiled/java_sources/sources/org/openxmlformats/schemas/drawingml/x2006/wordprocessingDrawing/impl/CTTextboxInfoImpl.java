package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTxbxContent;

/* loaded from: classes14.dex */
public class CTTextboxInfoImpl extends XmlComplexContentImpl implements CTTextboxInfo {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "txbxContent"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "extLst"), new QName("", "id")};
    private static final long serialVersionUID = 1;

    public CTTextboxInfoImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public CTTxbxContent addNewTxbxContent() {
        CTTxbxContent cTTxbxContent;
        synchronized (monitor()) {
            check_orphaned();
            cTTxbxContent = (CTTxbxContent) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTxbxContent;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public int getId() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public CTTxbxContent getTxbxContent() {
        CTTxbxContent cTTxbxContent;
        synchronized (monitor()) {
            check_orphaned();
            cTTxbxContent = (CTTxbxContent) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTxbxContent == null) {
                cTTxbxContent = null;
            }
        }
        return cTTxbxContent;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public void setId(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public void setTxbxContent(CTTxbxContent cTTxbxContent) {
        generatedSetterHelperImpl(cTTxbxContent, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public XmlUnsignedShort xgetId() {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlUnsignedShort = (XmlUnsignedShort) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlUnsignedShort == null) {
                xmlUnsignedShort = (XmlUnsignedShort) get_default_attribute_value(qNameArr[2]);
            }
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTTextboxInfo
    public void xsetId(XmlUnsignedShort xmlUnsignedShort) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedShort xmlUnsignedShort2 = (XmlUnsignedShort) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlUnsignedShort2 == null) {
                xmlUnsignedShort2 = (XmlUnsignedShort) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlUnsignedShort2.set(xmlUnsignedShort);
        }
    }
}
