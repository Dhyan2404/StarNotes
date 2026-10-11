package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMetadataTypes extends XmlObject {
    public static final DocumentFactory<CTMetadataTypes> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMetadataTypes> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmetadatatypes3c29type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMetadataType addNewMetadataType();

    long getCount();

    CTMetadataType getMetadataTypeArray(int i);

    CTMetadataType[] getMetadataTypeArray();

    List<CTMetadataType> getMetadataTypeList();

    CTMetadataType insertNewMetadataType(int i);

    boolean isSetCount();

    void removeMetadataType(int i);

    void setCount(long j);

    void setMetadataTypeArray(int i, CTMetadataType cTMetadataType);

    void setMetadataTypeArray(CTMetadataType[] cTMetadataTypeArr);

    int sizeOfMetadataTypeArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
