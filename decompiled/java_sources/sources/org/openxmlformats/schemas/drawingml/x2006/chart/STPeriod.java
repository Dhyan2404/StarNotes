package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STPeriod extends XmlUnsignedInt {
    public static final SimpleTypeFactory<STPeriod> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STPeriod> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stperiod970btype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
