package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STPictureStackUnit extends XmlDouble {
    public static final SimpleTypeFactory<STPictureStackUnit> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STPictureStackUnit> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpicturestackunit6b9etype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
