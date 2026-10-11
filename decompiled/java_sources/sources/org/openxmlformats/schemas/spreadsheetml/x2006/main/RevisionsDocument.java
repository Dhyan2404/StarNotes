package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface RevisionsDocument extends XmlObject {
    public static final DocumentFactory<RevisionsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RevisionsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "revisions1fc3doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRevisions addNewRevisions();

    CTRevisions getRevisions();

    void setRevisions(CTRevisions cTRevisions);
}
