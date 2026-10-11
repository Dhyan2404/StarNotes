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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTCategories;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTDescription;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTName;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCTStyleLabel;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTColorTransformImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTColorTransformImpl extends XmlComplexContentImpl implements CTColorTransform {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "title"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "desc"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "catLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "styleLbl"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", CouchFieldKey.KEY_UNIQUE_ID), new QName("", "minVer")};
    private static final long serialVersionUID = 1;

    public CTColorTransformImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTCTCategories addNewCatLst() {
        CTCTCategories cTCTCategories;
        synchronized (monitor()) {
            check_orphaned();
            cTCTCategories = (CTCTCategories) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTCTCategories;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTCTDescription addNewDesc() {
        CTCTDescription cTCTDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTCTDescription = (CTCTDescription) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTCTDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTCTStyleLabel addNewStyleLbl() {
        CTCTStyleLabel cTCTStyleLabel;
        synchronized (monitor()) {
            check_orphaned();
            cTCTStyleLabel = (CTCTStyleLabel) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTCTStyleLabel;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTCTName addNewTitle() {
        CTCTName cTCTName;
        synchronized (monitor()) {
            check_orphaned();
            cTCTName = (CTCTName) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCTName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTCTDescription[] getDescArray() {
        return (CTCTDescription[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTCTDescription[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public List<CTCTDescription> getDescList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.n12
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorTransformImpl.this.getDescArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o12
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorTransformImpl.this.setDescArray(((Integer) obj).intValue(), (CTCTDescription) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.p12
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorTransformImpl.this.insertNewDesc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.q12
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorTransformImpl.this.removeDesc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.r12
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorTransformImpl.this.sizeOfDescArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public String getMinVer() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTCTStyleLabel[] getStyleLblArray() {
        return (CTCTStyleLabel[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTCTStyleLabel[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public List<CTCTStyleLabel> getStyleLblList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d12
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorTransformImpl.this.getStyleLblArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j12
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorTransformImpl.this.setStyleLblArray(((Integer) obj).intValue(), (CTCTStyleLabel) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k12
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorTransformImpl.this.insertNewStyleLbl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l12
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorTransformImpl.this.removeStyleLbl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m12
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorTransformImpl.this.sizeOfStyleLblArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTCTName[] getTitleArray() {
        return (CTCTName[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCTName[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public List<CTCTName> getTitleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e12
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorTransformImpl.this.getTitleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f12
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorTransformImpl.this.setTitleArray(((Integer) obj).intValue(), (CTCTName) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g12
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorTransformImpl.this.insertNewTitle(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h12
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorTransformImpl.this.removeTitle(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i12
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorTransformImpl.this.sizeOfTitleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public String getUniqueId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[5]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTCTDescription insertNewDesc(int i) {
        CTCTDescription cTCTDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTCTDescription = (CTCTDescription) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTCTDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTCTStyleLabel insertNewStyleLbl(int i) {
        CTCTStyleLabel cTCTStyleLabel;
        synchronized (monitor()) {
            check_orphaned();
            cTCTStyleLabel = (CTCTStyleLabel) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTCTStyleLabel;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTCTName insertNewTitle(int i) {
        CTCTName cTCTName;
        synchronized (monitor()) {
            check_orphaned();
            cTCTName = (CTCTName) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCTName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public boolean isSetCatLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public boolean isSetMinVer() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public boolean isSetUniqueId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void removeDesc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void removeStyleLbl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void removeTitle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void setCatLst(CTCTCategories cTCTCategories) {
        generatedSetterHelperImpl(cTCTCategories, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void setDescArray(CTCTDescription[] cTCTDescriptionArr) {
        check_orphaned();
        arraySetterHelper(cTCTDescriptionArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void setMinVer(String str) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void setStyleLblArray(CTCTStyleLabel[] cTCTStyleLabelArr) {
        check_orphaned();
        arraySetterHelper(cTCTStyleLabelArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void setTitleArray(CTCTName[] cTCTNameArr) {
        check_orphaned();
        arraySetterHelper(cTCTNameArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void setUniqueId(String str) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public int sizeOfDescArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public int sizeOfStyleLblArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public int sizeOfTitleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void unsetCatLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void unsetMinVer() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void unsetUniqueId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public XmlString xgetMinVer() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public XmlString xgetUniqueId() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlString = (XmlString) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlString == null) {
                xmlString = (XmlString) get_default_attribute_value(qNameArr[5]);
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void xsetMinVer(XmlString xmlString) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void xsetUniqueId(XmlString xmlString) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public CTCTStyleLabel getStyleLblArray(int i) {
        CTCTStyleLabel cTCTStyleLabel;
        synchronized (monitor()) {
            check_orphaned();
            cTCTStyleLabel = (CTCTStyleLabel) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTCTStyleLabel == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCTStyleLabel;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void setDescArray(int i, CTCTDescription cTCTDescription) {
        generatedSetterHelperImpl(cTCTDescription, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void setStyleLblArray(int i, CTCTStyleLabel cTCTStyleLabel) {
        generatedSetterHelperImpl(cTCTStyleLabel, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform
    public void setTitleArray(int i, CTCTName cTCTName) {
        generatedSetterHelperImpl(cTCTName, PROPERTY_QNAME[0], i, (short) 2);
    }
}
