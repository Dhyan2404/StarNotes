package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STFFStatusTextVal extends XmlString {
    public static final SimpleTypeFactory<STFFStatusTextVal> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STFFStatusTextVal> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stffstatustextvalc540type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
