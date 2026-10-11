package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STMarkerSize extends XmlUnsignedByte {
    public static final SimpleTypeFactory<STMarkerSize> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STMarkerSize> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stmarkersize9eb1type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
