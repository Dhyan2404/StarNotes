package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTCellSmartTag extends XmlObject {
    public static final DocumentFactory<CTCellSmartTag> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCellSmartTag> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcellsmarttag931ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCellSmartTagPr addNewCellSmartTagPr();

    CTCellSmartTagPr getCellSmartTagPrArray(int i);

    CTCellSmartTagPr[] getCellSmartTagPrArray();

    List<CTCellSmartTagPr> getCellSmartTagPrList();

    boolean getDeleted();

    long getType();

    boolean getXmlBased();

    CTCellSmartTagPr insertNewCellSmartTagPr(int i);

    boolean isSetDeleted();

    boolean isSetXmlBased();

    void removeCellSmartTagPr(int i);

    void setCellSmartTagPrArray(int i, CTCellSmartTagPr cTCellSmartTagPr);

    void setCellSmartTagPrArray(CTCellSmartTagPr[] cTCellSmartTagPrArr);

    void setDeleted(boolean z);

    void setType(long j);

    void setXmlBased(boolean z);

    int sizeOfCellSmartTagPrArray();

    void unsetDeleted();

    void unsetXmlBased();

    XmlBoolean xgetDeleted();

    XmlUnsignedInt xgetType();

    XmlBoolean xgetXmlBased();

    void xsetDeleted(XmlBoolean xmlBoolean);

    void xsetType(XmlUnsignedInt xmlUnsignedInt);

    void xsetXmlBased(XmlBoolean xmlBoolean);
}
