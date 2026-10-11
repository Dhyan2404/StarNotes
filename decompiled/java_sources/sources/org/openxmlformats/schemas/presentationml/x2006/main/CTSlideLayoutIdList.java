package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSlideLayoutIdList extends XmlObject {
    public static final DocumentFactory<CTSlideLayoutIdList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSlideLayoutIdList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctslidelayoutidlist939btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSlideLayoutIdListEntry addNewSldLayoutId();

    CTSlideLayoutIdListEntry getSldLayoutIdArray(int i);

    CTSlideLayoutIdListEntry[] getSldLayoutIdArray();

    List<CTSlideLayoutIdListEntry> getSldLayoutIdList();

    CTSlideLayoutIdListEntry insertNewSldLayoutId(int i);

    void removeSldLayoutId(int i);

    void setSldLayoutIdArray(int i, CTSlideLayoutIdListEntry cTSlideLayoutIdListEntry);

    void setSldLayoutIdArray(CTSlideLayoutIdListEntry[] cTSlideLayoutIdListEntryArr);

    int sizeOfSldLayoutIdArray();
}
