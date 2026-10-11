package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTCellStyles extends XmlObject {
    public static final DocumentFactory<CTCellStyles> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCellStyles> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcellstyles916dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCellStyle addNewCellStyle();

    CTCellStyle getCellStyleArray(int i);

    CTCellStyle[] getCellStyleArray();

    List<CTCellStyle> getCellStyleList();

    long getCount();

    CTCellStyle insertNewCellStyle(int i);

    boolean isSetCount();

    void removeCellStyle(int i);

    void setCellStyleArray(int i, CTCellStyle cTCellStyle);

    void setCellStyleArray(CTCellStyle[] cTCellStyleArr);

    void setCount(long j);

    int sizeOfCellStyleArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
