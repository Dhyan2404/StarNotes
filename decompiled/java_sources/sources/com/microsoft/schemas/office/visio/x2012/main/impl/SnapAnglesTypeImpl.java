package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.SnapAngleType;
import com.microsoft.schemas.office.visio.x2012.main.SnapAnglesType;
import com.microsoft.schemas.office.visio.x2012.main.impl.SnapAnglesTypeImpl;
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
public class SnapAnglesTypeImpl extends XmlComplexContentImpl implements SnapAnglesType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "SnapAngle")};
    private static final long serialVersionUID = 1;

    public SnapAnglesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SnapAnglesType
    public SnapAngleType addNewSnapAngle() {
        SnapAngleType snapAngleType;
        synchronized (monitor()) {
            check_orphaned();
            snapAngleType = (SnapAngleType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return snapAngleType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SnapAnglesType
    public SnapAngleType[] getSnapAngleArray() {
        return (SnapAngleType[]) getXmlObjectArray(PROPERTY_QNAME[0], new SnapAngleType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SnapAnglesType
    public List<SnapAngleType> getSnapAngleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vum
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SnapAnglesTypeImpl.this.getSnapAngleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wum
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SnapAnglesTypeImpl.this.setSnapAngleArray(((Integer) obj).intValue(), (SnapAngleType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xum
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SnapAnglesTypeImpl.this.insertNewSnapAngle(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yum
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SnapAnglesTypeImpl.this.removeSnapAngle(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zum
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SnapAnglesTypeImpl.this.sizeOfSnapAngleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SnapAnglesType
    public SnapAngleType insertNewSnapAngle(int i) {
        SnapAngleType snapAngleType;
        synchronized (monitor()) {
            check_orphaned();
            snapAngleType = (SnapAngleType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return snapAngleType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SnapAnglesType
    public void removeSnapAngle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SnapAnglesType
    public void setSnapAngleArray(SnapAngleType[] snapAngleTypeArr) {
        check_orphaned();
        arraySetterHelper(snapAngleTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SnapAnglesType
    public int sizeOfSnapAngleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SnapAnglesType
    public SnapAngleType getSnapAngleArray(int i) {
        SnapAngleType snapAngleType;
        synchronized (monitor()) {
            check_orphaned();
            snapAngleType = (SnapAngleType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (snapAngleType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return snapAngleType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SnapAnglesType
    public void setSnapAngleArray(int i, SnapAngleType snapAngleType) {
        generatedSetterHelperImpl(snapAngleType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
