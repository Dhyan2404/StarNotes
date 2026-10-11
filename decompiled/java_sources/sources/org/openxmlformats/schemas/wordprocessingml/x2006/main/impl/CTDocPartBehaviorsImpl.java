package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehavior;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehaviors;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTDocPartBehaviorsImpl;

/* loaded from: classes16.dex */
public class CTDocPartBehaviorsImpl extends XmlComplexContentImpl implements CTDocPartBehaviors {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "behavior")};
    private static final long serialVersionUID = 1;

    public CTDocPartBehaviorsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehaviors
    public CTDocPartBehavior addNewBehavior() {
        CTDocPartBehavior cTDocPartBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartBehavior = (CTDocPartBehavior) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDocPartBehavior;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehaviors
    public CTDocPartBehavior[] getBehaviorArray() {
        return (CTDocPartBehavior[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDocPartBehavior[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehaviors
    public List<CTDocPartBehavior> getBehaviorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nf3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDocPartBehaviorsImpl.this.getBehaviorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.of3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDocPartBehaviorsImpl.this.setBehaviorArray(((Integer) obj).intValue(), (CTDocPartBehavior) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pf3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDocPartBehaviorsImpl.this.insertNewBehavior(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qf3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDocPartBehaviorsImpl.this.removeBehavior(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rf3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDocPartBehaviorsImpl.this.sizeOfBehaviorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehaviors
    public CTDocPartBehavior insertNewBehavior(int i) {
        CTDocPartBehavior cTDocPartBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartBehavior = (CTDocPartBehavior) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDocPartBehavior;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehaviors
    public void removeBehavior(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehaviors
    public void setBehaviorArray(CTDocPartBehavior[] cTDocPartBehaviorArr) {
        check_orphaned();
        arraySetterHelper(cTDocPartBehaviorArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehaviors
    public int sizeOfBehaviorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehaviors
    public CTDocPartBehavior getBehaviorArray(int i) {
        CTDocPartBehavior cTDocPartBehavior;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartBehavior = (CTDocPartBehavior) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDocPartBehavior == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDocPartBehavior;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehaviors
    public void setBehaviorArray(int i, CTDocPartBehavior cTDocPartBehavior) {
        generatedSetterHelperImpl(cTDocPartBehavior, PROPERTY_QNAME[0], i, (short) 2);
    }
}
