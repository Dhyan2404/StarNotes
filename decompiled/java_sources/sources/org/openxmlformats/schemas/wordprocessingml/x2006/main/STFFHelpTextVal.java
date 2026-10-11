package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STFFHelpTextVal extends XmlString {
    public static final SimpleTypeFactory<STFFHelpTextVal> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STFFHelpTextVal> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stffhelptextval264ftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
