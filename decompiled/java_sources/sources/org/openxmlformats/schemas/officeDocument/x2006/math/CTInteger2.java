package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTInteger2 extends XmlObject {
    public static final DocumentFactory<CTInteger2> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTInteger2> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctinteger231fetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getVal();

    void setVal(int i);

    STInteger2 xgetVal();

    void xsetVal(STInteger2 sTInteger2);
}
