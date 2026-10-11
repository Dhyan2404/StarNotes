package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STFunctionArgument extends XmlAnySimpleType {
    public static final SimpleTypeFactory<STFunctionArgument> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STFunctionArgument> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stfunctionargument408ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    Object getObjectValue();

    SchemaType instanceType();

    void setObjectValue(Object obj);
}
