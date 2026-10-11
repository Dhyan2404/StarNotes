package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface VolTypesDocument extends XmlObject {
    public static final DocumentFactory<VolTypesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<VolTypesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "voltypes8703doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTVolTypes addNewVolTypes();

    CTVolTypes getVolTypes();

    void setVolTypes(CTVolTypes cTVolTypes);
}
