package org.openxmlformats.schemas.officeDocument.x2006.bibliography;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTNameListType extends XmlObject {
    public static final DocumentFactory<CTNameListType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNameListType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnamelisttype0e89type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPersonType addNewPerson();

    CTPersonType getPersonArray(int i);

    CTPersonType[] getPersonArray();

    List<CTPersonType> getPersonList();

    CTPersonType insertNewPerson(int i);

    void removePerson(int i);

    void setPersonArray(int i, CTPersonType cTPersonType);

    void setPersonArray(CTPersonType[] cTPersonTypeArr);

    int sizeOfPersonArray();
}
