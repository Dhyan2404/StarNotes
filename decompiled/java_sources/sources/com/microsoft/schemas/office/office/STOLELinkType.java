package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STOLELinkType extends XmlString {
    public static final SimpleTypeFactory<STOLELinkType> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STOLELinkType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stolelinktypef505type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
