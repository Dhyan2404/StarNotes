package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlHexBinary;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STUnsignedIntHex extends XmlHexBinary {
    public static final SimpleTypeFactory<STUnsignedIntHex> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STUnsignedIntHex> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stunsignedinthex27datype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
