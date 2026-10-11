package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTCTCategory extends XmlObject {
    public static final DocumentFactory<CTCTCategory> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCTCategory> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctctcategorya262type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getPri();

    String getType();

    void setPri(long j);

    void setType(String str);

    XmlUnsignedInt xgetPri();

    XmlAnyURI xgetType();

    void xsetPri(XmlUnsignedInt xmlUnsignedInt);

    void xsetType(XmlAnyURI xmlAnyURI);
}
