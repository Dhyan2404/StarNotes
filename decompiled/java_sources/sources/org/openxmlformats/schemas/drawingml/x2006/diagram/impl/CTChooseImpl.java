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
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTChooseImpl;

/* loaded from: classes14.dex */
public class CTChooseImpl extends XmlComplexContentImpl implements CTChoose {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, Constants.ELEMNAME_IF_STRING), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "else"), new QName("", "name")};
    private static final long serialVersionUID = 1;

    public CTChooseImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public CTOtherwise addNewElse() {
        CTOtherwise cTOtherwise;
        synchronized (monitor()) {
            check_orphaned();
            cTOtherwise = (CTOtherwise) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOtherwise;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public CTWhen addNewIf() {
        CTWhen cTWhen;
        synchronized (monitor()) {
            check_orphaned();
            cTWhen = (CTWhen) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTWhen;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public CTOtherwise getElse() {
        CTOtherwise cTOtherwise;
        synchronized (monitor()) {
            check_orphaned();
            cTOtherwise = (CTOtherwise) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTOtherwise == null) {
                cTOtherwise = null;
            }
        }
        return cTOtherwise;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public CTWhen[] getIfArray() {
        return (CTWhen[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTWhen[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public List<CTWhen> getIfList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d81
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTChooseImpl.this.getIfArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.e81
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTChooseImpl.this.setIfArray(((Integer) obj).intValue(), (CTWhen) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.f81
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTChooseImpl.this.insertNewIf(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.g81
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTChooseImpl.this.removeIf(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.h81
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTChooseImpl.this.sizeOfIfArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public String getName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public CTWhen insertNewIf(int i) {
        CTWhen cTWhen;
        synchronized (monitor()) {
            check_orphaned();
            cTWhen = (CTWhen) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTWhen;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public boolean isSetElse() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public boolean isSetName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public void removeIf(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public void setElse(CTOtherwise cTOtherwise) {
        generatedSetterHelperImpl(cTOtherwise, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public void setIfArray(CTWhen[] cTWhenArr) {
        check_orphaned();
        arraySetterHelper(cTWhenArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public void setName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public int sizeOfIfArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public void unsetElse() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public XmlString xgetName() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlString = (XmlString) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlString == null) {
                xmlString = (XmlString) get_default_attribute_value(qNameArr[2]);
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public void xsetName(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public CTWhen getIfArray(int i) {
        CTWhen cTWhen;
        synchronized (monitor()) {
            check_orphaned();
            cTWhen = (CTWhen) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTWhen == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTWhen;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose
    public void setIfArray(int i, CTWhen cTWhen) {
        generatedSetterHelperImpl(cTWhen, PROPERTY_QNAME[0], i, (short) 2);
    }
}
