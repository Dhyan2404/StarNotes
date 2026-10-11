package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STSkip extends XmlUnsignedInt {
    public static final SimpleTypeFactory<STSkip> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STSkip> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stskip084dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
