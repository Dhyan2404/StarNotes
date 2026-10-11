package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STChar extends XmlString {
    public static final SimpleTypeFactory<STChar> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STChar> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stchar8f8ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
