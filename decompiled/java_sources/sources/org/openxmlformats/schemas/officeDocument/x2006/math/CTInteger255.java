package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTInteger255 extends XmlObject {
    public static final DocumentFactory<CTInteger255> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTInteger255> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctinteger255c19etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getVal();

    void setVal(int i);

    STInteger255 xgetVal();

    void xsetVal(STInteger255 sTInteger255);
}
