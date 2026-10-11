package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.MasterShortcutType;
import com.microsoft.schemas.office.visio.x2012.main.MasterType;
import com.microsoft.schemas.office.visio.x2012.main.MastersType;
import com.microsoft.schemas.office.visio.x2012.main.impl.MastersTypeImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class MastersTypeImpl extends XmlComplexContentImpl implements MastersType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "Master"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "MasterShortcut")};
    private static final long serialVersionUID = 1;

    public MastersTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public MasterType addNewMaster() {
        MasterType masterType;
        synchronized (monitor()) {
            check_orphaned();
            masterType = (MasterType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return masterType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public MasterShortcutType addNewMasterShortcut() {
        MasterShortcutType masterShortcutType;
        synchronized (monitor()) {
            check_orphaned();
            masterShortcutType = (MasterShortcutType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return masterShortcutType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public MasterType[] getMasterArray() {
        return (MasterType[]) getXmlObjectArray(PROPERTY_QNAME[0], new MasterType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public List<MasterType> getMasterList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.i9j
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return MastersTypeImpl.this.getMasterArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j9j
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    MastersTypeImpl.this.setMasterArray(((Integer) obj).intValue(), (MasterType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k9j
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return MastersTypeImpl.this.insertNewMaster(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l9j
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    MastersTypeImpl.this.removeMaster(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m9j
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(MastersTypeImpl.this.sizeOfMasterArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public MasterShortcutType[] getMasterShortcutArray() {
        return (MasterShortcutType[]) getXmlObjectArray(PROPERTY_QNAME[1], new MasterShortcutType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public List<MasterShortcutType> getMasterShortcutList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.n9j
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return MastersTypeImpl.this.getMasterShortcutArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o9j
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    MastersTypeImpl.this.setMasterShortcutArray(((Integer) obj).intValue(), (MasterShortcutType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.p9j
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return MastersTypeImpl.this.insertNewMasterShortcut(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.q9j
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    MastersTypeImpl.this.removeMasterShortcut(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.r9j
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(MastersTypeImpl.this.sizeOfMasterShortcutArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public MasterType insertNewMaster(int i) {
        MasterType masterType;
        synchronized (monitor()) {
            check_orphaned();
            masterType = (MasterType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return masterType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public MasterShortcutType insertNewMasterShortcut(int i) {
        MasterShortcutType masterShortcutType;
        synchronized (monitor()) {
            check_orphaned();
            masterShortcutType = (MasterShortcutType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return masterShortcutType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public void removeMaster(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public void removeMasterShortcut(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public void setMasterArray(MasterType[] masterTypeArr) {
        check_orphaned();
        arraySetterHelper(masterTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public void setMasterShortcutArray(MasterShortcutType[] masterShortcutTypeArr) {
        check_orphaned();
        arraySetterHelper(masterShortcutTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public int sizeOfMasterArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public int sizeOfMasterShortcutArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public MasterType getMasterArray(int i) {
        MasterType masterType;
        synchronized (monitor()) {
            check_orphaned();
            masterType = (MasterType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (masterType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return masterType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public MasterShortcutType getMasterShortcutArray(int i) {
        MasterShortcutType masterShortcutType;
        synchronized (monitor()) {
            check_orphaned();
            masterShortcutType = (MasterShortcutType) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (masterShortcutType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return masterShortcutType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public void setMasterArray(int i, MasterType masterType) {
        generatedSetterHelperImpl(masterType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.MastersType
    public void setMasterShortcutArray(int i, MasterShortcutType masterShortcutType) {
        generatedSetterHelperImpl(masterShortcutType, PROPERTY_QNAME[1], i, (short) 2);
    }
}
