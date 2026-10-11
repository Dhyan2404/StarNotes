package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STContentType extends XmlString {
    public static final SimpleTypeFactory<STContentType> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STContentType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stcontenttype78bctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
