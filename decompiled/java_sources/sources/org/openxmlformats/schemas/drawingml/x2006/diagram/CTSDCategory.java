package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSDCategory extends XmlObject {
    public static final DocumentFactory<CTSDCategory> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSDCategory> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsdcategorydc82type");
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
