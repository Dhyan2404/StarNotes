package org.openxmlformats.schemas.schemaLibrary.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSchemaLibrary extends XmlObject {
    public static final DocumentFactory<CTSchemaLibrary> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSchemaLibrary> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctschemalibrary4028type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSchema addNewSchema();

    CTSchema getSchemaArray(int i);

    CTSchema[] getSchemaArray();

    List<CTSchema> getSchemaList();

    CTSchema insertNewSchema(int i);

    void removeSchema(int i);

    void setSchemaArray(int i, CTSchema cTSchema);

    void setSchemaArray(CTSchema[] cTSchemaArr);

    int sizeOfSchemaArray();
}
