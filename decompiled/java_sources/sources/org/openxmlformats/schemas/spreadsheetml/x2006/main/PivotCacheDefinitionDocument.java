package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface PivotCacheDefinitionDocument extends XmlObject {
    public static final DocumentFactory<PivotCacheDefinitionDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PivotCacheDefinitionDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "pivotcachedefinitione1b0doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPivotCacheDefinition addNewPivotCacheDefinition();

    CTPivotCacheDefinition getPivotCacheDefinition();

    void setPivotCacheDefinition(CTPivotCacheDefinition cTPivotCacheDefinition);
}
