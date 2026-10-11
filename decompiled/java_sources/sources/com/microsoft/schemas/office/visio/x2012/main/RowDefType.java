package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface RowDefType extends XmlObject {
    public static final DocumentFactory<RowDefType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RowDefType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "rowdeftype284etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CellDefType addNewCellDef();

    CellDefType getCellDefArray(int i);

    CellDefType[] getCellDefArray();

    List<CellDefType> getCellDefList();

    CellDefType insertNewCellDef(int i);

    void removeCellDef(int i);

    void setCellDefArray(int i, CellDefType cellDefType);

    void setCellDefArray(CellDefType[] cellDefTypeArr);

    int sizeOfCellDefArray();
}
