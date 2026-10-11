package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTOutlineViewSlideList extends XmlObject {
    public static final DocumentFactory<CTOutlineViewSlideList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOutlineViewSlideList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctoutlineviewslideliste67dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOutlineViewSlideEntry addNewSld();

    CTOutlineViewSlideEntry getSldArray(int i);

    CTOutlineViewSlideEntry[] getSldArray();

    List<CTOutlineViewSlideEntry> getSldList();

    CTOutlineViewSlideEntry insertNewSld(int i);

    void removeSld(int i);

    void setSldArray(int i, CTOutlineViewSlideEntry cTOutlineViewSlideEntry);

    void setSldArray(CTOutlineViewSlideEntry[] cTOutlineViewSlideEntryArr);

    int sizeOfSldArray();
}
