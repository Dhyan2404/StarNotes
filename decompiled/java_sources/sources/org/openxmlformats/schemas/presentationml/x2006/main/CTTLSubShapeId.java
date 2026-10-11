package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STShapeID;

/* loaded from: classes14.dex */
public interface CTTLSubShapeId extends XmlObject {
    public static final DocumentFactory<CTTLSubShapeId> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLSubShapeId> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlsubshapeidaaf1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getSpid();

    void setSpid(String str);

    STShapeID xgetSpid();

    void xsetSpid(STShapeID sTShapeID);
}
