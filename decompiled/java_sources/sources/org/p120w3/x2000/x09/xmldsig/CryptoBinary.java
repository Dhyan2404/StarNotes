package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface CryptoBinary extends XmlBase64Binary {
    public static final SimpleTypeFactory<CryptoBinary> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<CryptoBinary> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "cryptobinary55fdtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
