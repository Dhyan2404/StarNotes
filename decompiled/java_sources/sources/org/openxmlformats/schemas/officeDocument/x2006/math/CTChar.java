package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTChar extends XmlObject {
    public static final DocumentFactory<CTChar> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTChar> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctchar0d9ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getVal();

    void setVal(String str);

    STChar xgetVal();

    void xsetVal(STChar sTChar);
}
