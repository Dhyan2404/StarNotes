package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMetadataBlock extends XmlObject {
    public static final DocumentFactory<CTMetadataBlock> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMetadataBlock> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmetadatablocka73dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMetadataRecord addNewRc();

    CTMetadataRecord getRcArray(int i);

    CTMetadataRecord[] getRcArray();

    List<CTMetadataRecord> getRcList();

    CTMetadataRecord insertNewRc(int i);

    void removeRc(int i);

    void setRcArray(int i, CTMetadataRecord cTMetadataRecord);

    void setRcArray(CTMetadataRecord[] cTMetadataRecordArr);

    int sizeOfRcArray();
}
