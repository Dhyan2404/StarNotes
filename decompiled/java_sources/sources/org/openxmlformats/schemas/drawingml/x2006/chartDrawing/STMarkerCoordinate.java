package org.openxmlformats.schemas.drawingml.x2006.chartDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STMarkerCoordinate extends XmlDouble {
    public static final SimpleTypeFactory<STMarkerCoordinate> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STMarkerCoordinate> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stmarkercoordinate3c24type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
