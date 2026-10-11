package com.microsoft.schemas.office.word.x2012.wordml;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTPeople extends XmlObject {
    public static final DocumentFactory<CTPeople> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPeople> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpeople0d37type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPerson addNewPerson();

    CTPerson getPersonArray(int i);

    CTPerson[] getPersonArray();

    List<CTPerson> getPersonList();

    CTPerson insertNewPerson(int i);

    void removePerson(int i);

    void setPersonArray(int i, CTPerson cTPerson);

    void setPersonArray(CTPerson[] cTPersonArr);

    int sizeOfPersonArray();
}
