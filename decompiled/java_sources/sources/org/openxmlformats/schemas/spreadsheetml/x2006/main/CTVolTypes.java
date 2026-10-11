package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTVolTypes extends XmlObject {
    public static final DocumentFactory<CTVolTypes> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTVolTypes> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctvoltypes1eaftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTVolType addNewVolType();

    CTExtensionList getExtLst();

    CTVolType getVolTypeArray(int i);

    CTVolType[] getVolTypeArray();

    List<CTVolType> getVolTypeList();

    CTVolType insertNewVolType(int i);

    boolean isSetExtLst();

    void removeVolType(int i);

    void setExtLst(CTExtensionList cTExtensionList);

    void setVolTypeArray(int i, CTVolType cTVolType);

    void setVolTypeArray(CTVolType[] cTVolTypeArr);

    int sizeOfVolTypeArray();

    void unsetExtLst();
}
