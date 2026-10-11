package org.openxmlformats.schemas.presentationml.x2006.main.impl;

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
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeCondition;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeConditionList;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTTLTimeConditionListImpl;

/* loaded from: classes14.dex */
public class CTTLTimeConditionListImpl extends XmlComplexContentImpl implements CTTLTimeConditionList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cond")};
    private static final long serialVersionUID = 1;

    public CTTLTimeConditionListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeConditionList
    public CTTLTimeCondition addNewCond() {
        CTTLTimeCondition cTTLTimeCondition;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeCondition = (CTTLTimeCondition) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLTimeCondition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeConditionList
    public CTTLTimeCondition[] getCondArray() {
        return (CTTLTimeCondition[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTLTimeCondition[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeConditionList
    public List<CTTLTimeCondition> getCondList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wcc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTLTimeConditionListImpl.this.getCondArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xcc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTLTimeConditionListImpl.this.setCondArray(((Integer) obj).intValue(), (CTTLTimeCondition) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ycc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTLTimeConditionListImpl.this.insertNewCond(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zcc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTLTimeConditionListImpl.this.removeCond(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.adc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTLTimeConditionListImpl.this.sizeOfCondArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeConditionList
    public CTTLTimeCondition insertNewCond(int i) {
        CTTLTimeCondition cTTLTimeCondition;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeCondition = (CTTLTimeCondition) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTLTimeCondition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeConditionList
    public void removeCond(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeConditionList
    public void setCondArray(CTTLTimeCondition[] cTTLTimeConditionArr) {
        check_orphaned();
        arraySetterHelper(cTTLTimeConditionArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeConditionList
    public int sizeOfCondArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeConditionList
    public CTTLTimeCondition getCondArray(int i) {
        CTTLTimeCondition cTTLTimeCondition;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTimeCondition = (CTTLTimeCondition) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTLTimeCondition == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLTimeCondition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeConditionList
    public void setCondArray(int i, CTTLTimeCondition cTTLTimeCondition) {
        generatedSetterHelperImpl(cTTLTimeCondition, PROPERTY_QNAME[0], i, (short) 2);
    }
}
