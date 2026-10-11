package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTSmartTags extends XmlObject {
    public static final DocumentFactory<CTSmartTags> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSmartTags> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsmarttags8aa1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCellSmartTags addNewCellSmartTags();

    CTCellSmartTags getCellSmartTagsArray(int i);

    CTCellSmartTags[] getCellSmartTagsArray();

    List<CTCellSmartTags> getCellSmartTagsList();

    CTCellSmartTags insertNewCellSmartTags(int i);

    void removeCellSmartTags(int i);

    void setCellSmartTagsArray(int i, CTCellSmartTags cTCellSmartTags);

    void setCellSmartTagsArray(CTCellSmartTags[] cTCellSmartTagsArr);

    int sizeOfCellSmartTagsArray();
}
