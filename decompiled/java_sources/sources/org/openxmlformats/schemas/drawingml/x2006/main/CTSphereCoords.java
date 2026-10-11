package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSphereCoords extends XmlObject {
    public static final DocumentFactory<CTSphereCoords> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSphereCoords> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctspherecoords8226type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getLat();

    int getLon();

    int getRev();

    void setLat(int i);

    void setLon(int i);

    void setRev(int i);

    STPositiveFixedAngle xgetLat();

    STPositiveFixedAngle xgetLon();

    STPositiveFixedAngle xgetRev();

    void xsetLat(STPositiveFixedAngle sTPositiveFixedAngle);

    void xsetLon(STPositiveFixedAngle sTPositiveFixedAngle);

    void xsetRev(STPositiveFixedAngle sTPositiveFixedAngle);
}
