package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STUnsignedInts extends XmlAnySimpleType {
    public static final SimpleTypeFactory<STUnsignedInts> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STUnsignedInts> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stunsignedints7248type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    List getListValue();

    void setListValue(List<?> list);

    List xgetListValue();
}
