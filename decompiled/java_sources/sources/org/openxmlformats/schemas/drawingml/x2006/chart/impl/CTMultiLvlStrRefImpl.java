package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import com.miui.penengine.p015e.C6997f;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef;

/* loaded from: classes14.dex */
public class CTMultiLvlStrRefImpl extends XmlComplexContentImpl implements CTMultiLvlStrRef {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, C6997f.f39671c), new QName(XSSFRelation.NS_CHART, "multiLvlStrCache"), new QName(XSSFRelation.NS_CHART, "extLst")};
    private static final long serialVersionUID = 1;

    public CTMultiLvlStrRefImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public CTMultiLvlStrData addNewMultiLvlStrCache() {
        CTMultiLvlStrData cTMultiLvlStrData;
        synchronized (monitor()) {
            check_orphaned();
            cTMultiLvlStrData = (CTMultiLvlStrData) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTMultiLvlStrData;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public String getF() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public CTMultiLvlStrData getMultiLvlStrCache() {
        CTMultiLvlStrData cTMultiLvlStrData;
        synchronized (monitor()) {
            check_orphaned();
            cTMultiLvlStrData = (CTMultiLvlStrData) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTMultiLvlStrData == null) {
                cTMultiLvlStrData = null;
            }
        }
        return cTMultiLvlStrData;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public boolean isSetMultiLvlStrCache() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public void setF(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public void setMultiLvlStrCache(CTMultiLvlStrData cTMultiLvlStrData) {
        generatedSetterHelperImpl(cTMultiLvlStrData, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public void unsetMultiLvlStrCache() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public XmlString xgetF() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrRef
    public void xsetF(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_element_user(qNameArr[0], 0);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_element_user(qNameArr[0]);
            }
            xmlString2.set(xmlString);
        }
    }
}
