package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DataRecordSetsType extends XmlObject {
    public static final DocumentFactory<DataRecordSetsType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataRecordSetsType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "datarecordsetstype9cadtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    DataRecordSetType addNewDataRecordSet();

    long getActiveRecordsetID();

    DataRecordSetType getDataRecordSetArray(int i);

    DataRecordSetType[] getDataRecordSetArray();

    List<DataRecordSetType> getDataRecordSetList();

    String getDataWindowOrder();

    long getNextID();

    DataRecordSetType insertNewDataRecordSet(int i);

    boolean isSetActiveRecordsetID();

    boolean isSetDataWindowOrder();

    void removeDataRecordSet(int i);

    void setActiveRecordsetID(long j);

    void setDataRecordSetArray(int i, DataRecordSetType dataRecordSetType);

    void setDataRecordSetArray(DataRecordSetType[] dataRecordSetTypeArr);

    void setDataWindowOrder(String str);

    void setNextID(long j);

    int sizeOfDataRecordSetArray();

    void unsetActiveRecordsetID();

    void unsetDataWindowOrder();

    XmlUnsignedInt xgetActiveRecordsetID();

    XmlString xgetDataWindowOrder();

    XmlUnsignedInt xgetNextID();

    void xsetActiveRecordsetID(XmlUnsignedInt xmlUnsignedInt);

    void xsetDataWindowOrder(XmlString xmlString);

    void xsetNextID(XmlUnsignedInt xmlUnsignedInt);
}
