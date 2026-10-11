package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLAnimVariantStringVal extends XmlObject {
    public static final DocumentFactory<CTTLAnimVariantStringVal> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLAnimVariantStringVal> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlanimvariantstringvaleef1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getVal();

    void setVal(String str);

    XmlString xgetVal();

    void xsetVal(XmlString xmlString);
}
