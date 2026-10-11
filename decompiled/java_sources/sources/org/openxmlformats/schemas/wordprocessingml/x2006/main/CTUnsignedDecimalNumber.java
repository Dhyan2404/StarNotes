package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STUnsignedDecimalNumber;

/* loaded from: classes16.dex */
public interface CTUnsignedDecimalNumber extends XmlObject {
    public static final DocumentFactory<CTUnsignedDecimalNumber> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTUnsignedDecimalNumber> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctunsigneddecimalnumber9cedtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    BigInteger getVal();

    void setVal(BigInteger bigInteger);

    STUnsignedDecimalNumber xgetVal();

    void xsetVal(STUnsignedDecimalNumber sTUnsignedDecimalNumber);
}
