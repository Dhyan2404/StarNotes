package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STAlternateMathContentType extends XmlString {
    public static final SimpleTypeFactory<STAlternateMathContentType> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STAlternateMathContentType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stalternatemathcontenttype7344type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
