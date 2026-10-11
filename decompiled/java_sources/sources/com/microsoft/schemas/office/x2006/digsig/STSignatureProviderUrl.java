package com.microsoft.schemas.office.x2006.digsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STSignatureProviderUrl extends XmlString {
    public static final SimpleTypeFactory<STSignatureProviderUrl> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STSignatureProviderUrl> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsignatureproviderurl801etype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
