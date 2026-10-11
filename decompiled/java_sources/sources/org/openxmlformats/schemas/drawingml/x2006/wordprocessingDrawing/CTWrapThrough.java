package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.STWrapText;

/* loaded from: classes14.dex */
public interface CTWrapThrough extends XmlObject {
    public static final DocumentFactory<CTWrapThrough> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWrapThrough> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwrapthrough8b4etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTWrapPath addNewWrapPolygon();

    long getDistL();

    long getDistR();

    CTWrapPath getWrapPolygon();

    STWrapText.Enum getWrapText();

    boolean isSetDistL();

    boolean isSetDistR();

    void setDistL(long j);

    void setDistR(long j);

    void setWrapPolygon(CTWrapPath cTWrapPath);

    void setWrapText(STWrapText.Enum r1);

    void unsetDistL();

    void unsetDistR();

    STWrapDistance xgetDistL();

    STWrapDistance xgetDistR();

    STWrapText xgetWrapText();

    void xsetDistL(STWrapDistance sTWrapDistance);

    void xsetDistR(STWrapDistance sTWrapDistance);

    void xsetWrapText(STWrapText sTWrapText);
}
