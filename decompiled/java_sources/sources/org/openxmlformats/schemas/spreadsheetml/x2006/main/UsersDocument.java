package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface UsersDocument extends XmlObject {
    public static final DocumentFactory<UsersDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<UsersDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "users4153doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTUsers addNewUsers();

    CTUsers getUsers();

    void setUsers(CTUsers cTUsers);
}
