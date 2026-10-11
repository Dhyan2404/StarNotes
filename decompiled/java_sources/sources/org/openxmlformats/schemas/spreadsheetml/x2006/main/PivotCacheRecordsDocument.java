package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface PivotCacheRecordsDocument extends XmlObject {
    public static final DocumentFactory<PivotCacheRecordsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PivotCacheRecordsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "pivotcacherecords120ddoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPivotCacheRecords addNewPivotCacheRecords();

    CTPivotCacheRecords getPivotCacheRecords();

    void setPivotCacheRecords(CTPivotCacheRecords cTPivotCacheRecords);
}
