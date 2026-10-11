package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface TblDocument extends XmlObject {
    public static final DocumentFactory<TblDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TblDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "tbleb1bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTable addNewTbl();

    CTTable getTbl();

    void setTbl(CTTable cTTable);
}
