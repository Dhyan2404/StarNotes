package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;

/* loaded from: classes7.dex */
public interface CTPersonList extends XmlObject {
    public static final DocumentFactory<CTPersonList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPersonList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpersonlistc8a4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTPerson addNewPerson();

    CTExtensionList getExtLst();

    CTPerson getPersonArray(int i);

    CTPerson[] getPersonArray();

    List<CTPerson> getPersonList();

    CTPerson insertNewPerson(int i);

    boolean isSetExtLst();

    void removePerson(int i);

    void setExtLst(CTExtensionList cTExtensionList);

    void setPersonArray(int i, CTPerson cTPerson);

    void setPersonArray(CTPerson[] cTPersonArr);

    int sizeOfPersonArray();

    void unsetExtLst();
}
