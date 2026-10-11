package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sunia.commonv2.global.HWREngineConstant;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCategories;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTDescription;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTName;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTDiagramDefinitionHeaderImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTDiagramDefinitionHeaderImpl extends XmlComplexContentImpl implements CTDiagramDefinitionHeader {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "title"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "desc"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "catLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", CouchFieldKey.KEY_UNIQUE_ID), new QName("", "minVer"), new QName("", "defStyle"), new QName("", HWREngineConstant.Constant.RES_ID)};
    private static final long serialVersionUID = 1;

    public CTDiagramDefinitionHeaderImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public CTCategories addNewCatLst() {
        CTCategories cTCategories;
        synchronized (monitor()) {
            check_orphaned();
            cTCategories = (CTCategories) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTCategories;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public CTDescription addNewDesc() {
        CTDescription cTDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTDescription = (CTDescription) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public CTName addNewTitle() {
        CTName cTName;
        synchronized (monitor()) {
            check_orphaned();
            cTName = (CTName) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public String getDefStyle() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[6]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public CTDescription[] getDescArray() {
        return (CTDescription[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTDescription[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public List<CTDescription> getDescList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l73
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDiagramDefinitionHeaderImpl.this.getDescArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m73
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDiagramDefinitionHeaderImpl.this.setDescArray(((Integer) obj).intValue(), (CTDescription) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n73
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDiagramDefinitionHeaderImpl.this.insertNewDesc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o73
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDiagramDefinitionHeaderImpl.this.removeDesc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p73
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDiagramDefinitionHeaderImpl.this.sizeOfDescArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public String getMinVer() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public int getResId() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[7]);
            }
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public CTName[] getTitleArray() {
        return (CTName[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTName[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public List<CTName> getTitleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.g73
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDiagramDefinitionHeaderImpl.this.getTitleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h73
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDiagramDefinitionHeaderImpl.this.setTitleArray(((Integer) obj).intValue(), (CTName) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.i73
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDiagramDefinitionHeaderImpl.this.insertNewTitle(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.j73
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDiagramDefinitionHeaderImpl.this.removeTitle(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.k73
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDiagramDefinitionHeaderImpl.this.sizeOfTitleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public String getUniqueId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public CTDescription insertNewDesc(int i) {
        CTDescription cTDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTDescription = (CTDescription) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public CTName insertNewTitle(int i) {
        CTName cTName;
        synchronized (monitor()) {
            check_orphaned();
            cTName = (CTName) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public boolean isSetCatLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public boolean isSetDefStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public boolean isSetMinVer() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public boolean isSetResId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void removeDesc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void removeTitle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void setCatLst(CTCategories cTCategories) {
        generatedSetterHelperImpl(cTCategories, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void setDefStyle(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void setDescArray(CTDescription[] cTDescriptionArr) {
        check_orphaned();
        arraySetterHelper(cTDescriptionArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void setMinVer(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void setResId(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void setTitleArray(CTName[] cTNameArr) {
        check_orphaned();
        arraySetterHelper(cTNameArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void setUniqueId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public int sizeOfDescArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public int sizeOfTitleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void unsetCatLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void unsetDefStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void unsetMinVer() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void unsetResId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public XmlString xgetDefStyle() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlString = (XmlString) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlString == null) {
                xmlString = (XmlString) get_default_attribute_value(qNameArr[6]);
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public XmlString xgetMinVer() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public XmlInt xgetResId() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlInt = (XmlInt) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlInt == null) {
                xmlInt = (XmlInt) get_default_attribute_value(qNameArr[7]);
            }
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public XmlString xgetUniqueId() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void xsetDefStyle(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void xsetMinVer(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void xsetResId(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlInt2.set(xmlInt);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void xsetUniqueId(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void setDescArray(int i, CTDescription cTDescription) {
        generatedSetterHelperImpl(cTDescription, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader
    public void setTitleArray(int i, CTName cTName) {
        generatedSetterHelperImpl(cTName, PROPERTY_QNAME[0], i, (short) 2);
    }
}
