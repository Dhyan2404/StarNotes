package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STCalloutDrop extends XmlString {
    public static final SimpleTypeFactory<STCalloutDrop> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STCalloutDrop> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stcalloutdrop84a8type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
