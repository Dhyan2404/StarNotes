package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface PeopleDocument extends XmlObject {
    public static final DocumentFactory<PeopleDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PeopleDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "people9b63doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPeople addNewPeople();

    CTPeople getPeople();

    void setPeople(CTPeople cTPeople);
}
