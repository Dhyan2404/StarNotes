package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface PivotTableDefinitionDocument extends XmlObject {
    public static final DocumentFactory<PivotTableDefinitionDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PivotTableDefinitionDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "pivottabledefinition07fcdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPivotTableDefinition addNewPivotTableDefinition();

    CTPivotTableDefinition getPivotTableDefinition();

    void setPivotTableDefinition(CTPivotTableDefinition cTPivotTableDefinition);
}
