package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLAnimVariantIntegerVal extends XmlObject {
    public static final DocumentFactory<CTTLAnimVariantIntegerVal> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLAnimVariantIntegerVal> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlanimvariantintegerval6f90type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getVal();

    void setVal(int i);

    XmlInt xgetVal();

    void xsetVal(XmlInt xmlInt);
}
