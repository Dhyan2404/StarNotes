package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STFixedAngle extends STAngle {
    public static final SimpleTypeFactory<STFixedAngle> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STFixedAngle> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stfixedangle53eatype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
