package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STSlideLayoutId extends XmlUnsignedInt {
    public static final SimpleTypeFactory<STSlideLayoutId> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STSlideLayoutId> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stslidelayoutid62a9type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
