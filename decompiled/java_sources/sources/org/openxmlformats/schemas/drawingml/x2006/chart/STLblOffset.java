package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STLblOffset extends XmlAnySimpleType {
    public static final SimpleTypeFactory<STLblOffset> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STLblOffset> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stlbloffsetf82dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    Object getObjectValue();

    SchemaType instanceType();

    void setObjectValue(Object obj);
}
