package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STIndex extends XmlUnsignedInt {
    public static final SimpleTypeFactory<STIndex> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STIndex> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stindex000dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
