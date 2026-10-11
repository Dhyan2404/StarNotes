package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STDiagramLayout extends XmlInteger {
    public static final SimpleTypeFactory<STDiagramLayout> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STDiagramLayout> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdiagramlayout8286type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
