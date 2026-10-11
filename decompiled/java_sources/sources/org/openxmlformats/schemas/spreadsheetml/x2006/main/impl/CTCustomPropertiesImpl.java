package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomProperties;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCustomPropertiesImpl;

/* loaded from: classes15.dex */
public class CTCustomPropertiesImpl extends XmlComplexContentImpl implements CTCustomProperties {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "customPr")};
    private static final long serialVersionUID = 1;

    public CTCustomPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomProperties
    public CTCustomProperty addNewCustomPr() {
        CTCustomProperty cTCustomProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomProperty = (CTCustomProperty) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCustomProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomProperties
    public CTCustomProperty[] getCustomPrArray() {
        return (CTCustomProperty[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCustomProperty[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomProperties
    public List<CTCustomProperty> getCustomPrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sg2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomPropertiesImpl.this.getCustomPrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tg2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCustomPropertiesImpl.this.setCustomPrArray(((Integer) obj).intValue(), (CTCustomProperty) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ug2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomPropertiesImpl.this.insertNewCustomPr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vg2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCustomPropertiesImpl.this.removeCustomPr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wg2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCustomPropertiesImpl.this.sizeOfCustomPrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomProperties
    public CTCustomProperty insertNewCustomPr(int i) {
        CTCustomProperty cTCustomProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomProperty = (CTCustomProperty) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCustomProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomProperties
    public void removeCustomPr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomProperties
    public void setCustomPrArray(CTCustomProperty[] cTCustomPropertyArr) {
        check_orphaned();
        arraySetterHelper(cTCustomPropertyArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomProperties
    public int sizeOfCustomPrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomProperties
    public CTCustomProperty getCustomPrArray(int i) {
        CTCustomProperty cTCustomProperty;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomProperty = (CTCustomProperty) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCustomProperty == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCustomProperty;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomProperties
    public void setCustomPrArray(int i, CTCustomProperty cTCustomProperty) {
        generatedSetterHelperImpl(cTCustomProperty, PROPERTY_QNAME[0], i, (short) 2);
    }
}
