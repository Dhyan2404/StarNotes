package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STUnSignedInteger extends XmlUnsignedInt {
    public static final SimpleTypeFactory<STUnSignedInteger> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STUnSignedInteger> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stunsignedinteger2163type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
