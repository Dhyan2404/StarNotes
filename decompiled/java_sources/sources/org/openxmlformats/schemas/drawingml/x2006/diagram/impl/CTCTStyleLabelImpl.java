package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTCTStyleLabelImpl extends XmlComplexContentImpl implements CTCTStyleLabel {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "fillClrLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "linClrLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "effectClrLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "txLinClrLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "txFillClrLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "txEffectClrLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", "name")};
    private static final long serialVersionUID = 1;

    public CTCTStyleLabelImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTColors addNewEffectClrLst() {
        CTColors cTColors;
        synchronized (monitor()) {
            check_orphaned();
            cTColors = (CTColors) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTColors;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTColors addNewFillClrLst() {
        CTColors cTColors;
        synchronized (monitor()) {
            check_orphaned();
            cTColors = (CTColors) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTColors;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTColors addNewLinClrLst() {
        CTColors cTColors;
        synchronized (monitor()) {
            check_orphaned();
            cTColors = (CTColors) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTColors;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTColors addNewTxEffectClrLst() {
        CTColors cTColors;
        synchronized (monitor()) {
            check_orphaned();
            cTColors = (CTColors) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTColors;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTColors addNewTxFillClrLst() {
        CTColors cTColors;
        synchronized (monitor()) {
            check_orphaned();
            cTColors = (CTColors) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTColors;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTColors addNewTxLinClrLst() {
        CTColors cTColors;
        synchronized (monitor()) {
            check_orphaned();
            cTColors = (CTColors) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTColors;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTColors getEffectClrLst() {
        CTColors cTColors;
        synchronized (monitor()) {
            check_orphaned();
            cTColors = (CTColors) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTColors == null) {
                cTColors = null;
            }
        }
        return cTColors;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTColors getFillClrLst() {
        CTColors cTColors;
        synchronized (monitor()) {
            check_orphaned();
            cTColors = (CTColors) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTColors == null) {
                cTColors = null;
            }
        }
        return cTColors;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTColors getLinClrLst() {
        CTColors cTColors;
        synchronized (monitor()) {
            check_orphaned();
            cTColors = (CTColors) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTColors == null) {
                cTColors = null;
            }
        }
        return cTColors;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public String getName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTColors getTxEffectClrLst() {
        CTColors cTColors;
        synchronized (monitor()) {
            check_orphaned();
            cTColors = (CTColors) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTColors == null) {
                cTColors = null;
            }
        }
        return cTColors;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTColors getTxFillClrLst() {
        CTColors cTColors;
        synchronized (monitor()) {
            check_orphaned();
            cTColors = (CTColors) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTColors == null) {
                cTColors = null;
            }
        }
        return cTColors;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public CTColors getTxLinClrLst() {
        CTColors cTColors;
        synchronized (monitor()) {
            check_orphaned();
            cTColors = (CTColors) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTColors == null) {
                cTColors = null;
            }
        }
        return cTColors;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public boolean isSetEffectClrLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public boolean isSetFillClrLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public boolean isSetLinClrLst() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public boolean isSetTxEffectClrLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public boolean isSetTxFillClrLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public boolean isSetTxLinClrLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void setEffectClrLst(CTColors cTColors) {
        generatedSetterHelperImpl(cTColors, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void setFillClrLst(CTColors cTColors) {
        generatedSetterHelperImpl(cTColors, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void setLinClrLst(CTColors cTColors) {
        generatedSetterHelperImpl(cTColors, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void setName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void setTxEffectClrLst(CTColors cTColors) {
        generatedSetterHelperImpl(cTColors, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void setTxFillClrLst(CTColors cTColors) {
        generatedSetterHelperImpl(cTColors, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void setTxLinClrLst(CTColors cTColors) {
        generatedSetterHelperImpl(cTColors, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void unsetEffectClrLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void unsetFillClrLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void unsetLinClrLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void unsetTxEffectClrLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void unsetTxFillClrLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void unsetTxLinClrLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public XmlString xgetName() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel
    public void xsetName(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlString2.set(xmlString);
        }
    }
}
