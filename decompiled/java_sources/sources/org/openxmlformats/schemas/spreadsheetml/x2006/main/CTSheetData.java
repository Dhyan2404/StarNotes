package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTSheetData extends XmlObject {
    public static final DocumentFactory<CTSheetData> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSheetData> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsheetdata8408type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRow addNewRow();

    CTRow getRowArray(int i);

    CTRow[] getRowArray();

    List<CTRow> getRowList();

    CTRow insertNewRow(int i);

    void removeRow(int i);

    void setRowArray(int i, CTRow cTRow);

    void setRowArray(CTRow[] cTRowArr);

    int sizeOfRowArray();
}
