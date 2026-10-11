package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface AuthorListType extends XmlObject {
    public static final DocumentFactory<AuthorListType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AuthorListType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "authorlisttyped990type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    AuthorEntryType addNewAuthorEntry();

    AuthorEntryType getAuthorEntryArray(int i);

    AuthorEntryType[] getAuthorEntryArray();

    List<AuthorEntryType> getAuthorEntryList();

    AuthorEntryType insertNewAuthorEntry(int i);

    void removeAuthorEntry(int i);

    void setAuthorEntryArray(int i, AuthorEntryType authorEntryType);

    void setAuthorEntryArray(AuthorEntryType[] authorEntryTypeArr);

    int sizeOfAuthorEntryArray();
}
