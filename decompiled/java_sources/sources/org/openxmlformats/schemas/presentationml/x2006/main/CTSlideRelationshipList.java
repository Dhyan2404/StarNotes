package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSlideRelationshipList extends XmlObject {
    public static final DocumentFactory<CTSlideRelationshipList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSlideRelationshipList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsliderelationshiplist46e8type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSlideRelationshipListEntry addNewSld();

    CTSlideRelationshipListEntry getSldArray(int i);

    CTSlideRelationshipListEntry[] getSldArray();

    List<CTSlideRelationshipListEntry> getSldList();

    CTSlideRelationshipListEntry insertNewSld(int i);

    void removeSld(int i);

    void setSldArray(int i, CTSlideRelationshipListEntry cTSlideRelationshipListEntry);

    void setSldArray(CTSlideRelationshipListEntry[] cTSlideRelationshipListEntryArr);

    int sizeOfSldArray();
}
