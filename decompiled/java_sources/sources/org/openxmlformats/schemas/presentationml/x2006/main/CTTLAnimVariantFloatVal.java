package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLAnimVariantFloatVal extends XmlObject {
    public static final DocumentFactory<CTTLAnimVariantFloatVal> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLAnimVariantFloatVal> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlanimvariantfloatval9e6etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    float getVal();

    void setVal(float f);

    XmlFloat xgetVal();

    void xsetVal(XmlFloat xmlFloat);
}
