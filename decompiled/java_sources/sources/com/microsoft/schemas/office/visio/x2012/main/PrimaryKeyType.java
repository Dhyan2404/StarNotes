package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface PrimaryKeyType extends XmlObject {
    public static final DocumentFactory<PrimaryKeyType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PrimaryKeyType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "primarykeytyped3dctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    RowKeyValueType addNewRowKeyValue();

    String getColumnNameID();

    RowKeyValueType getRowKeyValueArray(int i);

    RowKeyValueType[] getRowKeyValueArray();

    List<RowKeyValueType> getRowKeyValueList();

    RowKeyValueType insertNewRowKeyValue(int i);

    void removeRowKeyValue(int i);

    void setColumnNameID(String str);

    void setRowKeyValueArray(int i, RowKeyValueType rowKeyValueType);

    void setRowKeyValueArray(RowKeyValueType[] rowKeyValueTypeArr);

    int sizeOfRowKeyValueArray();

    XmlString xgetColumnNameID();

    void xsetColumnNameID(XmlString xmlString);
}
