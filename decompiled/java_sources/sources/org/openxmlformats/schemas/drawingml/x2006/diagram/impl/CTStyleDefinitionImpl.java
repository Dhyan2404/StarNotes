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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDCategories;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDDescription;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTSDName;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleLabel;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTStyleDefinitionImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D;

/* loaded from: classes14.dex */
public class CTStyleDefinitionImpl extends XmlComplexContentImpl implements CTStyleDefinition {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "title"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "desc"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "catLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "scene3d"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "styleLbl"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", CouchFieldKey.KEY_UNIQUE_ID), new QName("", "minVer")};
    private static final long serialVersionUID = 1;

    public CTStyleDefinitionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTSDCategories addNewCatLst() {
        CTSDCategories cTSDCategories;
        synchronized (monitor()) {
            check_orphaned();
            cTSDCategories = (CTSDCategories) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTSDCategories;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTSDDescription addNewDesc() {
        CTSDDescription cTSDDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTSDDescription = (CTSDDescription) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSDDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTScene3D addNewScene3D() {
        CTScene3D cTScene3D;
        synchronized (monitor()) {
            check_orphaned();
            cTScene3D = (CTScene3D) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTScene3D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTStyleLabel addNewStyleLbl() {
        CTStyleLabel cTStyleLabel;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleLabel = (CTStyleLabel) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTStyleLabel;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTSDName addNewTitle() {
        CTSDName cTSDName;
        synchronized (monitor()) {
            check_orphaned();
            cTSDName = (CTSDName) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSDName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTSDDescription[] getDescArray() {
        return (CTSDDescription[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTSDDescription[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public List<CTSDDescription> getDescList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j5c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStyleDefinitionImpl.this.getDescArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k5c
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTStyleDefinitionImpl.this.setDescArray(((Integer) obj).intValue(), (CTSDDescription) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l5c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStyleDefinitionImpl.this.insertNewDesc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m5c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTStyleDefinitionImpl.this.removeDesc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n5c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTStyleDefinitionImpl.this.sizeOfDescArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public String getMinVer() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTScene3D getScene3D() {
        CTScene3D cTScene3D;
        synchronized (monitor()) {
            check_orphaned();
            cTScene3D = (CTScene3D) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTScene3D == null) {
                cTScene3D = null;
            }
        }
        return cTScene3D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTStyleLabel[] getStyleLblArray() {
        return (CTStyleLabel[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTStyleLabel[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public List<CTStyleLabel> getStyleLblList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a5c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStyleDefinitionImpl.this.getStyleLblArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b5c
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTStyleDefinitionImpl.this.setStyleLblArray(((Integer) obj).intValue(), (CTStyleLabel) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c5c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStyleDefinitionImpl.this.insertNewStyleLbl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d5c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTStyleDefinitionImpl.this.removeStyleLbl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e5c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTStyleDefinitionImpl.this.sizeOfStyleLblArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTSDName[] getTitleArray() {
        return (CTSDName[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSDName[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public List<CTSDName> getTitleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.z4c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStyleDefinitionImpl.this.getTitleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f5c
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTStyleDefinitionImpl.this.setTitleArray(((Integer) obj).intValue(), (CTSDName) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g5c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStyleDefinitionImpl.this.insertNewTitle(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h5c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTStyleDefinitionImpl.this.removeTitle(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i5c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTStyleDefinitionImpl.this.sizeOfTitleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public String getUniqueId() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTSDDescription insertNewDesc(int i) {
        CTSDDescription cTSDDescription;
        synchronized (monitor()) {
            check_orphaned();
            cTSDDescription = (CTSDDescription) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTSDDescription;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTStyleLabel insertNewStyleLbl(int i) {
        CTStyleLabel cTStyleLabel;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleLabel = (CTStyleLabel) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTStyleLabel;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTSDName insertNewTitle(int i) {
        CTSDName cTSDName;
        synchronized (monitor()) {
            check_orphaned();
            cTSDName = (CTSDName) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSDName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public boolean isSetCatLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public boolean isSetMinVer() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public boolean isSetScene3D() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public boolean isSetUniqueId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void removeDesc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void removeStyleLbl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void removeTitle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void setCatLst(CTSDCategories cTSDCategories) {
        generatedSetterHelperImpl(cTSDCategories, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void setDescArray(CTSDDescription[] cTSDDescriptionArr) {
        check_orphaned();
        arraySetterHelper(cTSDDescriptionArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void setMinVer(String str) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void setScene3D(CTScene3D cTScene3D) {
        generatedSetterHelperImpl(cTScene3D, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void setStyleLblArray(CTStyleLabel[] cTStyleLabelArr) {
        check_orphaned();
        arraySetterHelper(cTStyleLabelArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void setTitleArray(CTSDName[] cTSDNameArr) {
        check_orphaned();
        arraySetterHelper(cTSDNameArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void setUniqueId(String str) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public int sizeOfDescArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public int sizeOfStyleLblArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public int sizeOfTitleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void unsetCatLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void unsetMinVer() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void unsetScene3D() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void unsetUniqueId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public XmlString xgetMinVer() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public XmlString xgetUniqueId() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void xsetMinVer(XmlString xmlString) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void xsetUniqueId(XmlString xmlString) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public CTStyleLabel getStyleLblArray(int i) {
        CTStyleLabel cTStyleLabel;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleLabel = (CTStyleLabel) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTStyleLabel == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTStyleLabel;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void setDescArray(int i, CTSDDescription cTSDDescription) {
        generatedSetterHelperImpl(cTSDDescription, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void setStyleLblArray(int i, CTStyleLabel cTStyleLabel) {
        generatedSetterHelperImpl(cTStyleLabel, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition
    public void setTitleArray(int i, CTSDName cTSDName) {
        generatedSetterHelperImpl(cTSDName, PROPERTY_QNAME[0], i, (short) 2);
    }
}
