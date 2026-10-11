package com.microsoft.schemas.office.x2006.digsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STSignatureText extends XmlString {
    public static final SimpleTypeFactory<STSignatureText> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STSignatureText> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsignaturetext9273type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
