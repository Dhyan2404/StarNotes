package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.EventItemType;
import com.microsoft.schemas.office.visio.x2012.main.EventListType;
import com.microsoft.schemas.office.visio.x2012.main.impl.EventListTypeImpl;
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
public class EventListTypeImpl extends XmlComplexContentImpl implements EventListType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "EventItem")};
    private static final long serialVersionUID = 1;

    public EventListTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.EventListType
    public EventItemType addNewEventItem() {
        EventItemType eventItemType;
        synchronized (monitor()) {
            check_orphaned();
            eventItemType = (EventItemType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return eventItemType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.EventListType
    public EventItemType[] getEventItemArray() {
        return (EventItemType[]) getXmlObjectArray(PROPERTY_QNAME[0], new EventItemType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.EventListType
    public List<EventItemType> getEventItemList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dxf
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return EventListTypeImpl.this.getEventItemArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.exf
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    EventListTypeImpl.this.setEventItemArray(((Integer) obj).intValue(), (EventItemType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fxf
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return EventListTypeImpl.this.insertNewEventItem(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gxf
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    EventListTypeImpl.this.removeEventItem(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hxf
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(EventListTypeImpl.this.sizeOfEventItemArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.EventListType
    public EventItemType insertNewEventItem(int i) {
        EventItemType eventItemType;
        synchronized (monitor()) {
            check_orphaned();
            eventItemType = (EventItemType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return eventItemType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.EventListType
    public void removeEventItem(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.EventListType
    public void setEventItemArray(EventItemType[] eventItemTypeArr) {
        check_orphaned();
        arraySetterHelper(eventItemTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.EventListType
    public int sizeOfEventItemArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.EventListType
    public EventItemType getEventItemArray(int i) {
        EventItemType eventItemType;
        synchronized (monitor()) {
            check_orphaned();
            eventItemType = (EventItemType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (eventItemType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return eventItemType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.EventListType
    public void setEventItemArray(int i, EventItemType eventItemType) {
        generatedSetterHelperImpl(eventItemType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
