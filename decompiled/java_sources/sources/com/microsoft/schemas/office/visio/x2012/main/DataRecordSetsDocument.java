package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DataRecordSetsDocument extends XmlObject {
    public static final DocumentFactory<DataRecordSetsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataRecordSetsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "datarecordsets2b8edoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    DataRecordSetsType addNewDataRecordSets();

    DataRecordSetsType getDataRecordSets();

    void setDataRecordSets(DataRecordSetsType dataRecordSetsType);
}
