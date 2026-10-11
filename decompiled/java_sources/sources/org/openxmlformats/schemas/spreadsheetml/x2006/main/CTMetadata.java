package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMetadata extends XmlObject {
    public static final DocumentFactory<CTMetadata> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMetadata> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmetadata7138type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMetadataBlocks addNewCellMetadata();

    CTExtensionList addNewExtLst();

    CTFutureMetadata addNewFutureMetadata();

    CTMdxMetadata addNewMdxMetadata();

    CTMetadataStrings addNewMetadataStrings();

    CTMetadataTypes addNewMetadataTypes();

    CTMetadataBlocks addNewValueMetadata();

    CTMetadataBlocks getCellMetadata();

    CTExtensionList getExtLst();

    CTFutureMetadata getFutureMetadataArray(int i);

    CTFutureMetadata[] getFutureMetadataArray();

    List<CTFutureMetadata> getFutureMetadataList();

    CTMdxMetadata getMdxMetadata();

    CTMetadataStrings getMetadataStrings();

    CTMetadataTypes getMetadataTypes();

    CTMetadataBlocks getValueMetadata();

    CTFutureMetadata insertNewFutureMetadata(int i);

    boolean isSetCellMetadata();

    boolean isSetExtLst();

    boolean isSetMdxMetadata();

    boolean isSetMetadataStrings();

    boolean isSetMetadataTypes();

    boolean isSetValueMetadata();

    void removeFutureMetadata(int i);

    void setCellMetadata(CTMetadataBlocks cTMetadataBlocks);

    void setExtLst(CTExtensionList cTExtensionList);

    void setFutureMetadataArray(int i, CTFutureMetadata cTFutureMetadata);

    void setFutureMetadataArray(CTFutureMetadata[] cTFutureMetadataArr);

    void setMdxMetadata(CTMdxMetadata cTMdxMetadata);

    void setMetadataStrings(CTMetadataStrings cTMetadataStrings);

    void setMetadataTypes(CTMetadataTypes cTMetadataTypes);

    void setValueMetadata(CTMetadataBlocks cTMetadataBlocks);

    int sizeOfFutureMetadataArray();

    void unsetCellMetadata();

    void unsetExtLst();

    void unsetMdxMetadata();

    void unsetMetadataStrings();

    void unsetMetadataTypes();

    void unsetValueMetadata();
}
