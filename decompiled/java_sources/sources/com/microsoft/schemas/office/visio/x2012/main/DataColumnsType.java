package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DataColumnsType extends XmlObject {
    public static final DocumentFactory<DataColumnsType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataColumnsType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "datacolumnstype35f8type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    DataColumnType addNewDataColumn();

    DataColumnType getDataColumnArray(int i);

    DataColumnType[] getDataColumnArray();

    List<DataColumnType> getDataColumnList();

    boolean getSortAsc();

    String getSortColumn();

    DataColumnType insertNewDataColumn(int i);

    boolean isSetSortAsc();

    boolean isSetSortColumn();

    void removeDataColumn(int i);

    void setDataColumnArray(int i, DataColumnType dataColumnType);

    void setDataColumnArray(DataColumnType[] dataColumnTypeArr);

    void setSortAsc(boolean z);

    void setSortColumn(String str);

    int sizeOfDataColumnArray();

    void unsetSortAsc();

    void unsetSortColumn();

    XmlBoolean xgetSortAsc();

    XmlString xgetSortColumn();

    void xsetSortAsc(XmlBoolean xmlBoolean);

    void xsetSortColumn(XmlString xmlString);
}
