package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLTime extends XmlAnySimpleType {
    public static final SimpleTypeFactory<STTLTime> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STTLTime> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttltime63f0type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    Object getObjectValue();

    SchemaType instanceType();

    void setObjectValue(Object obj);
}
