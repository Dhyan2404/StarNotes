package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STOverlap extends XmlAnySimpleType {
    public static final SimpleTypeFactory<STOverlap> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STOverlap> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stoverlap7d4ftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    Object getObjectValue();

    SchemaType instanceType();

    void setObjectValue(Object obj);
}
