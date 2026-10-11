package com.microsoft.schemas.office.x2006.digsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STPositiveInteger extends XmlInt {
    public static final SimpleTypeFactory<STPositiveInteger> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STPositiveInteger> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpositiveintegerd2b3type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
