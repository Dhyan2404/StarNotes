package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;

/* loaded from: classes16.dex */
public interface CTDocPartTypes extends XmlObject {
    public static final DocumentFactory<CTDocPartTypes> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocPartTypes> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocparttypesc33atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDocPartType addNewType();

    Object getAll();

    CTDocPartType getTypeArray(int i);

    CTDocPartType[] getTypeArray();

    List<CTDocPartType> getTypeList();

    CTDocPartType insertNewType(int i);

    boolean isSetAll();

    void removeType(int i);

    void setAll(Object obj);

    void setTypeArray(int i, CTDocPartType cTDocPartType);

    void setTypeArray(CTDocPartType[] cTDocPartTypeArr);

    int sizeOfTypeArray();

    void unsetAll();

    STOnOff xgetAll();

    void xsetAll(STOnOff sTOnOff);
}
