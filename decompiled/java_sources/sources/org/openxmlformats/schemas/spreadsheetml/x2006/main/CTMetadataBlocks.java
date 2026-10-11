package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMetadataBlocks extends XmlObject {
    public static final DocumentFactory<CTMetadataBlocks> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMetadataBlocks> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmetadatablocks205etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMetadataBlock addNewBk();

    CTMetadataBlock getBkArray(int i);

    CTMetadataBlock[] getBkArray();

    List<CTMetadataBlock> getBkList();

    long getCount();

    CTMetadataBlock insertNewBk(int i);

    boolean isSetCount();

    void removeBk(int i);

    void setBkArray(int i, CTMetadataBlock cTMetadataBlock);

    void setBkArray(CTMetadataBlock[] cTMetadataBlockArr);

    void setCount(long j);

    int sizeOfBkArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
