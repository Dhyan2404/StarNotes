package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STWebEncoding extends XmlString {
    public static final SimpleTypeFactory<STWebEncoding> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STWebEncoding> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stwebencodinga738type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
