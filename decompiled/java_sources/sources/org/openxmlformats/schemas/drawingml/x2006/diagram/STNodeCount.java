package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STNodeCount extends XmlInt {
    public static final SimpleTypeFactory<STNodeCount> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STNodeCount> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stnodecount4b9etype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
