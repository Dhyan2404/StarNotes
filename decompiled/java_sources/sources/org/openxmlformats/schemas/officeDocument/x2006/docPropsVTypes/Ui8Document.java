package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedLong;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface Ui8Document extends XmlObject {
    public static final DocumentFactory<Ui8Document> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<Ui8Document> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ui8915fdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    BigInteger getUi8();

    void setUi8(BigInteger bigInteger);

    XmlUnsignedLong xgetUi8();

    void xsetUi8(XmlUnsignedLong xmlUnsignedLong);
}
