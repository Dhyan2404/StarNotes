package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTSmartTagTypes extends XmlObject {
    public static final DocumentFactory<CTSmartTagTypes> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSmartTagTypes> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsmarttagtypes9207type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSmartTagType addNewSmartTagType();

    CTSmartTagType getSmartTagTypeArray(int i);

    CTSmartTagType[] getSmartTagTypeArray();

    List<CTSmartTagType> getSmartTagTypeList();

    CTSmartTagType insertNewSmartTagType(int i);

    void removeSmartTagType(int i);

    void setSmartTagTypeArray(int i, CTSmartTagType cTSmartTagType);

    void setSmartTagTypeArray(CTSmartTagType[] cTSmartTagTypeArr);

    int sizeOfSmartTagTypeArray();
}
