package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface HMACOutputLengthType extends XmlInteger {
    public static final SimpleTypeFactory<HMACOutputLengthType> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<HMACOutputLengthType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "hmacoutputlengthtypec057type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
