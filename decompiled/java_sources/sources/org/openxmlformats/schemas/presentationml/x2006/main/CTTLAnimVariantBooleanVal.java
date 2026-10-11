package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLAnimVariantBooleanVal extends XmlObject {
    public static final DocumentFactory<CTTLAnimVariantBooleanVal> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLAnimVariantBooleanVal> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlanimvariantbooleanvalbcfatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getVal();

    void setVal(boolean z);

    XmlBoolean xgetVal();

    void xsetVal(XmlBoolean xmlBoolean);
}
