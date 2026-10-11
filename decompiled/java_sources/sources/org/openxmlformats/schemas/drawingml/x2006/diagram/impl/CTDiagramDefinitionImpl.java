package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategories;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTDescription;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTName;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTSampleData;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTDiagramDefinitionImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTDiagramDefinitionImpl extends XmlComplexContentImpl implements CTDiagramDefinition {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "title"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "desc"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "catLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "sampData"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "styleData"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "clrData"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "layoutNode"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", CouchFieldKey.KEY_UNIQUE_ID), new QName("", "minVer"), new QName("", "defStyle")};
    private static final long serialVersionUID = 1;

    public CTDiagramDefinitionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTCategories addNewCatLst() {
        CTCategories cTCategories;
        synchronized (monitor()) {
            check_orphaned();
            cTCategories = (CTCategories) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTCategories;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTSampleData addNewClrData() {
        CTSampleData cTSampleData;
        synchronized (monitor()) {
            check_orphaned();
            cTSampleData = (CTSampleData) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTSampleData;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTDescription addNewDesc() {
        CTDescription cTDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTDescription = (CTDescription) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTLayoutNode addNewLayoutNode() {
        CTLayoutNode cTLayoutNode;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutNode = (CTLayoutNode) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTLayoutNode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTSampleData addNewSampData() {
        CTSampleData cTSampleData;
        synchronized (monitor()) {
            check_orphaned();
            cTSampleData = (CTSampleData) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTSampleData;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTSampleData addNewStyleData() {
        CTSampleData cTSampleData;
        synchronized (monitor()) {
            check_orphaned();
            cTSampleData = (CTSampleData) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTSampleData;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTName addNewTitle() {
        CTName cTName;
        synchronized (monitor()) {
            check_orphaned();
            cTName = (CTName) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTCategories getCatLst() {
        CTCategories cTCategories;
        synchronized (monitor()) {
            check_orphaned();
            cTCategories = (CTCategories) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTCategories == null) {
                cTCategories = null;
            }
        }
        return cTCategories;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTSampleData getClrData() {
        CTSampleData cTSampleData;
        synchronized (monitor()) {
            check_orphaned();
            cTSampleData = (CTSampleData) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTSampleData == null) {
                cTSampleData = null;
            }
        }
        return cTSampleData;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public String getDefStyle() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[10]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTDescription[] getDescArray() {
        return (CTDescription[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTDescription[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public List<CTDescription> getDescList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.v73
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDiagramDefinitionImpl.this.getDescArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.w73
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDiagramDefinitionImpl.this.setDescArray(((Integer) obj).intValue(), (CTDescription) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.x73
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDiagramDefinitionImpl.this.insertNewDesc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.y73
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDiagramDefinitionImpl.this.removeDesc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.z73
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDiagramDefinitionImpl.this.sizeOfDescArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTLayoutNode getLayoutNode() {
        CTLayoutNode cTLayoutNode;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutNode = (CTLayoutNode) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTLayoutNode == null) {
                cTLayoutNode = null;
            }
        }
        return cTLayoutNode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public String getMinVer() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[9]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTSampleData getSampData() {
        CTSampleData cTSampleData;
        synchronized (monitor()) {
            check_orphaned();
            cTSampleData = (CTSampleData) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTSampleData == null) {
                cTSampleData = null;
            }
        }
        return cTSampleData;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTSampleData getStyleData() {
        CTSampleData cTSampleData;
        synchronized (monitor()) {
            check_orphaned();
            cTSampleData = (CTSampleData) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTSampleData == null) {
                cTSampleData = null;
            }
        }
        return cTSampleData;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTName[] getTitleArray() {
        return (CTName[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTName[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public List<CTName> getTitleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a83
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDiagramDefinitionImpl.this.getTitleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b83
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDiagramDefinitionImpl.this.setTitleArray(((Integer) obj).intValue(), (CTName) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c83
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDiagramDefinitionImpl.this.insertNewTitle(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d83
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDiagramDefinitionImpl.this.removeTitle(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e83
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDiagramDefinitionImpl.this.sizeOfTitleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public String getUniqueId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[8]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTDescription insertNewDesc(int i) {
        CTDescription cTDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTDescription = (CTDescription) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTName insertNewTitle(int i) {
        CTName cTName;
        synchronized (monitor()) {
            check_orphaned();
            cTName = (CTName) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public boolean isSetCatLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public boolean isSetClrData() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public boolean isSetDefStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public boolean isSetMinVer() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public boolean isSetSampData() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public boolean isSetStyleData() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public boolean isSetUniqueId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void removeDesc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void removeTitle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setCatLst(CTCategories cTCategories) {
        generatedSetterHelperImpl(cTCategories, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setClrData(CTSampleData cTSampleData) {
        generatedSetterHelperImpl(cTSampleData, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setDefStyle(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setDescArray(CTDescription[] cTDescriptionArr) {
        check_orphaned();
        arraySetterHelper(cTDescriptionArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setLayoutNode(CTLayoutNode cTLayoutNode) {
        generatedSetterHelperImpl(cTLayoutNode, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setMinVer(String str) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setSampData(CTSampleData cTSampleData) {
        generatedSetterHelperImpl(cTSampleData, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setStyleData(CTSampleData cTSampleData) {
        generatedSetterHelperImpl(cTSampleData, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setTitleArray(CTName[] cTNameArr) {
        check_orphaned();
        arraySetterHelper(cTNameArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setUniqueId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public int sizeOfDescArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public int sizeOfTitleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void unsetCatLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void unsetClrData() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void unsetDefStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void unsetMinVer() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void unsetSampData() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void unsetStyleData() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void unsetUniqueId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public XmlString xgetDefStyle() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlString = (XmlString) typeStore.find_attribute_user(qNameArr[10]);
            if (xmlString == null) {
                xmlString = (XmlString) get_default_attribute_value(qNameArr[10]);
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public XmlString xgetMinVer() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[9]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public XmlString xgetUniqueId() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlString = (XmlString) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlString == null) {
                xmlString = (XmlString) get_default_attribute_value(qNameArr[8]);
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void xsetDefStyle(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[10]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[10]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void xsetMinVer(XmlString xmlString) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void xsetUniqueId(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[8]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTDescription getDescArray(int i) {
        CTDescription cTDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTDescription = (CTDescription) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTDescription == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public CTName getTitleArray(int i) {
        CTName cTName;
        synchronized (monitor()) {
            check_orphaned();
            cTName = (CTName) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTName == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setDescArray(int i, CTDescription cTDescription) {
        generatedSetterHelperImpl(cTDescription, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition
    public void setTitleArray(int i, CTName cTName) {
        generatedSetterHelperImpl(cTName, PROPERTY_QNAME[0], i, (short) 2);
    }
}
