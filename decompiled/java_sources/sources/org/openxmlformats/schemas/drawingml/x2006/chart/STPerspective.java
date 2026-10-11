package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STPerspective extends XmlUnsignedByte {
    public static final SimpleTypeFactory<STPerspective> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STPerspective> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stperspectivef53atype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
