package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTParameter;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STAlgorithmType;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTAlgorithmImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTAlgorithmImpl extends XmlComplexContentImpl implements CTAlgorithm {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, Constants.ELEMNAME_PARAMVARIABLE_STRING), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", "type"), new QName("", "rev")};
    private static final long serialVersionUID = 1;

    public CTAlgorithmImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public CTParameter addNewParam() {
        CTParameter cTParameter;
        synchronized (monitor()) {
            check_orphaned();
            cTParameter = (CTParameter) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTParameter;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public CTParameter[] getParamArray() {
        return (CTParameter[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTParameter[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public List<CTParameter> getParamList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.c40
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAlgorithmImpl.this.getParamArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d40
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAlgorithmImpl.this.setParamArray(((Integer) obj).intValue(), (CTParameter) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e40
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAlgorithmImpl.this.insertNewParam(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.f40
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAlgorithmImpl.this.removeParam(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.g40
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAlgorithmImpl.this.sizeOfParamArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public long getRev() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[3]);
            }
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public STAlgorithmType.Enum getType() {
        STAlgorithmType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            r3 = simpleValue == null ? null : (STAlgorithmType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public CTParameter insertNewParam(int i) {
        CTParameter cTParameter;
        synchronized (monitor()) {
            check_orphaned();
            cTParameter = (CTParameter) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTParameter;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public boolean isSetRev() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public void removeParam(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public void setParamArray(CTParameter[] cTParameterArr) {
        check_orphaned();
        arraySetterHelper(cTParameterArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public void setRev(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public void setType(STAlgorithmType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public int sizeOfParamArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public void unsetRev() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public XmlUnsignedInt xgetRev() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlUnsignedInt = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlUnsignedInt == null) {
                xmlUnsignedInt = (XmlUnsignedInt) get_default_attribute_value(qNameArr[3]);
            }
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public STAlgorithmType xgetType() {
        STAlgorithmType sTAlgorithmType;
        synchronized (monitor()) {
            check_orphaned();
            sTAlgorithmType = (STAlgorithmType) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTAlgorithmType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public void xsetRev(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public void xsetType(STAlgorithmType sTAlgorithmType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAlgorithmType sTAlgorithmType2 = (STAlgorithmType) typeStore.find_attribute_user(qNameArr[2]);
            if (sTAlgorithmType2 == null) {
                sTAlgorithmType2 = (STAlgorithmType) get_store().add_attribute_user(qNameArr[2]);
            }
            sTAlgorithmType2.set(sTAlgorithmType);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public CTParameter getParamArray(int i) {
        CTParameter cTParameter;
        synchronized (monitor()) {
            check_orphaned();
            cTParameter = (CTParameter) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTParameter == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTParameter;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm
    public void setParamArray(int i, CTParameter cTParameter) {
        generatedSetterHelperImpl(cTParameter, PROPERTY_QNAME[0], i, (short) 2);
    }
}
