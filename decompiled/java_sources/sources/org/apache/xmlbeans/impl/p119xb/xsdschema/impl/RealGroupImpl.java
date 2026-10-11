package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.All;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ExplicitGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.RealGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.impl.RealGroupImpl;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;

/* loaded from: classes13.dex */
public class RealGroupImpl extends GroupImpl implements RealGroup {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "all"), new QName("http://www.w3.org/2001/XMLSchema", "choice"), new QName("http://www.w3.org/2001/XMLSchema", "sequence")};
    private static final long serialVersionUID = 1;

    public RealGroupImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public All addNewAll() {
        All all;
        synchronized (monitor()) {
            check_orphaned();
            all = (All) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return all;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup addNewChoice() {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup addNewSequence() {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public All[] getAllArray() {
        return (All[]) getXmlObjectArray(PROPERTY_QNAME[0], new All[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public List<All> getAllList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kdl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return RealGroupImpl.this.getAllArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qdl
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    RealGroupImpl.this.setAllArray(((Integer) obj).intValue(), (All) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rdl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return RealGroupImpl.this.insertNewAll(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sdl
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RealGroupImpl.this.removeAll(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tdl
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(RealGroupImpl.this.sizeOfAllArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup[] getChoiceArray() {
        return (ExplicitGroup[]) getXmlObjectArray(PROPERTY_QNAME[1], new ExplicitGroup[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public List<ExplicitGroup> getChoiceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ldl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return RealGroupImpl.this.getChoiceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mdl
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    RealGroupImpl.this.setChoiceArray(((Integer) obj).intValue(), (ExplicitGroup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ndl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return RealGroupImpl.this.insertNewChoice(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.odl
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RealGroupImpl.this.removeChoice(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pdl
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(RealGroupImpl.this.sizeOfChoiceArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup[] getSequenceArray() {
        return (ExplicitGroup[]) getXmlObjectArray(PROPERTY_QNAME[2], new ExplicitGroup[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public List<ExplicitGroup> getSequenceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.udl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return RealGroupImpl.this.getSequenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vdl
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    RealGroupImpl.this.setSequenceArray(((Integer) obj).intValue(), (ExplicitGroup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wdl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return RealGroupImpl.this.insertNewSequence(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xdl
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RealGroupImpl.this.removeSequence(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ydl
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(RealGroupImpl.this.sizeOfSequenceArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public All insertNewAll(int i) {
        All all;
        synchronized (monitor()) {
            check_orphaned();
            all = (All) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return all;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup insertNewChoice(int i) {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup insertNewSequence(int i) {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void removeAll(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void removeChoice(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void removeSequence(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setAllArray(All[] allArr) {
        check_orphaned();
        arraySetterHelper(allArr, PROPERTY_QNAME[0]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setChoiceArray(ExplicitGroup[] explicitGroupArr) {
        check_orphaned();
        arraySetterHelper(explicitGroupArr, PROPERTY_QNAME[1]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setSequenceArray(ExplicitGroup[] explicitGroupArr) {
        check_orphaned();
        arraySetterHelper(explicitGroupArr, PROPERTY_QNAME[2]);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public int sizeOfAllArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public int sizeOfChoiceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public int sizeOfSequenceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public All getAllArray(int i) {
        All all;
        synchronized (monitor()) {
            check_orphaned();
            all = (All) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (all == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return all;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup getChoiceArray(int i) {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (explicitGroup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public ExplicitGroup getSequenceArray(int i) {
        ExplicitGroup explicitGroup;
        synchronized (monitor()) {
            check_orphaned();
            explicitGroup = (ExplicitGroup) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (explicitGroup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return explicitGroup;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setAllArray(int i, All all) {
        generatedSetterHelperImpl(all, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setChoiceArray(int i, ExplicitGroup explicitGroup) {
        generatedSetterHelperImpl(explicitGroup, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.impl.GroupImpl, org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    public void setSequenceArray(int i, ExplicitGroup explicitGroup) {
        generatedSetterHelperImpl(explicitGroup, PROPERTY_QNAME[2], i, (short) 2);
    }
}
