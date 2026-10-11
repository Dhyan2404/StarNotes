package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ColumnDocument extends XmlObject {
    public static final DocumentFactory<ColumnDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ColumnDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "column37cddoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTStrokeChild addNewColumn();

    CTStrokeChild getColumn();

    void setColumn(CTStrokeChild cTStrokeChild);
}
