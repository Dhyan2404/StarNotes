package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface EventListType extends XmlObject {
    public static final DocumentFactory<EventListType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<EventListType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "eventlisttype3a53type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    EventItemType addNewEventItem();

    EventItemType getEventItemArray(int i);

    EventItemType[] getEventItemArray();

    List<EventItemType> getEventItemList();

    EventItemType insertNewEventItem(int i);

    void removeEventItem(int i);

    void setEventItemArray(int i, EventItemType eventItemType);

    void setEventItemArray(EventItemType[] eventItemTypeArr);

    int sizeOfEventItemArray();
}
