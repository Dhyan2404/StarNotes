package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLTimeNodeID extends XmlUnsignedInt {
    public static final SimpleTypeFactory<STTLTimeNodeID> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STTLTimeNodeID> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttltimenodeid4293type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
