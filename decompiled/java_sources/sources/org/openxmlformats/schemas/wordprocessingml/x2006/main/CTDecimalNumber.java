package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDecimalNumber extends XmlObject {
    public static final DocumentFactory<CTDecimalNumber> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDecimalNumber> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdecimalnumbera518type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    BigInteger getVal();

    void setVal(BigInteger bigInteger);

    STDecimalNumber xgetVal();

    void xsetVal(STDecimalNumber sTDecimalNumber);
}
