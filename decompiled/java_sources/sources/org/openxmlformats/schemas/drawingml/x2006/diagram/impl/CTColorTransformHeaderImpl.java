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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategories;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTDescription;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTName;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTColorTransformHeaderImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTColorTransformHeaderImpl extends XmlComplexContentImpl implements CTColorTransformHeader {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "title"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "desc"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "catLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", CouchFieldKey.KEY_UNIQUE_ID), new QName("", "minVer"), new QName("", HWREngineConstant.Constant.RES_ID)};
    private static final long serialVersionUID = 1;

    public CTColorTransformHeaderImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public CTCTCategories addNewCatLst() {
        CTCTCategories cTCTCategories;
        synchronized (monitor()) {
            check_orphaned();
            cTCTCategories = (CTCTCategories) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTCTCategories;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public CTCTDescription addNewDesc() {
        CTCTDescription cTCTDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTCTDescription = (CTCTDescription) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTCTDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public CTCTName addNewTitle() {
        CTCTName cTCTName;
        synchronized (monitor()) {
            check_orphaned();
            cTCTName = (CTCTName) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCTName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public CTCTCategories getCatLst() {
        CTCTCategories cTCTCategories;
        synchronized (monitor()) {
            check_orphaned();
            cTCTCategories = (CTCTCategories) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTCTCategories == null) {
                cTCTCategories = null;
            }
        }
        return cTCTCategories;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public CTCTDescription[] getDescArray() {
        return (CTCTDescription[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTCTDescription[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public List<CTCTDescription> getDescList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.o02
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorTransformHeaderImpl.this.getDescArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.p02
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorTransformHeaderImpl.this.setDescArray(((Integer) obj).intValue(), (CTCTDescription) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.q02
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorTransformHeaderImpl.this.insertNewDesc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.r02
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorTransformHeaderImpl.this.removeDesc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.s02
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorTransformHeaderImpl.this.sizeOfDescArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public String getMinVer() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public CTCTName[] getTitleArray() {
        return (CTCTName[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCTName[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public List<CTCTName> getTitleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t02
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorTransformHeaderImpl.this.getTitleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u02
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorTransformHeaderImpl.this.setTitleArray(((Integer) obj).intValue(), (CTCTName) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v02
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorTransformHeaderImpl.this.insertNewTitle(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w02
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorTransformHeaderImpl.this.removeTitle(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x02
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorTransformHeaderImpl.this.sizeOfTitleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public String getUniqueId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public CTCTDescription insertNewDesc(int i) {
        CTCTDescription cTCTDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTCTDescription = (CTCTDescription) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTCTDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public CTCTName insertNewTitle(int i) {
        CTCTName cTCTName;
        synchronized (monitor()) {
            check_orphaned();
            cTCTName = (CTCTName) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCTName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public boolean isSetCatLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public boolean isSetMinVer() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public boolean isSetResId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public void removeDesc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public void removeTitle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public void setCatLst(CTCTCategories cTCTCategories) {
        generatedSetterHelperImpl(cTCTCategories, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public void setDescArray(CTCTDescription[] cTCTDescriptionArr) {
        check_orphaned();
        arraySetterHelper(cTCTDescriptionArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public void setTitleArray(CTCTName[] cTCTNameArr) {
        check_orphaned();
        arraySetterHelper(cTCTNameArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public int sizeOfDescArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public int sizeOfTitleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public void unsetCatLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public void unsetMinVer() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public void unsetResId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public XmlString xgetMinVer() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public XmlString xgetUniqueId() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public CTCTDescription getDescArray(int i) {
        CTCTDescription cTCTDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTCTDescription = (CTCTDescription) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTCTDescription == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCTDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public CTCTName getTitleArray(int i) {
        CTCTName cTCTName;
        synchronized (monitor()) {
            check_orphaned();
            cTCTName = (CTCTName) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCTName == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCTName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public void setDescArray(int i, CTCTDescription cTCTDescription) {
        generatedSetterHelperImpl(cTCTDescription, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader
    public void setTitleArray(int i, CTCTName cTCTName) {
        generatedSetterHelperImpl(cTCTName, PROPERTY_QNAME[0], i, (short) 2);
    }
}
