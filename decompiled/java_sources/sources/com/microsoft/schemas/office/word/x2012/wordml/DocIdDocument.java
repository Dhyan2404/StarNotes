package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DocIdDocument extends XmlObject {
    public static final DocumentFactory<DocIdDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DocIdDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "docid4b51doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGuid addNewDocId();

    CTGuid getDocId();

    void setDocId(CTGuid cTGuid);
}
