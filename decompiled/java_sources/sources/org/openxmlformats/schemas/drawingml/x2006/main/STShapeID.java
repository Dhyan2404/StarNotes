package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STShapeID extends XmlToken {
    public static final SimpleTypeFactory<STShapeID> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STShapeID> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stshapeidc49dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
