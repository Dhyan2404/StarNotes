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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategories;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDDescription;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDName;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTStyleDefinitionHeaderImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTStyleDefinitionHeaderImpl extends XmlComplexContentImpl implements CTStyleDefinitionHeader {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "title"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "desc"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "catLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", CouchFieldKey.KEY_UNIQUE_ID), new QName("", "minVer"), new QName("", HWREngineConstant.Constant.RES_ID)};
    private static final long serialVersionUID = 1;

    public CTStyleDefinitionHeaderImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public CTSDCategories addNewCatLst() {
        CTSDCategories cTSDCategories;
        synchronized (monitor()) {
            check_orphaned();
            cTSDCategories = (CTSDCategories) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTSDCategories;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public CTSDDescription addNewDesc() {
        CTSDDescription cTSDDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTSDDescription = (CTSDDescription) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSDDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public CTSDName addNewTitle() {
        CTSDName cTSDName;
        synchronized (monitor()) {
            check_orphaned();
            cTSDName = (CTSDName) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSDName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public CTSDCategories getCatLst() {
        CTSDCategories cTSDCategories;
        synchronized (monitor()) {
            check_orphaned();
            cTSDCategories = (CTSDCategories) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTSDCategories == null) {
                cTSDCategories = null;
            }
        }
        return cTSDCategories;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public CTSDDescription[] getDescArray() {
        return (CTSDDescription[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTSDDescription[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public List<CTSDDescription> getDescList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.p4c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStyleDefinitionHeaderImpl.this.getDescArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.q4c
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTStyleDefinitionHeaderImpl.this.setDescArray(((Integer) obj).intValue(), (CTSDDescription) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.r4c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStyleDefinitionHeaderImpl.this.insertNewDesc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.s4c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTStyleDefinitionHeaderImpl.this.removeDesc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.t4c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTStyleDefinitionHeaderImpl.this.sizeOfDescArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public String getMinVer() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public int getResId() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[6]);
            }
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public CTSDName[] getTitleArray() {
        return (CTSDName[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSDName[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public List<CTSDName> getTitleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k4c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStyleDefinitionHeaderImpl.this.getTitleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.l4c
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTStyleDefinitionHeaderImpl.this.setTitleArray(((Integer) obj).intValue(), (CTSDName) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.m4c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStyleDefinitionHeaderImpl.this.insertNewTitle(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.n4c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTStyleDefinitionHeaderImpl.this.removeTitle(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.o4c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTStyleDefinitionHeaderImpl.this.sizeOfTitleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public String getUniqueId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public CTSDDescription insertNewDesc(int i) {
        CTSDDescription cTSDDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTSDDescription = (CTSDDescription) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTSDDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public CTSDName insertNewTitle(int i) {
        CTSDName cTSDName;
        synchronized (monitor()) {
            check_orphaned();
            cTSDName = (CTSDName) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSDName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public boolean isSetCatLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public boolean isSetMinVer() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public boolean isSetResId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void removeDesc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void removeTitle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void setCatLst(CTSDCategories cTSDCategories) {
        generatedSetterHelperImpl(cTSDCategories, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void setDescArray(CTSDDescription[] cTSDDescriptionArr) {
        check_orphaned();
        arraySetterHelper(cTSDDescriptionArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void setResId(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void setTitleArray(CTSDName[] cTSDNameArr) {
        check_orphaned();
        arraySetterHelper(cTSDNameArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public int sizeOfDescArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public int sizeOfTitleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void unsetCatLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void unsetMinVer() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void unsetResId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public XmlString xgetMinVer() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public XmlInt xgetResId() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlInt = (XmlInt) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlInt == null) {
                xmlInt = (XmlInt) get_default_attribute_value(qNameArr[6]);
            }
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public XmlString xgetUniqueId() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void xsetResId(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlInt2.set(xmlInt);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public CTSDDescription getDescArray(int i) {
        CTSDDescription cTSDDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTSDDescription = (CTSDDescription) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTSDDescription == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSDDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public CTSDName getTitleArray(int i) {
        CTSDName cTSDName;
        synchronized (monitor()) {
            check_orphaned();
            cTSDName = (CTSDName) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSDName == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSDName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void setDescArray(int i, CTSDDescription cTSDDescription) {
        generatedSetterHelperImpl(cTSDDescription, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader
    public void setTitleArray(int i, CTSDName cTSDName) {
        generatedSetterHelperImpl(cTSDName, PROPERTY_QNAME[0], i, (short) 2);
    }
}
