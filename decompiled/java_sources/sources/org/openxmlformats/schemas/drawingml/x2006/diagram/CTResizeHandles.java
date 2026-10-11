package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STResizeHandlesStr;

/* loaded from: classes14.dex */
public interface CTResizeHandles extends XmlObject {
    public static final DocumentFactory<CTResizeHandles> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTResizeHandles> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctresizehandles3c84type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STResizeHandlesStr.Enum getVal();

    boolean isSetVal();

    void setVal(STResizeHandlesStr.Enum r1);

    void unsetVal();

    STResizeHandlesStr xgetVal();

    void xsetVal(STResizeHandlesStr sTResizeHandlesStr);
}
