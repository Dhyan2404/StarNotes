package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTCellSmartTags extends XmlObject {
    public static final DocumentFactory<CTCellSmartTags> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCellSmartTags> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcellsmarttagsb05ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCellSmartTag addNewCellSmartTag();

    CTCellSmartTag getCellSmartTagArray(int i);

    CTCellSmartTag[] getCellSmartTagArray();

    List<CTCellSmartTag> getCellSmartTagList();

    String getR();

    CTCellSmartTag insertNewCellSmartTag(int i);

    void removeCellSmartTag(int i);

    void setCellSmartTagArray(int i, CTCellSmartTag cTCellSmartTag);

    void setCellSmartTagArray(CTCellSmartTag[] cTCellSmartTagArr);

    void setR(String str);

    int sizeOfCellSmartTagArray();

    STCellRef xgetR();

    void xsetR(STCellRef sTCellRef);
}
