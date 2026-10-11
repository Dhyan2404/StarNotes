package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STHoleSize extends XmlAnySimpleType {
    public static final SimpleTypeFactory<STHoleSize> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STHoleSize> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stholesize912btype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    Object getObjectValue();

    SchemaType instanceType();

    void setObjectValue(Object obj);
}
