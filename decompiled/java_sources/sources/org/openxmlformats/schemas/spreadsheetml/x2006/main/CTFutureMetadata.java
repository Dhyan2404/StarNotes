package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTFutureMetadata extends XmlObject {
    public static final DocumentFactory<CTFutureMetadata> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFutureMetadata> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfuturemetadata3e9btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTFutureMetadataBlock addNewBk();

    CTExtensionList addNewExtLst();

    CTFutureMetadataBlock getBkArray(int i);

    CTFutureMetadataBlock[] getBkArray();

    List<CTFutureMetadataBlock> getBkList();

    long getCount();

    CTExtensionList getExtLst();

    String getName();

    CTFutureMetadataBlock insertNewBk(int i);

    boolean isSetCount();

    boolean isSetExtLst();

    void removeBk(int i);

    void setBkArray(int i, CTFutureMetadataBlock cTFutureMetadataBlock);

    void setBkArray(CTFutureMetadataBlock[] cTFutureMetadataBlockArr);

    void setCount(long j);

    void setExtLst(CTExtensionList cTExtensionList);

    void setName(String str);

    int sizeOfBkArray();

    void unsetCount();

    void unsetExtLst();

    XmlUnsignedInt xgetCount();

    STXstring xgetName();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);

    void xsetName(STXstring sTXstring);
}
