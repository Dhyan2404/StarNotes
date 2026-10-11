package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTFutureMetadataBlock extends XmlObject {
    public static final DocumentFactory<CTFutureMetadataBlock> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFutureMetadataBlock> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfuturemetadatablockbfbatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTExtensionList getExtLst();

    boolean isSetExtLst();

    void setExtLst(CTExtensionList cTExtensionList);

    void unsetExtLst();
}
