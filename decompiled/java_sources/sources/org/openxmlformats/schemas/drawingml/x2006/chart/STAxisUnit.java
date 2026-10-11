package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STAxisUnit extends XmlDouble {
    public static final SimpleTypeFactory<STAxisUnit> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STAxisUnit> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "staxisunit6cc7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
