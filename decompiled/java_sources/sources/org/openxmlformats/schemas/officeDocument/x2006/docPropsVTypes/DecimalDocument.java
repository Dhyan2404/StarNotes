package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import java.math.BigDecimal;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDecimal;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface DecimalDocument extends XmlObject {
    public static final DocumentFactory<DecimalDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DecimalDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "decimal39d2doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    BigDecimal getDecimal();

    void setDecimal(BigDecimal bigDecimal);

    XmlDecimal xgetDecimal();

    void xsetDecimal(XmlDecimal xmlDecimal);
}
