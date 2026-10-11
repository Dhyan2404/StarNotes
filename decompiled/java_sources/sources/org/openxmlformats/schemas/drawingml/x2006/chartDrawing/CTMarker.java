package org.openxmlformats.schemas.drawingml.x2006.chartDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTMarker extends XmlObject {
    public static final DocumentFactory<CTMarker> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMarker> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmarker2f3ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    double getX();

    double getY();

    void setX(double d);

    void setY(double d);

    STMarkerCoordinate xgetX();

    STMarkerCoordinate xgetY();

    void xsetX(STMarkerCoordinate sTMarkerCoordinate);

    void xsetY(STMarkerCoordinate sTMarkerCoordinate);
}
