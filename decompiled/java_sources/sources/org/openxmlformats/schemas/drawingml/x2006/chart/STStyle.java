package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STStyle extends XmlUnsignedByte {
    public static final SimpleTypeFactory<STStyle> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STStyle> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "ststyle6de5type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
