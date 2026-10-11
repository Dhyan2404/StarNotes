package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface PersonListDocument extends XmlObject {
    public static final DocumentFactory<PersonListDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PersonListDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "personlist08f8doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPersonList addNewPersonList();

    CTPersonList getPersonList();

    void setPersonList(CTPersonList cTPersonList);
}
