package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface QueryTableDocument extends XmlObject {
    public static final DocumentFactory<QueryTableDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<QueryTableDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "querytable8143doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTQueryTable addNewQueryTable();

    CTQueryTable getQueryTable();

    void setQueryTable(CTQueryTable cTQueryTable);
}
