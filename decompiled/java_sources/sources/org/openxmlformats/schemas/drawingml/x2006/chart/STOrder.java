package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STOrder extends XmlUnsignedByte {
    public static final SimpleTypeFactory<STOrder> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STOrder> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "storderb7a8type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
