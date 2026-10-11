package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDocType extends XmlObject {
    public static final DocumentFactory<CTDocType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdoctype2940type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getVal();

    void setVal(String str);

    STDocType xgetVal();

    void xsetVal(STDocType sTDocType);
}
